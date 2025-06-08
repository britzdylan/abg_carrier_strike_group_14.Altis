// Function to open the dialog
params ["_validLoadOptions"];
createDialog "RscSpawnDialog";

    // get display and controls
private _display = findDisplay 5000;
private _unitList = _display displayCtrl 5002;

{
	private _index = _unitList lbAdd (_x select 0);
	_unitList lbSetData [_index, (_x select 1)];
}
forEach _validLoadOptions;