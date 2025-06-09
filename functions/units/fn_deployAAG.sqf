// EAS_area_takmyr
private _aavClassName = "EF_B_AAV9_50mm_MJTF_Des";
private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];

if ((_missionData get "isDeployingAAG") == true) exitWith {
	systemChat "In Progress";
};
_missionData set ["isDeployingAAG", true];

private _infConfig = (_missionData get "cfgInfantry") get "USMC_Infantry_Squad";
private _wepConfig = (_missionData get "cfgInfantry") get "USMC_Infantry_Weapons";

private _vehiclesInside = vehicles inAreaArray EAS_area_takmyr;
private _infSpawnLimit = _infConfig get "spawnLimit";
private _wepSpawnLimit = _wepConfig get "spawnLimit";

if ((_infSpawnLimit + _wepSpawnLimit) < 1) exitWith {
	systemChat "Not enough squads available for AAG Deployment";
};

// Filter AAVs first
private _aavs = _vehiclesInside select {
	typeOf _x == _aavClassName && (count (assignedCargo _x)) == 0
};

if ((count _aavs) < 1) exitWith {
	systemChat "All vehicles occupied";
};

// Process each AAV
{
	private _vehicleIndex = _forEachIndex + 1;  // 1-based indexing
	private _currentVehicle = _x;
	private _spawnPos = getPos _currentVehicle;

	// Every 3rd vehicle gets weapons squad, others get infantry
	private _useWeaponsSquad = (_vehicleIndex % 3 == 0);

	if (_useWeaponsSquad && (_wepConfig get "spawnLimit") > 0) then {
		// spawn weapons squad
		private _unitClasses = _wepConfig get "unitClasses";
		private _unitGroup = createGroup west;

		{
			private _unitClass = _x;
			private _unit = _unitGroup createUnit [_unitClass, _spawnPos, [], 0, "NONE"];
			[_unit] call EAS_fnc_applyLoadout;

			if (_unitClass == 'EF_B_Marine_SL_Des') then {
				_unitGroup selectLeader _unit;
			};

			_unit assignAsCargo _currentVehicle;
			_unit moveInAny _currentVehicle;
		} forEach _unitClasses;

		_wepConfig set ["spawnLimit", ((_wepConfig get "spawnLimit") - 1)];
		systemChat format ["Weapons squad loaded into AAV #%1", _vehicleIndex];
	} else {
		// spawn infantry squad (if available)
		if ((_infConfig get "spawnLimit") > 0) then {
			private _unitClasses = _infConfig get "unitClasses";
			private _unitGroup = createGroup west;

			{
				private _unitClass = _x;
				private _unit = _unitGroup createUnit [_unitClass, _spawnPos, [], 0, "NONE"];
				[_unit] call EAS_fnc_applyLoadout;

				if (_unitClass == 'EF_B_Marine_SL_Des') then {
					_unitGroup selectLeader _unit;
				};

				_unit assignAsCargo _currentVehicle;
				_unit moveInAny _currentVehicle;
			} forEach _unitClasses;

			_infConfig set ["spawnLimit", ((_infConfig get "spawnLimit") - 1)];
			systemChat format ["Infantry squad loaded into AAV #%1", _vehicleIndex];
		} else {
			systemChat format ["No squads available for AAV #%1", _vehicleIndex];
		};
	};
} forEach _aavs;
_missionData set ["isDeployingAAG", false];
systemChat format ["AAV loading complete: %1 vehicles processed", count _aavs];