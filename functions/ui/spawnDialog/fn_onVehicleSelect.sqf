params ["_control", "_selectedIndex"];

private _display = findDisplay 4000;
private _infoCtrl = _display displayCtrl 4005;
private _missionData = missionNamespace getVariable ["EAS_missionData", createHashMap];

// get the preset name from stored data
private _className = _control lbData _selectedIndex;

if (_className == "") exitWith {
	_infoCtrl ctrlSetStructuredText parseText "<t color='#ffaa00'>No loadout selected</t>";
};

// get config data
private _config = (_missionData get "cfgVehicles") get _className;

if ((_config isEqualTo createHashMap)) exitWith {
	_infoCtrl ctrlSetStructuredText parseText format ["<t color='#ff4444'>Config Error</t><br/>Loadout '%1' not found", _className];
	_statusCtrl ctrlSetText "Status: Configuration Error";
};

// Extract all config data
private _displayName = _config get "displayName";
private _description = _config get "description";
private _spawnLimit = _config get "spawnLimit";
private _image = _config get "image";
private _type = _config get "type";

// format info display
private _infoText = format [
	"<t color='#ffffff'>%1</t><br/>" +
	"<t color='#ffffff'>Type:</t> <t color='#aaaaff'>%2</t><br/>" +
	"<t color='#ffffff'>Reserve:</t> <t color='#aaaaff'>%3</t><br/>" +
	"<t color='#ffffff'>Description:</t> <t color='#cccccc'>%4</t><br/><br/>",
	_displayName,
	_type,
	_spawnLimit,
	if (_description != "") then {
		_description
	} else {
		"No description available"
	}
];
_infoCtrl ctrlSetStructuredText parseText _infoText;