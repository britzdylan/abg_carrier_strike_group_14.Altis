// [side, skillMin, skillAimMin, skillMax, skillAimMax] call BIS_fnc_EXP_camp_setSkill
[west, 0.5, 0.3, 1, 1] call BIS_fnc_EXP_camp_setSkill;
[independent, 0.3, 0.2, 0.7, 0.7] call BIS_fnc_EXP_camp_setSkill;

{
	if (_x != player && side _x == west) then {
		_x disableAI "ALL";
		_x enableSimulation false;
		_x allowDamage false;
		_x hideObject true;
		_unitClassName = typeOf _x;
		// pilots ====================================================
		switch (_unitClassName) do {
			case "B_Helipilot_F": {
				[_x, "EF_29th_MEU_Color"] call BIS_fnc_setUnitInsignia;
				_x setRank (["SERGEANT", "SERGEANT", "SERGEANT", "LIEUTENANT"] select (floor random 4));
				_x setSkill ["general", 0.8];
				_x setSkill ["courage", 0.5];
				_x setSkill ["aimingAccuracy", 0.3];
				_x setSkill ["aimingShake", 0.3];
				_x setSkill ["aimingSpeed", 0.3];
				_x setSkill ["commanding", 0.5];
				_x setSkill ["spotDistance", 0.6];
				_x setSkill ["spotTime", 0.6];
				_x setSkill ["reloadSpeed", 0.3];
			};
			case "B_HeliCrew_F": {
				[_x, "EF_29th_MEU_Color"] call BIS_fnc_setUnitInsignia;
				_x setRank (["CORPORAL", "SERGEANT", "SERGEANT"] select (floor random 3));
				_x setSkill ["general", 0.7];
				_x setSkill ["courage", 0.7];
				_x setSkill ["aimingAccuracy", 0.5];
				_x setSkill ["aimingShake", 0.3];
				_x setSkill ["aimingSpeed", 0.5];
				_x setSkill ["commanding", 0.5];
				_x setSkill ["spotDistance", 0.6];
				_x setSkill ["spotTime", 0.6];
				_x setSkill ["reloadSpeed", 0.5];
			};
			case "B_Fighter_Pilot_F": {
				[_x, "Jets_ID"] call BIS_fnc_setUnitInsignia;
				_x setRank (["LIEUTENANT", "CAPTAIN", "CAPTAIN"] select (floor random 3));
				_x setSkill ["general", 1];
				_x setSkill ["courage", 1];
				_x setSkill ["aimingAccuracy", 0.8];
				_x setSkill ["aimingShake", 1];
				_x setSkill ["aimingSpeed", 1];
				_x setSkill ["commanding", 1];
				_x setSkill ["spotDistance", 1];
				_x setSkill ["spotTime", 1];
				_x setSkill ["reloadSpeed", 0.5];
			};
			// regular infantry ====================================================
			case "EF_B_Marine_SL_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "SERGEANT";
				[_x] call EAS_fnc_regularLeader;
				[_x] call EAS_fnc_SquadLead;
			};
			case "EF_B_Marine_TL_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regularLeader;
				[_x] call EAS_fnc_TeamLead;
			};
			case "EF_B_Marine_LAT2_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_LATSpec;
			};
			case "EF_B_Marine_LAT_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_LATSpec;
			};
			case "EF_B_Marine_GL_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regular;
			};
			case "EF_B_Marine_Medic_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_Medic;
			};
			case "EF_B_Marine_AR_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_AutoRifleman;
			};
			case "EF_B_Marine_Mark_Des" : {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regularDM;
				[_x] call EAS_fnc_Dms;
			};
			case "EF_B_Marine_R_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				if (((_x getVariable "EAS_unit") isEqualTo "DRIVER")) then {
					[_x] call EAS_fnc_regularDriver;
				} else {
					[_x] call EAS_fnc_regular;
				};
				[_x] call EAS_fnc_Rifleman;
			};
			case "EF_B_Marine_Exp_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_ExpSpec;
			};
			case "EF_B_Marine_Crew_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_CrewMan;
			};
			case "EF_B_Marine_Eng_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_Engineer;
			};
			case "EF_B_Marine_Repair_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_RepairSpec;
			};
			case "EF_B_Marine_AT_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_ATSpec;
			};
			case "EF_B_Marine_AAT_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_AATSpec;
			};
			case "EF_B_Marine_Mort_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "CORPORAL";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_MortarSpec;
			};
			case "EF_B_Marine_AMort_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_AMortarSpec;
			};
			case "EF_B_Marine_GMG_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_GMGSpec;
			};
			case "EF_B_Marine_HMG_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_HMGSpec;
			};
			case "EF_B_Marine_AMG_Des": {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
				[_x] call EAS_fnc_AMGSpec;
			};
			default {
				[_x, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
				_x setRank "PRIVATE";
				[_x] call EAS_fnc_regular;
			};
		};
		_x setVariable ["EAS_init", true];
	};
} forEach allUnits;

