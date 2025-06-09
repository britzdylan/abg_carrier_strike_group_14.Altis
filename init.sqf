// MISSION state.
EAS_fnc_parseConfigToHashMap = {
	params ["_config"];

	private _result = createHashMap;

	    // Handle different config entry types
	{
		private _entryName = configName _x;

		if (isClass _x) then {
			// Recursively parse sub-classes
			_result set [_entryName, [_x] call EAS_fnc_parseConfigToHashMap];
		} else {
			// Handle properties
			private _value = switch (true) do {
				case (isNumber _x): {
					getNumber _x
				};
				case (isText _x): {
					getText _x
				};
				case (isArray _x): {
					getArray _x
				};
				default {
					configName _x
				};
			};
			_result set [_entryName, _value];
		};
	} forEach (configProperties [_config, "true", true]);

	_result;
};

// private _config = missionConfigFile >> "cfgEmptyVehicles";
_missionData = createHashMap;
_missionData set ["MissionReady", false];
_missionData set ["Garrison", createHashMapFromArray [["target", nil], ["infantrySquadsDeployed", 0]]];

_missionData set ["cfgVehicles", [(missionConfigFile >> "cfgVehicles")] call EAS_fnc_parseConfigToHashMap];
_missionData set ["cfgInfantry", [(missionConfigFile >> "cfgInfantry")] call EAS_fnc_parseConfigToHashMap];
_missionData set ["cfgRotorWings", [(missionConfigFile >> "cfgRotorWings")] call EAS_fnc_parseConfigToHashMap];
_missionData set ["cfgShips", [(missionConfigFile >> "cfgShips")] call EAS_fnc_parseConfigToHashMap];

missionNamespace setVariable ["EAS_missionData", _missionData];

// missionNamespace setVariable ["EAS_missionData", createHashMapFromArray [
	// ["Ready", false], 
	// ["InfantryConfig", _allInfantryConfigs], 
	// ["RotorWingConfig", _allRotorWingConfig], 
	// ["cfgEmptyVehicles", _allEmptyVehiclesConfig], 
	// ["NavalShipsConfig", _allNavalShipConfig], 
	// ["Garrison", createHashMapFromArray [["target", nil], ["infantrySquadsDeployed", 0]]]
// ]];