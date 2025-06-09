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
	case "EF_B_Marine_LAT_Des": {
		[_obj] call EF_B_Marine_LAT2_Des;
	};
	case "EF_B_Marine_GL_Des": {
		[_obj] call EAS_fnc_EF_B_Marine_TL_Des;
	};
	default {
		[_obj, "EF_29th_MEU_LowVis"] call BIS_fnc_setUnitInsignia;
		_obj setRank "PRIVATE";
		[_obj] call EAS_fnc_regular;
	};
};