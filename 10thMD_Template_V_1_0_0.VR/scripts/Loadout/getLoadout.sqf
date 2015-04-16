if (isDedicated) exitWith {};
waitUntil {!(IsNull player)};

_load = [_this, 0, "RIFLEMAN", [""]] call BIS_fnc_param;

switch _load do {
	case "SL":{_nul=execVM "scripts\Loadout\SL.sqf";};
	case "FTL":{_nul=execVM "scripts\Loadout\FTL.sqf";};
	case "RIFLEMAN":{_nul=execVM "scripts\Loadout\rifleman.sqf";};
	case "LDR":{_nul=execVM "scripts\Loadout\LDR.sqf";};
	case "AR":{_nul=execVM "scripts\Loadout\AR.sqf";};
	case "RTO":{_nul=execVM "scripts\Loadout\RTO.sqf";};	
	case "MG":{_nul=execVM "scripts\Loadout\MG.sqf";};
	case "AMMO":{_nul=execVM "scripts\Loadout\ammo.sqf";};
	case "MEDIC":{_nul=execVM "scripts\Loadout\medic.sqf";};
	case "AT":{_nul=execVM "scripts\Loadout\AT.sqf";};
	case "ATR":{_nul=execVM "scripts\Loadout\ATR.sqf";};
	case "CREWMAN":{_nul=execVM "scripts\Loadout\crewman.sqf";};
	case "PILOT":{_nul=execVM "scripts\Loadout\pilot.sqf";};
	case "":{};
	default {_nul=execVM "scripts\Loadout\rifleman.sqf";};
};

