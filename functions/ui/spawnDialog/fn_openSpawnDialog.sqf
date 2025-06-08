// Function to open the dialog
createDialog "RscSpawnDialog";

    // get display and controls
private _display = findDisplay 5000;
private _unitList = _display displayCtrl 5002;

    // Populate unit list (placeholder data)
{
	_unitList lbAdd _x;
}
forEach [
	"Rifle Squad",
	"Weapons Team",
	"Recon Team",
	"AT Team",
	"Hunter HMG",
	"Marshall IFV",
	"Prowler AT",
	"Blackfoot"
];

//     // select first items
// _unitList lbSetCurSel 0;
// _deploymentList lbSetCurSel 0;