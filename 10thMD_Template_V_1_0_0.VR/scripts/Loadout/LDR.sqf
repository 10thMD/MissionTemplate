if (isDedicated) exitWith {};
waitUntil {!(IsNull player)};
profileNameSpace setVariable ["CURRENTPLAYERLOAD", "LDR"];
saveProfileNameSpace;


removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;

player forceAddUniform "AV_CombatUniform1_OCP";
for "_i" from 1 to 10 do {player addItemToUniform "cse_bandage_basic";};
for "_i" from 1 to 10 do {player addItemToUniform "cse_packing_bandage";};
for "_i" from 1 to 10 do {player addItemToUniform "cse_bandageElastic";};
for "_i" from 1 to 10 do {player addItemToUniform "cse_quikclot";};
for "_i" from 1 to 3 do {player addItemToUniform "AV_15Rnd_9x19_Mag";};
player addItemToUniform "cse_earplugs_electronic";
player addVest "AV_PlateCarrier1_khk";
for "_i" from 1 to 10 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 12 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
player addBackpack "TFA_assault_Tan";
for "_i" from 1 to 5 do {player addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 5 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 5 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToBackpack "Chemlight_green";};
for "_i" from 1 to 10 do {player addItemToBackpack "cse_Keycuffs";};
player addItemToBackpack "B_IR_Grenade";
player addHeadgear "AV_ACH4_OCP";

player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG2";
player addWeapon "av_m9";
player addWeapon "Rangefinder";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_3";
player linkItem "ItemGPS";
player linkItem "TFA_NVGoggles2";

