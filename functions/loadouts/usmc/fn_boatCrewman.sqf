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
_unit addPrimaryWeaponItem "ef_optic_Holosight_coy";
_unit addPrimaryWeaponItem "30Rnd_556x45_Stanag_Sand";
_unit addWeapon "ef_hgun_P07_coy";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add containers";
_unit forceAddUniform "EF_U_B_MarineCombatUniform_Des_3";
_unit addVest "EF_V_AAV_Sailor_Coy";

comment "Add items to containers";
_unit addItemToUniform "Chemlight_green";
_unit addItemToVest "FirstAidKit";
for "_i" from 1 to 2 do {
	_unit addItemToVest "16Rnd_9x21_Mag";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "HandGrenade";
};
_unit addItemToVest "SmokeShell";
_unit addItemToVest "SmokeShellGreen";
_unit addItemToVest "Chemlight_green";
for "_i" from 1 to 4 do {
	_unit addItemToVest "30Rnd_556x45_Stanag_Sand";
};
_unit addHeadgear "EF_H_HelmetCrew_Coy";
_unit addGoggles "G_Shades_Red";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "EF_LPNVG_Tan";