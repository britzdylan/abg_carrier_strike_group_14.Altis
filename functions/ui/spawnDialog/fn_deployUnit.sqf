private _display = findDisplay 5000;
private _unitList = _display displayCtrl 5002;
private _infoCtrl = _display displayCtrl 5005;

private _selectedUnit = lbCurSel _unitList;
private _className = _unitList lbData _selectedUnit;
private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];

if (_className == "" || _selectedUnit < 0) exitWith {
	_infoCtrl ctrlSetStructuredText parseText "<t color='#ffaa00'>No loadout selected</t>";
};

private _infantryConfig = (_missionData get "cfgInfantry") get _className;
private _spawnLimit = _infantryConfig get "spawnLimit";

private _garrison = _missionData get "Garrison";
private _canSpawn = (_garrison get "infantrySquadsDeployed") < _spawnLimit;

if (!_canSpawn) exitWith {
	systemChat "All unit reserves exhausted";
};

private _target = _garrison get "target";
private _freeSeats = _target emptyPositions "cargo";
private _requiredUnits = count (_infantryConfig get "unitClasses");

if (isNull _target || !alive _target) exitWith {
	systemChat "ERROR: No helicopter available for deployment";
};

if (_requiredUnits > _freeSeats) exitWith {
	systemChat "Not enough space for that group";
};

private _spawnPos = getPos _target;
private _unitClasses = _infantryConfig get "unitClasses";
private _unitGroup = createGroup west;

private _units = [];
{
	private _unit = _unitGroup createUnit [_x, _spawnPos, [], 0, "NONE"];
	_units pushBack _unit;
	[_unit] call EAS_fnc_applyLoadout;
} forEach _unitClasses;

{
	_x assignAsCargo _target;
	_x moveInCargo _target;
} forEach _units;
_infantryConfig set ["spawnLimit", ((_infConfig get "spawnLimit") - 1)];

private _unitName = _unitList lbText _selectedUnit;
systemChat format ["Deployment complete: %1 squad loaded into %2", _unitName, _target];