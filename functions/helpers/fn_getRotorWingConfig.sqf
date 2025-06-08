params ["_configClass"];

private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];
private _rotorWingConfigs = _missionData get "RotorWingConfig";

private _configIndex = _rotorWingConfigs findIf {
	(_x get "className") == _configClass
};

if (_configIndex >= 0) then {
	_rotorWingConfigs select _configIndex
} else {
	createHashMap
}