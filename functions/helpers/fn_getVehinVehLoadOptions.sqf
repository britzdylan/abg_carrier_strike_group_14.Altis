// fn_getVehInVehLoadOptions.sqf
params [["_configName", "NavalShipsConfig" ]];

private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];
private _config = _missionData getOrDefault [_configName, createHashMap];

if (_config isEqualTo createHashMap) exitWith {
	[]
};

private _allEntries = [];

{
	private _categoryData = _config getOrDefault [_x, createHashMap];
	if !(_categoryData isEqualTo createHashMap) then {
		// Save ["Class_Name", "Display Name of the class"] to an array for each element
		{
			private _className = _x;
			private _classConfig = _categoryData get _className;
			private _displayName = _classConfig getOrDefault ["displayName", _className];
			_allEntries pushBack [_className, _displayName];
		} forEach (keys _categoryData);
	};
} forEach ["cfgEmptyVehicles"];

_allEntries