params ["_heli"];

private _configClass = typeOf _heli;
private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];
(_missionData get "Garrison") set ["target", _heli];
private _heliConfig = (_missionData get "cfgRotorWings") get _configClass;

if (_heliConfig isEqualTo createHashMap) exitWith {
	systemChat format ["Error: Helicopter config '%1' not found", _configClass];
};

private _capacity = _heliConfig get "capacity";
private _loadOptions =_heliConfig get "loadOptions";
private _freeSeats = _heli emptyPositions "cargo";

// filter out loadOptions that are too big for avaialble seats
_validLoadOptions = [];
{
	private _config = (_missionData get "cfgInfantry") get _x;

	if (!(_config isEqualTo createHashMap)) then {
		private _requiredUnits = count (_config get "unitClasses");
		private _displayName = _config get "displayName";
		if (_requiredUnits <= _freeSeats) then {
			_validLoadOptions pushBack [_displayName, _x];
		} else {
			systemChat format ["Loadout '%1' requires %2 seats but only %3 available", _x, _requiredUnits, _freeSeats];
		};
	} else {
		systemChat format ["Warning: Loadout config '%1' not found", _x];
	};
} forEach _loadOptions;

[_validLoadOptions] call EAS_fnc_openSpawnDialog;