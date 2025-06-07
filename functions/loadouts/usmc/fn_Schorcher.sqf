params ["_unit"];
if !(local _unit) exitWith {};

clearWeaponCargoGlobal _unit;
clearMagazineCargoGlobal _unit;
clearItemCargoGlobal _unit;
clearBackpackCargoGlobal _unit;

{
	_unit addMagazineCargoGlobal _x;
} forEach [["SmokeShell", 2], ["SmokeShellBlue", 2]];

{
	_unit addItemCargoGlobal _x;
} forEach [["FirstAidKit", 10], ["ToolKit", 1], ["Medikit", 1]];

{
	_unit addBackpackCargoGlobal _x;
} forEach [["B_AssaultPack_mcamo", 2]];