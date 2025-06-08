params ["_obj", "_className"];

switch (_className) do {
	case "B_Helipilot_F": {
		[_obj, "EF_29th_MEU_Color"] call BIS_fnc_setUnitInsignia;
		_obj setRank (["SERGEANT", "SERGEANT", "SERGEANT", "LIEUTENANT"] select (floor random 4));
		_obj setSkill ["general", 0.8];
		_obj setSkill ["courage", 0.5];
		_obj setSkill ["aimingAccuracy", 0.3];
		_obj setSkill ["aimingShake", 0.3];
		_obj setSkill ["aimingSpeed", 0.3];
		_obj setSkill ["commanding", 0.5];
		_obj setSkill ["spotDistance", 0.6];
		_obj setSkill ["spotTime", 0.6];
		_obj setSkill ["reloadSpeed", 0.3];
	};
	case "B_HeliCrew_F": {
		[_obj, "EF_29th_MEU_Color"] call BIS_fnc_setUnitInsignia;
		_obj setRank (["CORPORAL", "SERGEANT", "SERGEANT"] select (floor random 3));
		_obj setSkill ["general", 0.7];
		_obj setSkill ["courage", 0.7];
		_obj setSkill ["aimingAccuracy", 0.5];
		_obj setSkill ["aimingShake", 0.3];
		_obj setSkill ["aimingSpeed", 0.5];
		_obj setSkill ["commanding", 0.5];
		_obj setSkill ["spotDistance", 0.6];
		_obj setSkill ["spotTime", 0.6];
		_obj setSkill ["reloadSpeed", 0.5];
	};
	case "B_Fighter_Pilot_F": {
		[_obj, "Jets_ID"] call BIS_fnc_setUnitInsignia;
		_obj setRank (["LIEUTENANT", "CAPTAIN", "CAPTAIN"] select (floor random 3));
		_obj setSkill ["general", 1];
		_obj setSkill ["courage", 1];
		_obj setSkill ["aimingAccuracy", 0.8];
		_obj setSkill ["aimingShake", 1];
		_obj setSkill ["aimingSpeed", 1];
		_obj setSkill ["commanding", 1];
		_obj setSkill ["spotDistance", 1];
		_obj setSkill ["spotTime", 1];
		_obj setSkill ["reloadSpeed", 0.5];
	};
	// regular infantry ====================================================
	case "EF_B_Marine_SL_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "SERGEANT";
		[_obj] call EAS_fnc_regularLeader;
		[_obj] call EAS_fnc_SquadLead;
	};
	case "EF_B_Marine_TL_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regularLeader;
		[_obj] call EAS_fnc_TeamLead;
	};
	case "EF_B_Marine_LAT2_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_LATSpec;
	};
	case "EF_B_Marine_LAT_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_LATSpec;
	};
	case "EF_B_Marine_GL_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
	};
	case "EF_B_Marine_Medic_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_Medic;
	};
	case "EF_B_Marine_AR_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_AutoRifleman;
	};
	case "EF_B_Marine_Mark_Des" : {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regularDM;
		[_obj] call EAS_fnc_Dms;
	};
	case "EF_B_Marine_R_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		if (((_obj getVariable "EAS_unit") isEqualTo "DRIVER")) then {
			[_obj] call EAS_fnc_regularDriver;
		} else {
			[_obj] call EAS_fnc_regular;
		};
		[_obj] call EAS_fnc_Rifleman;
	};
	case "EF_B_Marine_Exp_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_ExpSpec;
	};
	case "EF_B_Marine_Crew_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_CrewMan;
	};
	case "EF_B_Marine_BoatCrew_Des": {
		[_obj, "EF_29th_MEU_Color"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_CrewMan;
	};
	case "EF_B_Marine_Eng_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_boatCrewman;
	};
	case "EF_B_Marine_Repair_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_RepairSpec;
	};
	case "EF_B_Marine_AT_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_ATSpec;
	};
	case "EF_B_Marine_AAT_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_AATSpec;
	};
	case "EF_B_Marine_Mort_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "CORPORAL";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_MortarSpec;
	};
	case "EF_B_Marine_AMort_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_AMortarSpec;
	};
	case "EF_B_Marine_GMG_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_GMGSpec;
	};
	case "EF_B_Marine_HMG_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_HMGSpec;
	};
	case "EF_B_Marine_AMG_Des": {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
		[_obj] call EAS_fnc_AMGSpec;
	};
	default {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
	};
};