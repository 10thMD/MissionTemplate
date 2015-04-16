if (isDedicated) exitWith {};
waitUntil {!(IsNull player)};
profileNameSpace setVariable ["CURRENTPLAYERLOAD", "AR"];
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
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
player addBackpack "TFA_assault_Tan";
for "_i" from 1 to 5 do {player addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
player addHeadgear "AV_ACH4_OCP";

player addWeapon "rhs_weap_m249_pip";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player linkItem "TFA_NVGoggles2";