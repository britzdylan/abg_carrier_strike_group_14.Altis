params ["_unit"];

if !(local _unit) exitWith {};

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

{
	_unit addMagazineCargoGlobal _x;
} forEach [["MRAWS_HE_F", 2], ["MRAWS_HEAT_F", 2], ["MRAWS_HEAT55_F", 2], ["30Rnd_556x45_AP_Stanag_Tan_RF", 23], ["ClaymoreDirectionalMine_Remote_Mag", 3], ["HandGrenade", 10], ["SmokeShell", 5], ["6Rnd_HE_Grenade_shell", 10], ["200Rnd_65x39_cased_Box_Tracer", 5], ["10Rnd_762x54_Mag", 10]];

{
	_unit addItemCargoGlobal _x;
} forEach [["FirstAidKit", 10], ["Laserdesignator", 1], ["ToolKit", 1], ["Medikit", 1]];

{
	_unit addBackpackCargoGlobal _x;
} forEach [["EF_B_AssaultPack_coy", 1]];

[
	_unit,
	["Sand", 1],
	["showBags", 1, "showCamonetHull", 1, "showCamonetTurret", 1, "showSLATHull", 0, "showSLATTurret", 1]
] call BIS_fnc_initVehicle;