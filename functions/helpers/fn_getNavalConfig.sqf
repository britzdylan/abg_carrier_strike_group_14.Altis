params ["_className","_namespace"];

private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];
private _infantryConfigs = _missionData get _namespace;

private _configIndex = _infantryConfigs findIf {
	(_x get "className") == _className
};

if (_configIndex >= 0) then {
	_infantryConfigs select _configIndex
} else {
	createHashMap
}