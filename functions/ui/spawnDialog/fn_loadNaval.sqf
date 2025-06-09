private _display = findDisplay 4000;
private _unitList = _display displayCtrl 4002;
private _infoCtrl = _display displayCtrl 4005;

private _selectedUnit = lbCurSel _unitList;
private _className = _unitList lbData _selectedUnit;
private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];

if (_className == "" || _selectedUnit < 0) exitWith {
	_infoCtrl ctrlSetStructuredText parseText "<t color='#ffaa00'>No loadout selected</t>";
};

private _config = (_missionData get "cfgVehicles") get _className;
private _spawnLimit = _config get "spawnLimit";
private _type = _config get "type";
private _unitGroup = createGroup west;

private _garrison = _missionData get "Garrison";
private _canSpawn = _spawnLimit > 0;

if (!_canSpawn) exitWith {
	deleteGroup _unitGroup;
	systemChat "All unit reserves exhausted";
};

private _target = _garrison get "target";
if (isNull _target || !alive _target) exitWith {
	deleteGroup _unitGroup;
	systemChat "ERROR: No ship available for deployment";
};

private _vehicle = _className createVehicle position _target;

private _canLoad = (_target canVehicleCargo _vehicle) select 0;
if (!_canLoad) exitWith {
	deleteVehicle _vehicle;
	deleteGroup _unitGroup;
	systemChat "Not enough space for that group";
};

private _didLoad = _target setVehicleCargo _vehicle;

if (!_didLoad) exitWith {
	deleteVehicle _vehicle;
	deleteGroup _unitGroup;
	systemChat "Could not load";
};
[[_vehicle]] call EAS_fnc_processVehicles;

switch (_type) do {
	case "crewed": {
		createVehicleCrew _vehicle;
		{
			[_x] call EAS_fnc_applyLoadout;
		} forEach crew _vehicle;
	};
	case "attached": {
		private _unitClassName = _config get "unit";
		hint str _unitClassName;
		private _infantryConfig = (_missionData get "cfgInfantry") get _unitClassName;
		private _requiredUnits = count (_infantryConfig get "unitClasses");
		private _spawnPos = getPos _vehicle;
		private _unitClasses = _infantryConfig get "unitClasses";

		private _units = [];
		{
			private _unit = _unitGroup createUnit [_x, _spawnPos, [], 0, "NONE"];
			_units pushBack _unit;
			[_unit] call EAS_fnc_applyLoadout;
			if (_x == 'EF_B_Marine_SL_Des') then {
				_unitGroup selectLeader _unit;
			};
			if (_unitClassName == 'Aegis_B_MJTF_D_APC_Wheeled_01_atgm_v2') then {
				if (_x == 'EF_B_Marine_Crew_Des') then {
					// try crew positions in priority order
					private _assigned = false;

					    // try driver first
					if (isNull (driver _vehicle)) then {
						_unit assignAsDriver _vehicle;
						_unit moveInDriver _vehicle;
						_assigned = true;
					};

					    // try gunner if driver taken
					if (!_assigned && isNull (gunner _vehicle)) then {
						_unit assignAsGunner _vehicle;
						_unit moveInGunner _vehicle;
						_assigned = true;
					};

					    // try commander if both taken
					if (!_assigned && isNull (commander _vehicle)) then {
						_unit assignAsCommander _vehicle;
						_unit moveInCommander _vehicle;
						_assigned = true;
					};

					    // Fallback to cargo if all crew positions filled
					if (!_assigned) then {
						_unit assignAsCargo _vehicle;
						_unit moveInCargo _vehicle;
					};
				} else {
					_unit assignAsCargo _vehicle;
					_unit moveInCargo _vehicle;
				};
			} else {
				_unit moveInAny _vehicle;
			};
		} forEach _unitClasses;
		_infantryConfig set ["spawnLimit", ((_infantryConfig get "spawnLimit") - 1)];
	};
	default {};
};

_config set ["spawnLimit", (_spawnLimit - 1)];

private _unitName = _unitList lbText _selectedUnit;
systemChat format ["Deployment complete: %1 loaded into %2", _unitName, _target];