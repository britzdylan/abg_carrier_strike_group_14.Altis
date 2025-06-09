/**
	 * EAS_fnc_initializeVehicles - Initialize vehicles with specific configurations
	 * @param {
		ARRAY
	} _vehicles - Array of vehicles to process (optional, defaults to nearby objects)
	 * @param {
		NUMBER
	} _radius - Search radius for vehicles (optional, defaults to 1000)
	 * @param {
		ARRAY
	} _position - Center position for search (optional, defaults to [0, 0, 0])
	 * @return {
		NUMBER
	} - count of vehicles processed
 */

params [
	["_vehicles", [], [[]]],
	["_radius", 1000, [0]],
	["_position", [0, 0, 0], [[]]]
];

// if no vehicles provided, get all vehicles in radius
if (_vehicles isEqualTo []) then {
	_vehicles = nearestObjects [_position, ["LandVehicle", "Air", "Ship"], _radius];
};

private _processedCount = 0;

{
	private _vehicle = _x;
	private _className = typeOf _vehicle;

	    // Skip if not a vehicle or already processed
	if (!(_vehicle isKindOf "AllVehicles") || {
		_vehicle getVariable ["EAS_initialized", false]
	}) then {
		continue;
	};

	    // Mark as processed to avoid duplicate initialization
	_vehicle setVariable ["EAS_initialized", true];

	    // apply specific vehicle configuration
	switch (_className) do {
		case "Aegis_B_MJTF_D_APC_Wheeled_01_atgm_v2": {
			[
				_vehicle,
				["Sand", 1],
				["showBags", 1, "showCamonetHull", 1, "showCamonetTurret", 1, "showSLATHull", 0, "showSLATTurret", 1]
			] call BIS_fnc_initVehicle;
			[_vehicle] call EAS_fnc_AMV;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_AAV9_50mm_MJTF_Des": {
			[_vehicle] call EAS_fnc_AAV;
			_processedCount = _processedCount + 1;
		};
		case "B_MBT_01_arty_F": {
			[_vehicle] call EAS_fnc_Schorcher;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_Truck_01_medical_MJTF_Des": {
			clearItemCargoGlobal _vehicle;
			_vehicle addItemCargoGlobal ["FirstAidKit", 100];
			_processedCount = _processedCount + 1;
		};
		case "EF_B_Truck_01_fuel_MJTF_Des": {
			clearItemCargoGlobal _vehicle;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_Truck_01_Repair_MJTF_Des": {
			clearItemCargoGlobal _vehicle;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_Truck_01_ammo_MJTF_Des": {
			[_vehicle] call EAS_fnc_ammoTruck;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_Truck_01_transport_MJTF_Des": {
			clearItemCargoGlobal _vehicle;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_MRAP_01_MJTF_Des": {
			[_vehicle] call EAS_fnc_MRAPBasic;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_MRAP_01_hmg_MJTF_Des": {
			[_vehicle] call EAS_fnc_MRAPBasic;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_MRAP_01_gmg_MJTF_Des": {
			[_vehicle] call EAS_fnc_MRAPBasic;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_MRAP_01_AT_MJTF_Des": {
			[_vehicle] call EAS_fnc_MrapAt;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_MRAP_01_LAAD_MJTF_Des": {
			[_vehicle] call EAS_fnc_MRAPBasic;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_MRAP_01_FSV_MJTF_Des": {
			[_vehicle] call EAS_fnc_MRAPBasic;
			_processedCount = _processedCount + 1;
		};
		case "B_Heli_EC_04_military_RF": {
			[_vehicle] call EAS_fnc_medHeli;
			_vehicle addAction [
				"Open Garrison",
				{
					params ["_target"];
					[_target] call EAS_fnc_heliSpawnDialog;
				}, nil, 1, true, false, "",
				"[_target, EAS_area_carrier] call EAS_fnc_isVehicleInTriggerAlive"
			];
			_processedCount = _processedCount + 1;
		};
		case "B_Heli_Transport_03_F": {
			[_vehicle] call EAS_fnc_medHeli;
			_vehicle addAction [
				"Open Garrison",
				{
					params ["_target"];
					[_target] call EAS_fnc_heliSpawnDialog;
				}, nil, 1, true, false, "",
				"[_target, EAS_area_carrier] call EAS_fnc_isVehicleInTriggerAlive"
			];
			_processedCount = _processedCount + 1;
		};
		case "EF_B_Heli_Transport_01_MJTF_Des": {
			[_vehicle] call EAS_fnc_medHeli;
			_vehicle addAction [
				"Open Garrison",
				{
					params ["_target"];
					[_target] call EAS_fnc_heliSpawnDialog;
				}, nil, 1, true, false, "",
				"[_target, EAS_area_carrier] call EAS_fnc_isVehicleInTriggerAlive"
			];
			_processedCount = _processedCount + 1;
		};
		case "EF_B_AH99J_MJTF_Des": {
			[_vehicle] call EAS_fnc_medHeli;
			_processedCount = _processedCount + 1;
		};
		case "EF_B_LCC_MJTF_Des": {
			clearItemCargoGlobal _vehicle;
			_vehicle addAction [
				"Open Garrison",
				{
					params ["_target"];
					[_target] call EAS_fnc_heliSpawnDialog;
				}, nil, 1, true, false, "",
				"[_target, EAS_area_loadDeck] call EAS_fnc_isVehicleInTriggerAlive"
			];

			_processedCount = _processedCount + 1;
		};
		default {};
	};
} forEach _vehicles;

// Return count of processed vehicles
_processedCount