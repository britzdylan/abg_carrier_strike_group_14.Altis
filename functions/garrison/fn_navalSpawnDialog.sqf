params ["_ship"];

private _configClass = typeOf _ship;
private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];
(_missionData get "Garrison") set ["target", _ship];

private _vehicles = _missionData get "cfgVehicles";

// filter out loadOptions that are too big for available seats
_validLoadOptions = [];
{
	private _config = _vehicles get _x;
	hint str _x;
	if (!(_config isEqualTo createHashMap)) then {
		private _displayName = _config get "displayName";
		_validLoadOptions pushBack [_displayName, _x];
	} else {
		systemChat format ["Warning: Loadout config '%1' not found", _x];
	};
} forEach (keys _vehicles);
[_validLoadOptions] call EAS_fnc_openNavalSpawnDialog;