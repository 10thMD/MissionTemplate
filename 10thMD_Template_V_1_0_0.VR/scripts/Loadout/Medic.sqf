if (isDedicated) exitWith {};
waitUntil {!(IsNull player)};
profileNameSpace setVariable ["CURRENTPLAYERLOAD", "MEDIC"];
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
for "_i" from 1 to 5 do {player addItemToUniform "FirstAidKit";};
player addVest "AV_PlateCarrier1_khk";
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToVest "cse_earplugs_electronic";
player addBackpack "TFA_assault_Tan";
for "_i" from 1 to 50 do {player addItemToBackpack "cse_bandage_basic";};
for "_i" from 1 to 50 do {player addItemToBackpack "cse_packing_bandage";};
for "_i" from 1 to 50 do {player addItemToBackpack "cse_bandageElastic";};
for "_i" from 1 to 50 do {player addItemToBackpack "cse_quikclot";};
for "_i" from 1 to 30 do {player addItemToBackpack "cse_morphine";};
for "_i" from 1 to 40 do {player addItemToBackpack "cse_epinephrine";};
for "_i" from 1 to 10 do {player addItemToBackpack "cse_atropine";};
for "_i" from 1 to 10 do {player addItemToBackpack "cse_blood_iv_1000";};
for "_i" from 1 to 20 do {player addItemToBackpack "cse_saline_iv_1000";};
for "_i" from 1 to 10 do {player addItemToBackpack "cse_plasma_iv_1000";};
for "_i" from 1 to 5 do {player addItemToBackpack "cse_tourniquet";};
for "_i" from 1 to 5 do {player addItemToBackpack "cse_personal_aid_kit";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
player addItemToBackpack "cse_surgical_kit";
player addHeadgear "AV_ACH4_OCP";

player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152_65";
player linkItem "ItemGPS";
player linkItem "TFA_NVGoggles2";