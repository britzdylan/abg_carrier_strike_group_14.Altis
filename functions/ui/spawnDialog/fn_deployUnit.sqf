private _display = findDisplay 5000;
private _unitList = _display displayCtrl 5002;
private _infoCtrl = _display displayCtrl 5005;

private _selectedUnit = lbCurSel _unitList;
private _className = _unitList lbData _selectedUnit;
private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];

if (_className == "" || _selectedUnit < 0) exitWith {
	_infoCtrl ctrlSetStructuredText parseText "<t color='#ffaa00'>No loadout selected</t>";
};

private _infantryConfig = [_className] call EAS_fnc_getInfantryConfig;
private _heli = (_missionData get "Garrison") get "target";
private _freeSeats = _heli emptyPositions "cargo";
private _requiredUnits = count (_infantryConfig get "unitClasses");

if (isNull _heli || !alive _heli) exitWith {
	hint "ERROR: No helicopter available for deployment";
};

if (_requiredUnits > _freeSeats) exitWith {
	hint "Not enough space for that group";
};

private _spawnPos = getPos _heli;
private _unitClasses = _infantryConfig get "unitClasses";
private _unitGroup = createGroup west;

private _units = [];
{
	private _unit = _unitGroup createUnit [_x, _spawnPos, [], 0, "NONE"];
	_units pushBack _unit;
	[_unit, _x] spawn EAS_fnc_usmc;
} forEach _unitClasses;

{
	_x assignAsCargo _heli;
	_x moveInCargo _heli;
} forEach _units;
private _unitName = _unitList lbText _selectedUnit;
systemChat format ["Deployment complete: %1 squad loaded into helicopter", _unitName];