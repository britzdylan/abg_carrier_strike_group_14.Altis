params ["_control", "_selectedIndex"];

private _display = findDisplay 5000;
private _infoCtrl = _display displayCtrl 5005;
private _statusCtrl = _display displayCtrl 5008;

    // Update info (placeholder)
_infoCtrl ctrlSetStructuredText parseText format [
	"• Unit Type: %1<br/>• Squad Size: 6<br/>• Equipment: Standard<br/>• Special: AT capability<br/>• Cost: 100 points",
	_control lbText _selectedIndex
];

    // Update status (placeholder)
_statusCtrl ctrlSetText format ["Available: 3\nDeployed: 1\nReady"];