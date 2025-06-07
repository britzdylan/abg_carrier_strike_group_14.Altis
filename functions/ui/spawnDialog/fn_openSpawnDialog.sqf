// Function to open the dialog
createDialog "RscSpawnDialog";

    // get display and controls
private _display = findDisplay 5000;
private _unitList = _display displayCtrl 5002;
private _deploymentList = _display displayCtrl 5003;

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

    // Populate deployment options (placeholder data)
{
	_deploymentList lbAdd _x;
}
forEach [
	"Alpha Landing Zone",
	"Bravo Landing Zone",
	"Charlie Landing Zone",
	"Base Main Entrance",
	"North Checkpoint",
	"South Checkpoint"
];

//     // select first items
// _unitList lbSetCurSel 0;
// _deploymentList lbSetCurSel 0;