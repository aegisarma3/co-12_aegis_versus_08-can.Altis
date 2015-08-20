/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the 
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true}, 
		["Mission",
			"<marker name='fob_cuprum'>Perditus</marker> and <marker name='derelictus_start'>Derelictus</marker> will deliver the <marker name='fob_cuprum'>backpack</marker> to the <marker name='obj1'>drop off point</marker> and reach the <marker name='obj2'>safe house</marker>."],
			
		["Situation",
			"February 17th 2025: 30 hours ago PMC Versus local high command (callsign 'Corona') picked up a transmission on a former Nekron Chelia radio channel. The message revealed the location of a hidden backpack containing decrypted military intel and PMC Versus surgical team (callsign 'Perditus') was tasked to pick it up. Shortly after Perditus had returned to FOB Cuprum with the backpack, PMC Versus reconnaissance satellite Hannibal-6 picked up major AAF movement towards FOB Cuprum. According to the movement patterns and formations the AAF forces are searching for something, most likely the stolen intel.<br/><br/>Corona wants <marker name='fob_cuprum'>Perditus</marker> to deliver the urban camo carryall -backpack which is currently at FOB Cuprum to the <marker name='obj1'>drop off point</marker>. Corona has a civilian SUV at the site and Perditus is to hide the backpack in the car's trunk. This way Corona can retrieve the intel even though the operators on site are KIA.<br/><br/>After that, Versus operators are to make for the <marker name='obj2'>safe house</marker> which contains some surplus weapons and ammunition and make their stand against the AAF forces there if need be.<br/><br/>Corona has also dispatched a secondary Versus team (callsign 'Derelictus') to support Perditus. Even though the secondary team is still far away, the operators have the heavily armed Versus offroads at their disposal. Corona reminds Versus operators to complete the objectives with haste: darkness is falling fast and the AAF forces have NV and thermal capabilities thus putting Versus operators at disadvantage."],

		["Enemy",
			"Hannibal-6 has provided several confirmed AAF foot patrols and alpha victors in the vicity of FOB Cuprum. The most dangerous threat, especially towards the Versus offroads are the two AAF helicopters approaching from the Gulf. Corona recommends neutralizing the helicopters to ensure that the Versus operators avoid being killed or captured by the AAF.<br/><br/>Perditus has not been able to resupply and the team is not armed to effectively engage the AAF forces.<br/><br/>Corona advices Perditus to consider avoiding contact with the numerous AAF search patrols in the area."],

		["Callsigns",
			"Corona: local high command operating at FOB Aurum.<br/>Perditus: surgical element, based at FOB Cuprum.<br/>Derelictus: supporting element, based at FOB Ferrum."],
            
        ["Additional",
			"PMC Versus uses FHQ Task Tracker to provide operators with briefings and tasks."]
    
] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "Deliver the backpack currently at <marker name='fob_cuprum'>FOB Cuprum</marker> to the <marker name='obj1'>drop off point</marker>. Hide the backpack in the trunk of the SUV which is waiting at the drop off point.",				       // Task text in briefing
         "Deliver the backpack.",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Reach the <marker name='obj2'>safe house</marker> and neutralize any remaining pursuers.",				       // Task text in briefing
         "Reach the safe house.",							// Task title in briefing
         "commander"											// Waypoint text

        ],
        ["task3",										// Task name
         "Destroy the two AAF helicopters searching for the intel.",				       // Task text in briefing
         "Destroy the helicopters (optional).",							// Task title in briefing
         "courier"										// Waypoint text

        ]

] call FHQ_TT_addTasks;