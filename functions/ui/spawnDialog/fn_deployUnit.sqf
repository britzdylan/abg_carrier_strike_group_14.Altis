private _display = findDisplay 5000;
private _unitList = _display displayCtrl 5002;
private _deploymentList = _display displayCtrl 5003;

private _selectedUnit = lbCurSel _unitList;
private _selectedDeploy = lbCurSel _deploymentList;

if (_selectedUnit >= 0 && _selectedDeploy >= 0) then {
	hint format [
		"Deploying %1 to %2",
		_unitList lbText _selectedUnit,
		_deploymentList lbText _selectedDeploy
	];
};