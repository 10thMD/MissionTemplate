/*
10thMD S-2 Mission Template Version 1.0.0
init.sqf dated 08APR2015
*/
enableSaving [false, false];

//Any execVM references the initialization of a script and should be left closest to the top as possible. 
//If any need to be added, add them directly below the previous one. (Generally in level of importance)
//Be sure to include the entire filepath, such as "scripts\ScriptFolder\filename.sqf" not just "ScriptFolder\filename.sqf"
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
execVM "R3F_LOG\init.sqf";
[] execVM "scripts\misc\zlt_fieldrepair.sqf";
[] execVM "scripts\misc\zlt_fastrope.sqf";
[] execVM "scripts\misc\grenadeStop.sqf";

//This is the initialization for the Main Gear Box (object box1), leave this unless it is explicitly updated.
box1 addAction ['<t color="#FFFF00">' + "Rifleman" + '</t>', "scripts\Loadout\Rifleman.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Anti-Tank Rifleman" + '</t>', "scripts\Loadout\ATR.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Medic" + '</t>', "scripts\Loadout\Medic.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Automatic Rifleman" + '</t>', "scripts\Loadout\AR.sqf"];
box1 addAction ['<t color="#FFFF00">' + "MG Gunner" + '</t>', "scripts\Loadout\MG.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Ammo Bearer" + '</t>', "scripts\Loadout\Ammo.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Anti Tank Specialist" + '</t>', "scripts\Loadout\AT.sqf"];
box1 addAction ['<t color="#FFFF00">' + "RTO" + '</t>', "scripts\Loadout\RTO.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Team Leader" + '</t>', "scripts\Loadout\FTL.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Squad Leader" + '</t>', "scripts\Loadout\SL.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Leadership" + '</t>', "scripts\Loadout\LDR.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Pilot" + '</t>', "scripts\Loadout\Pilot.sqf"];
box1 addAction ['<t color="#FFFF00">' + "Crewman" + '</t>', "scripts\Loadout\Crewman.sqf"];

//Next is the initialization for removing fatigue, saving uniforms, and parade rest. These should not be updated.
if ( isDedicated ) exitWith {}; 
waitUntil {!( isNull player )}; 
_loadout = profileNameSpace getVariable ["CURRENTPLAYERLOAD",""];
[_loadOut] execVM "scripts\loadout\getloadout.sqf";
player enableFatigue false; 
player addEventHandler ["respawn", {(_this select 0) enableFatigue false;}];
player addEventhandler ["Respawn", {
	_loadout = profileNameSpace getVariable ["CURRENTPLAYERLOAD",""];
	[_loadOut] execVM "scripts\loadout\getloadout.sqf";
}];

MY_KEYDOWN_FNC = { 
    private [ "_keys" ]; 
    _keys = actionKeys "User15"; 
    if ( count _keys > 0 ) then { 
        if (_this in _keys) then {  
            nul = [] execVM "scripts\misc\keytest.sqf"; 
        }; 
    } else { 
        if ( _this == 15 ) then { 
            hintSilent "To go into Parade Rest, define User Key 15 in ESC->Configure->Controls-> Show: Custom Controls"; 		
        }; 
    }; 
};  
toggled = 0; 

waituntil {!(isNull (findDisplay 46))}; 
(findDisplay 46) displayAddEventHandler ["KeyDown","if (vehicle player == player) then {(_this select 1) call MY_KEYDOWN_FNC;false;};"];  

//Anything after this point is fair game, just make a note on the commit. 