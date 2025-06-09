// [side, skillMin, skillAimMin, skillMax, skillAimMax] call BIS_fnc_EXP_camp_setSkill
[west, 0.5, 0.3, 1, 1] call BIS_fnc_EXP_camp_setSkill;
[independent, 0.3, 0.2, 0.7, 0.7] call BIS_fnc_EXP_camp_setSkill;

_allWestUnits = allUnits select {
	side _x == west && _x != player
};
[_allWestUnits] call EAS_fnc_freezeAi;
{
	[_x] call EAS_fnc_applyLoadout;

	_x setVariable ["EAS_initialized", true];
} forEach _allWestUnits;

_allVeh = (8 allObjects 1);

[_allVeh] call EAS_fnc_processVehicles;

private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];
_missionData set ["Ready", true];

[_allWestUnits, true] call EAS_fnc_freezeAi;