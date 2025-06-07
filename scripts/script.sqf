player addAction [
	"Request Reinforcements",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		[position _caller] call EAS_fnc_openSpawnDialog;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"alive _this"
];