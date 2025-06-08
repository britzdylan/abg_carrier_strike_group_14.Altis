import RscObject;
import RscText;
import RscFrame;
import RscLine;
import RscProgress;
import RscPicture;
import RscPictureKeepAspect;
import RscVideo;
import RscHTML;
import RscButton;
import RscShortcutButton;
import RscEdit;
import RscCombo;
import RscListBox;
import RscListNBox;
import RscXListBox;
import RscTree;
import RscSlider;
import RscXSliderH;
import RscActiveText;
import RscActivePicture;
import RscActivePictureKeepAspect;
import RscStructuredText;
import RscToolbox;
import RscControlsGroup;
import RscControlsGroupNoScrollbars;
import RscControlsGroupNoHScrollbars;
import RscControlsGroupNoVScrollbars;
import RscButtonTextOnly;
import RscButtonMenu;
import RscButtonMenuOK;
import RscButtonMenuCancel;
import RscButtonMenuSteam;
import RscMapControl;
import RscMapControlEmpty;
import RscCheckBox;
// Control IDs
#define IDD_SPAWN_DIALOG 5000
#define IDC_TITLE 5001
#define IDC_UNIT_LIST 5002
#define IDC_DEPLOYMENT_LIST 5003
#define IDC_UNIT_IMAGE 5004
#define IDC_UNIT_INFO 5005
#define IDC_STATIC_BUTTON 5006
#define IDC_UNIT_STATUS 5007
#define IDC_STATUS_AREA 5008
#define IDC_DEPLOY_BUTTON 5009
#define IDC_CLOSE_BUTTON 5010

class RscSpawnDialog
{
    idd = IDD_SPAWN_DIALOG;
    movingEnable = true;
    enableSimulation = true;
    
    class ControlsBackground
    {
        // Main background
        class MainBackground: RscText
        {
            idc = -1;
            x = 0;
            y = 0;
            w = 1;
            h = 1;
            colorBackground[] = {0.1,0.1,0.1,0.95};
        };
        
        // Title bar
        class TitleBar: RscText
        {
            idc = IDC_TITLE;
            text = "Title";
            x = 0;
            y = 0;
            w = 1;
            h = 0.04;
            colorBackground[] = {0.2,0.2,0.2,1};
        };
        
        // Left panel background
        class LeftPanelBG: RscText
        {
            idc = -1;
            x = 0.01;
            y = 0.05;
            w = 0.64;
            h = 0.95;
            colorBackground[] = {0.15,0.15,0.15,1};
        };

        
        // Right panel background
        class RightPanelBG: RscText
        {
            idc = -1;
            x = 0.66;
            y = 0.05;
            w = 0.33;
            h = 0.95;
            colorBackground[] = {0.15,0.15,0.15,1};
        };
    };
    
    class Controls
    {
        // Left panel - List of units
        class UnitList: RscListBox
        {
            idc = IDC_UNIT_LIST;
            x = 0.01;
            y = 0.05;
            w = 0.64;
            h = 0.95;
            sizeEx = 0.032;
            onLBSelChanged = "[] call EAS_fnc_onUnitSelect;";
        };
        
        // Right panel - Unit image
        class UnitImage: RscPicture
        {
            idc = IDC_UNIT_IMAGE;
            text = "\a3\ui_f\data\gui\rsc\rscdisplayarsenal\face_ca.paa"; // Placeholder image
            x = 0.66;
            y = 0.05;
            w = 0.33;
            h = 0.33;
            style = ST_PICTURE;
            colorBackground[] = {0.2,0.2,0.2,1};
        };
        
        // Unit information
        class UnitInfo: RscStructuredText
        {
            idc = IDC_UNIT_INFO;
            x = 0.66;
            y = 0.38;
            w = 0.33;
            h = 0.15;
            size = 0.03;
            style = ST_MULTI;
            colorBackground[] = {0.2,0.2,0.2,1};
            text = "• Long list of unit information and stats<br/>and specs";
            class Attributes
            {
                font = "RobotoCondensed";
                color = "#ffffff";
                align = "left";
                shadow = 1;
            };
        };
        
        // Status area
        class StatusArea: RscStructuredText
        {
            idc = IDC_STATUS_AREA;
            text = "Status of the unit";
            x = 0.66;
            y = 0.58;
            w = 0.33;
            h = 0.20;
            style = ST_MULTI;
            colorBackground[] = {0.2,0.2,0.2,1};
            sizeEx = 0.03;
        };
        
        // // Deploy button
        class DeployButton: RscButton
        {
            idc = IDC_DEPLOY_BUTTON;
            text = "Deploy";
            x = 0.66;
            y = 0.79;
            w = 0.33;
            h = 0.04;
            colorBackground[] = {0.2,0.3,0.8,1};
            colorBackgroundActive[] = {0.3,0.4,0.9,1};
            colorFocused[] = {0.3,0.4,0.9,1};
            onButtonClick = "[] call EAS_fnc_deployUnit;";
        };
        
        // // Close button
        class CloseButton: RscButton
        {
            idc = IDC_CLOSE_BUTTON;
            text = "Close";
            x = 0.66;
            y = 0.84;
            w = 0.33;
            h = 0.04;
            colorBackground[] = {0.4,0.4,0.4,1};
            colorBackgroundActive[] = {0.5,0.5,0.5,1};
            colorFocused[] = {0.5,0.5,0.5,1};
            onButtonClick = "closeDialog 0;";
        };
    };
};