params ["_unit"];
comment "Exported from Arsenal by britz";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local _unit) exitWith {};

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add weapons";
_unit addWeapon "Aegis_arifle_M4A1_short_sand_F";
_unit addPrimaryWeaponItem "EF_acc_pointer_IR_coy";
_unit addPrimaryWeaponItem "ef_optic_mbs_sand";
_unit addPrimaryWeaponItem "30Rnd_556x45_AP_Stanag_Tan_RF";
_unit addWeapon "launch_MRAWS_sand_rail_F";
_unit addSecondaryWeaponItem "MRAWS_HEAT_F";

comment "Add containers";
_unit forceAddUniform "EF_U_B_MarineCombatUniform_Des_3";
_unit addVest "EF_V_AAV_Rifleman_Coy";
_unit addBackpack "B_Kitbag_cbr";

comment "Add items to containers";
_unit addItemToVest "FirstAidKit";
for "_i" from 1 to 2 do {
	_unit addItemToVest "16Rnd_9x21_Mag";
};
_unit addItemToVest "Chemlight_green";
for "_i" from 1 to 2 do {
	_unit addItemToVest "HandGrenade";
};
_unit addItemToVest "SmokeShell";
for "_i" from 1 to 8 do {
	_unit addItemToVest "30Rnd_556x45_AP_Stanag_Tan_RF";
};
_unit addItemToVest "Aegis_HandFlare_Green";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToBackpack "MRAWS_HE_F";
_unit addItemToBackpack "MRAWS_HEAT_F";
_unit addItemToBackpack "MRAWS_HEAT55_F";
_unit addHeadgear "EF_H_MCH_BasicNet_Des";
_unit addGoggles "Aegis_G_Condor_EyePro_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "NVGoggles";

[_unit, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
_unit setRank "PRIVATE";
[_unit] call EAS_fnc_regular;