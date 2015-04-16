if (isDedicated) exitWith {};
waitUntil {!(IsNull player)};
profileNameSpace setVariable ["CURRENTPLAYERLOAD", "FTL"];
saveProfileNameSpace;

// ---------- YOUR LOADOUT STUFF

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
player addItemToUniform "cse_earplugs_electronic";
player addVest "AV_PlateCarrier1_khk";
for "_i" from 1 to 10 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
for "_i" from 1 to 12 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
player addBackpack "TFA_assault_Tan";
for "_i" from 1 to 5 do {player addItemToBackpack "SmokeShellRed";};
for "_i" from 1 to 5 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 5 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToBackpack "Chemlight_green";};
player addItemToBackpack "B_IR_Grenade";
for "_i" from 1 to 15 do {player addItemToBackpack "rhs_mag_M441_HE";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_m713_Red";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_m714_White";};
for "_i" from 1 to 5 do {player addItemToBackpack "rhs_mag_m715_Green";};
for "_i" from 1 to 10 do {player addItemToBackpack "cse_Keycuffs";};
player addHeadgear "AV_ACH4_OCP";

player addWeapon "rhs_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG2";
player addWeapon "Binocular";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_3";
player linkItem "ItemGPS";
player linkItem "TFA_NVGoggles2";