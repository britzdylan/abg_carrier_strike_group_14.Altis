params ["_unit"];
if !(local _unit) exitWith {};

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

{
	_unit addWeaponCargoGlobal _x;
} forEach [["Aegis_arifle_M4A1_sand_F", 2]];

{
	_unit addMagazineCargoGlobal _x;
} forEach [["SmokeShell", 2], ["SmokeShellBlue", 2], ["30Rnd_556x45_Stanag", 10]];

{
	_unit addItemCargoGlobal _x;
} forEach [["FirstAidKit", 16], ["ToolKit", 1], ["Medikit", 1], ["ItemGPS", 1]];

{
	_unit addBackpackCargoGlobal _x;
} forEach [["B_Parachute", 20]];