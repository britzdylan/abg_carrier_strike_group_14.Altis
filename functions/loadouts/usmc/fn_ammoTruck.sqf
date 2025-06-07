params ["_unit"];
if !(local _unit) exitWith {};

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

{
	_unit addMagazineCargoGlobal _x;
} forEach [["Chemlight_blue", 10], ["Chemlight_green", 10], ["Chemlight_red", 10], ["Chemlight_yellow", 10], ["1Rnd_SmokeBlue_Grenade_shell", 50], ["1Rnd_SmokeGreen_Grenade_shell", 50], ["1Rnd_SmokeOrange_Grenade_shell", 504], ["1Rnd_SmokePurple_Grenade_shell", 50], ["HandGrenade", 60], ["ClaymoreDirectionalMine_Remote_Mag", 5], ["SatchelCharge_Remote_Mag", 3], ["APERSMineDispenser_Mag", 1], ["APERSMine_Range_Mag", 25], ["Titan_AA", 5], ["Titan_AT", 3], ["10Rnd_762x54_Mag", 50], ["200Rnd_65x39_cased_Box_Tracer", 50], ["30Rnd_556x45_AP_Stanag_Tan_RF", 50]];

{
	_unit addItemCargoGlobal _x;
} forEach [["Binocular", 10], ["Laserdesignator", 5], ["ItemMap", 5], ["Medikit", 3], ["ItemRadio", 10], ["ToolKit", 8], ["B_UavTerminal", 5]];

{
	_unit addBackpackCargoGlobal _x;
} forEach [["EF_B_Kitbag_coy", 5], ["B_UAV_01_backpack_F", 2], ["B_AT_01_weapon_F", 2], ["B_AA_01_weapon_F", 2], ["EF_B_RaiderPack_coy", 2], ["B_HMG_01_support_high_F", 4]];