params ["_vehicle", "_trigger"];

    // Quick validation
if (isNull _vehicle || isNull _trigger) exitWith {
	false
};

    // Check if alive and in trigger
(alive _vehicle) && (_vehicle inArea _trigger)