// MISSION state.
EAS_fnc_getAllInfantryConfigs = {
	private _infantryConfig = missionConfigFile >> "cfgInfantry";
	private _configs = [];

	for "_i" from 0 to (count _infantryConfig - 1) do {
		private _subClass = _infantryConfig select _i;

		if (isClass _subClass) then {
			private _className = configName _subClass;

			            // Extract all properties from each sub-class
			private _config = createHashMapFromArray [
				["className", _className],
				["displayName", getText (_subClass >> "displayName")],
				["description", getText (_subClass >> "description")],
				["spawnLimit", getNumber (_subClass >> "spawnLimit")],
				["image", getText (_subClass >> "image")],
				["callsigns", getArray (_subClass >> "callsigns")],
				["unitClasses", getArray (_subClass >> "unitClasses")],
				["attached", getArray (_subClass >> "attached")]
			];

			_configs pushBack _config;
		};
	};

	_configs
};

EAS_fnc_getAllRotorWingConfigs = {
	private _rotorConfig = missionConfigFile >> "cfgRotorWings";
	private _configs = [];

	for "_i" from 0 to (count _rotorConfig - 1) do {
		private _subClass = _rotorConfig select _i;

		if (isClass _subClass) then {
			private _className = configName _subClass;

			            // Extract all properties from each sub-class
			private _config = createHashMapFromArray [
				["className", _className],
				["capacity", getNumber (_subClass >> "capacity")],
				["loadOptions", getArray (_subClass >> "loadOptions")]
			];

			_configs pushBack _config;
		};
	};

	_configs
};

// Usage
private _allInfantryConfigs = [] call EAS_fnc_getAllInfantryConfigs;
private _allRotorWingConfig = [] call EAS_fnc_getAllRotorWingConfigs;
missionNamespace setVariable ["EAS_missionData", createHashMapFromArray [
	["InfantryConfig", _allInfantryConfigs],
	["RotorWingConfig", _allRotorWingConfig],
	["Garrison", createHashMapFromArray [["target", nil]]]
]];