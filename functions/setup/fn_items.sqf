EAS_item_radio addAction [
	"Deploy Amphibious Assault Group",
	{
		params ["_target"];
		[_target] call EAS_fnc_deployAAG;
	}, nil, 1, true, false, "",
	"true", 10
];