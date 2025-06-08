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
_unit addWeapon "Aegis_arifle_SR25_snd_F";
_unit addPrimaryWeaponItem "Aegis_acc_pointer_DM_Sand";
_unit addPrimaryWeaponItem "optic_DMS";
_unit addPrimaryWeaponItem "Aegis_20Rnd_762x51_Sand_SMAG";

comment "Add containers";
_unit forceAddUniform "EF_U_B_MarineCombatUniform_Des_3";
_unit addVest "EF_V_AAV_Scout_Coy";

comment "Add items to containers";
_unit addItemToVest "FirstAidKit";
for "_i" from 1 to 2 do {
	_unit addItemToVest "16Rnd_9x21_Mag";
};
for "_i" from 1 to 8 do {
	_unit addItemToVest "Aegis_20Rnd_762x51_Sand_SMAG";
};
for "_i" from 1 to 2 do {
	_unit addItemToVest "Chemlight_green";
};
_unit addItemToVest "SmokeShell";
for "_i" from 1 to 2 do {
	_unit addItemToVest "HandGrenade";
};
_unit addHeadgear "EF_H_MCH_BasicNet_Des";
_unit addGoggles "Aegis_G_Condor_EyePro_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "NVGoggles";