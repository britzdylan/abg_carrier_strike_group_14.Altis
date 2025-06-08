// [side, skillMin, skillAimMin, skillMax, skillAimMax] call BIS_fnc_EXP_camp_setSkill
[west, 0.5, 0.3, 1, 1] call BIS_fnc_EXP_camp_setSkill;
[independent, 0.3, 0.2, 0.7, 0.7] call BIS_fnc_EXP_camp_setSkill;

_allWestUnits = allUnits select {
	side _x == west && _x != player
};
[_allWestUnits] call EAS_fnc_freezeAi;
{
	_unitClassName = typeOf _x;
	[_x, _unitClassName] call EAS_fnc_usmc;
	_x setVariable ["EAS_initialized", true];
} forEach _allWestUnits;

_allVeh = (8 allObjects 1) select {
	_x isKindOf "LandVehicle" || _x isKindOf "Air" || _x isKindOf "Ship"
};

[_allVeh] call EAS_fnc_processVehicles;

private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];
_missionData set ["Ready", true];

[_allWestUnits, true] call EAS_fnc_freezeAi;