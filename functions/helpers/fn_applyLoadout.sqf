params ["_unit"];
_unitClassName = typeOf _unit;

    // try to call a function based on the class name
private _functionName = format ["EAS_fnc_%1", _unitClassName];

    // Check if function exists before calling
if (!isNil _functionName) then {
	[_unit] call (missionNamespace getVariable _functionName);
} else {
	// Fallback to generic function
	[_unit, _unitClassName] call EAS_fnc_usmc;
};