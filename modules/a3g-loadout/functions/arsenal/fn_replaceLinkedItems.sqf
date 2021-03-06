private ["_configPath", "_loadoutTarget", "_class", "_parents"];

// Get config entry
_configPath = _this select 0;
_loadoutTarget = _this select 1;

removeAllAssignedItems _loadoutTarget;
removeHeadgear _loadoutTarget;

{
  // Workaround since linkedItems contains other items than the vest. isKindOf makes sure only the vest is applied.
  // Items other than a vest will still remove the vest item from the player as per addVest specification.
  _class = [_x] call BIS_fnc_classWeapon;
  _parents = [_class, true] call BIS_fnc_returnParents;
  if("Vest_Camo_Base" in _parents || "Vest_NoCamo_Base" in _parents) then {
    _loadoutTarget addVest _x;
  } else {
    _loadoutTarget linkItem _x;
  };
} forEach getArray (_configPath);