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
_unit addWeapon "LMG_Mk200_plain_F";
_unit addPrimaryWeaponItem "muzzle_mzls_H";
_unit addPrimaryWeaponItem "acc_flashlight";
_unit addPrimaryWeaponItem "ef_optic_mbs_sand";
_unit addPrimaryWeaponItem "200Rnd_65x39_cased_Box";
_unit addPrimaryWeaponItem "bipod_01_F_snd";

comment "Add containers";
_unit forceAddUniform "EF_U_B_MarineCombatUniform_Des_3";
_unit addVest "EF_V_AAV_Support_Coy";

comment "Add items to containers";
_unit addItemToVest "FirstAidKit";
for "_i" from 1 to 2 do {
	_unit addItemToVest "16Rnd_9x21_Mag";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "200Rnd_65x39_cased_Box";
};
_unit addHeadgear "EF_H_MCH_BasicNet_Des";
_unit addGoggles "Aegis_G_Condor_EyePro_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "NVGoggles";