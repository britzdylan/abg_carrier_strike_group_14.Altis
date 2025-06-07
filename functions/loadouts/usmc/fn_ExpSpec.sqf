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
_unit addPrimaryWeaponItem "ef_optic_Holosight_coy";
_unit addPrimaryWeaponItem "30Rnd_556x45_AP_Stanag_Tan_RF";

comment "Add containers";
_unit forceAddUniform "EF_U_B_MarineCombatUniform_Des_1";
_unit addVest "EF_V_AAV_Support_Coy";
_unit addBackpack "EF_B_Kitbag_coy_Exp";

comment "Add items to containers";
for "_i" from 1 to 2 do {
	_unit addItemToVest "16Rnd_9x21_Mag";
};
for "_i" from 1 to 3 do {
	_unit addItemToVest "APERSMine_Range_Mag";
};
_unit addItemToVest "SmokeShell";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 8 do {
	_unit addItemToVest "30Rnd_556x45_AP_Stanag_Tan_RF";
};
_unit addItemToBackpack "ToolKit";
_unit addItemToBackpack "MineDetector";
for "_i" from 1 to 3 do {
	_unit addItemToBackpack "APERSBoundingMine_Range_Mag";
};
for "_i" from 1 to 2 do {
	_unit addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";
};
for "_i" from 1 to 2 do {
	_unit addItemToBackpack "SLAMDirectionalMine_Wire_Mag";
};
_unit addItemToBackpack "DemoCharge_Remote_Mag";
_unit addHeadgear "EF_H_MCH_BasicNet_DesNet_Des";
_unit addGoggles "G_Combat";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "NVGoggles";