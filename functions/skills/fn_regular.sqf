params ["_unit"];
_baseSkill = 0;
if (((_unit getVariable "EAS_unit") isEqualTo "LAR")) then {
	_baseSkill = 0.1;
} else {
	_baseSkill = 0;
};

_unit setSkill ["general", (0.8 + _baseSkill)];
_unit setSkill ["courage", (0.8 + _baseSkill)];
_unit setSkill ["aimingAccuracy", (0.6 + _baseSkill)];
_unit setSkill ["aimingShake", (0.6 + _baseSkill)];
_unit setSkill ["aimingSpeed", (0.6 + _baseSkill)];
_unit setSkill ["commanding", (0.4 + _baseSkill)];
_unit setSkill ["spotDistance", (0.6 + _baseSkill)];
_unit setSkill ["spotTime", (0.6 + _baseSkill)];
_unit setSkill ["reloadSpeed", (0.5 + _baseSkill)];