{
	_unitClassName = typeOf _x;

	// _X hideObject true;
	switch (_unitClassName) do {
		case "Aegis_B_MJTF_D_APC_Wheeled_01_atgm_v2": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[
				_x,
				["Sand", 1],
				["showBags", 1, "showCamonetHull", 1, "showCamonetTurret", 1, "showSLATHull", 0, "showSLATTurret", 1]
			] call BIS_fnc_initVehicle;
			[_x] call EAS_fnc_AMV;
		};
		case "EF_B_AAV9_50mm_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_AAV;
		};
		case "B_MBT_01_arty_F": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_Schorcher;
		};
		case "EF_B_MBT_01_TUSK_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
		};
		case "EF_B_Truck_01_medical_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			clearItemCargoGlobal _x;
			_x addItemCargoGlobal ["FirstAidKit", 100];
		};
		case "EF_B_Truck_01_fuel_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			clearItemCargoGlobal _x;
		};
		case "EF_B_Truck_01_Repair_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			clearItemCargoGlobal _x;
		};
		case "EF_B_Truck_01_ammo_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_ammoTruck;
		};
		case "EF_B_Truck_01_transport_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			clearItemCargoGlobal _x;
		};
		case "EF_B_MRAP_01_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_MRAPBasic;
		};
		case "EF_B_MRAP_01_hmg_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_MRAPBasic;
		};
		case "EF_B_MRAP_01_gmg_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_MRAPBasic;
		};
		case "EF_B_MRAP_01_AT_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_MrapAt;
		};
		case "EF_B_MRAP_01_LAAD_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_MRAPBasic;
		};
		case "EF_B_MRAP_01_FSV_MJTF_Des": {
			_x enableSimulation false;
			_x allowDamage false;
			_x hideObject true;
			[_x] call EAS_fnc_MRAPBasic;
		};
		case "B_Heli_EC_04_military_RF": {
			[_x] call EAS_fnc_medHeli;
			_x enableSimulation true;
			_x allowDamage true;
		};
		case "B_Heli_Transport_03_unarmed_F": {
			[_x] call EAS_fnc_medHeli;
			_x enableSimulation true;
			_x allowDamage true;

			[
				_x,
				"Assign Group",
				"",
				"",
				{
					alive player && (getPos _x) inArea EAS_areaBoat;
				},
				"true",
				{
					hint "Started!";
				},
				{
					systemChat str (_this select 3);
				},
				{
					params ["_target", "_caller", "_actionId", "_arguments"];
					// [_target] EAS_fnc_openVpm;
				},
				{},
				[],
				10,
				nil,
				false,
				false
			] call BIS_fnc_holdActionAdd;
		};
		case "EF_B_Heli_Transport_01_MJTF_Des": {
			[_x] call EAS_fnc_medHeli;
			_x enableSimulation true;
			_x allowDamage true;
		};
		case "EF_B_AH99J_MJTF_Des": {
			[_x] call EAS_fnc_medHeli;
			_x enableSimulation true;
			_x allowDamage true;
		};
		default {};
	}
} forEach (8 allObjects 1);