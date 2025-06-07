params ["_unit"];
if !(local _unit) exitWith {};

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

{
	_unit addMagazineCargoGlobal _x;
} forEach [["HandGrenade", 6], ["MiniGrenade", 6], ["1Rnd_HE_Grenade_shell", 6], ["1Rnd_Smoke_Grenade_shell", 3], ["1Rnd_SmokeGreen_Grenade_shell", 3], ["1Rnd_SmokeOrange_Grenade_shell", 3], ["1Rnd_SmokeBlue_Grenade_shell", 3], ["SmokeShell", 8], ["SmokeShellGreen", 8], ["SmokeShellOrange", 8], ["SmokeShellBlue", 8], ["30Rnd_556x45_AP_Stanag_Tan_RF", 30], ["200Rnd_65x39_cased_Box_Tracer", 10], ["Aegis_10Rnd_762x54_SVD_Yellow_Mag_F", 10]];

{
	_unit addItemCargoGlobal _x;
} forEach [["FirstAidKit", 10]];