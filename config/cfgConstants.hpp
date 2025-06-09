class cfgInfantry {
    class USMC_Infantry_Squad
    {
        displayName = "USMC Infantry Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 27;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Echo",
            "Gulf",
            "Fox"
        };
        unitClasses[] = {
            "EF_B_Marine_SL_Des", 
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_Medic_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_Mark_Des",
            "EF_B_Marine_Mark_Des"
        };
    };

    class USMC_Infantry_Weapons
    {
        displayName = "USMC Weapons Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 9;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Echo",
            "Gulf",
            "Fox"
        };
        unitClasses[] = {
            "EF_B_Marine_SL_Des", 
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_Medic_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_Mark_Des",
            "EF_B_Marine_Mark_Des"
        };
    };
    
    class USMC_Infantry_HMG
    {
        displayName = "USMC HMG Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 6;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Danger"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_GMG_Des", 
            "EF_B_Marine_AMG_Des"
        };
        attached[] = {
            "USMC_hunter"
        };
    };

    class USMC_Infantry_Mortar
    {
        displayName = "USMC Mortar Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Mike"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_Mort_Des", 
            "EF_B_Marine_AMort_Des"
        };
        attached[] = {
            "USMC_hunter"
        };
    };

    class USMC_Infantry_AT
    {
        displayName = "USMC AT Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Bravo"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_AT_Des", 
            "EF_B_Marine_AAT_Des"
        };
        attached[] = {
            "USMC_HunterAT"
        };
    };

    class USMC_Infantry_LAR
    {
        displayName = "USMC LAR Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 7;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Sierra"
        };
        unitClasses[] = {
            "EF_B_Marine_SL_Des", 
            "EF_B_Marine_Medic_Des", 
            "EF_B_Marine_AR_Des",
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_Mark_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_Exp_Des",
            "EF_B_Marine_Crew_Des",
            "EF_B_Marine_Crew_Des",
            "EF_B_Marine_Crew_Des"
        };
        attached[] = {
            "USMC_amv"
        };
    };

    class USMC_Infantry_Engineer
    {
        displayName = "USMC Engineer Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 6;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Charlie"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_Repair_Des",
            "EF_B_Marine_Eng_Des", 
            "EF_B_Marine_Eng_Des"
        };
        attached[] = {
            "USMC_hunter_hmg"
        };
    };

    class USMC_Infantry_MP
    {
        displayName = "USMC MP Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 1;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Kilo"
        };
        unitClasses[] = {
            "EF_B_Marine_SL_Des",
            "EF_B_Marine_SL_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_R_Des", 
            "EF_B_Marine_LAT_Des", 
            "EF_B_Marine_LAT_Des", 
            "EF_B_Marine_Mark_Des", 
            "EF_B_Marine_Mark_Des", 
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_AR_Des", 
            "EF_B_Marine_Medic_Des",
            "EF_B_Marine_Medic_Des"
        };
        attached[] = {
            "USMC_hemtt_transport"
        };
    };
};

// can spawn alone or with a squad
class cfgVehicles {
     class Aegis_B_MJTF_D_APC_Wheeled_01_atgm_v2 {
        displayName = "USMC AMV 7 Marshal";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 7;
        image = "images\units\infantry_platoon.paa";
        type = "attached";
    };
    class EF_B_MRAP_01_AT_MJTF_Des {
        displayName = "USMC AT MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        type = "attached";
    };
    // empty
    class EF_B_MRAP_01_MJTF_Des  {
        displayName = "USMC Unarmed MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 12;
        image = "images\units\infantry_platoon.paa";
        type = "empty";
    };
    class EF_B_MRAP_01_gmg_MJTF_Des  {
        displayName = "USMC GMG MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 9;
        image = "images\units\infantry_platoon.paa";
        type = "empty";
    };
    class EF_B_MRAP_01_hmg_MJTF_Des  {
        displayName = "USMC HMG MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 21;
        image = "images\units\infantry_platoon.paa";
        type = "empty";
    };
    class EF_B_Truck_01_transport_MJTF_Des  {
        displayName = "USMC HEMTT Transport";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 2;
        image = "images\units\infantry_platoon.paa";
        type = "empty";
    };
    // crewed
     class EF_B_MBT_01_TUSK_MJTF_Des {
        displayName = "USMC MBT";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Bison",
        };
        type = "crewed";
    };
    class EF_B_AAV9_50mm_MJTF_Des {
        displayName = "USMC AAV9 MACK";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 12;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Reaper",
        };
        type = "crewed";
    };
    class B_MBT_01_arty_F {
        displayName = "USMC M4 Schorcher";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 2;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Anvil",
        };
        type = "crewed";
    };
    class EF_B_Truck_01_medical_MJTF_Des {
        displayName = "USMC HEMTT Medical";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Hotel",
        };
        type = "crewed";
    };
    class EF_B_Truck_01_transport_MJTF_Des {
        displayName = "USMC HEMTT Transport";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 12;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Romeo",
        };
        type = "crewed";
    };
    class EF_B_Truck_01_ammo_MJTF_Des{
        displayName = "USMC HEMTT Ammo";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Able",
        };
        type = "crewed";
    };
    class EF_B_Truck_01_fuel_MJTF_Des {
        displayName = "USMC HEMTT Fuel";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Whiskey",
        };
        type = "crewed";
    };
    class EF_B_Truck_01_Repair_MJTF_Des {
        displayName = "USMC HEMTT Repair";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Uniform",
        };
        type = "crewed";
    };
    class EF_B_MRAP_01_FSV_MJTF_Des {
        displayName = "USMC FSV";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 3;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Kilo",
        };
        type = "crewed";
    };
    class EF_B_MRAP_01_LAAD_MJTF_Des {
        displayName = "USMC LAAD";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 3;
        image = "images\units\infantry_platoon.paa";
        callsigns[] = {
            "Kilo",
        };
        type = "crewed";
    };
};

// load options
class cfgRotorWings {
    class B_Heli_Transport_03_F {
        capacity = 16;
        loadOptions[] = {
            "USMC_Infantry_Squad",
            "USMC_Infantry_Weapons",
            "USMC_Infantry_HMG",
            "USMC_Infantry_Mortar",
            "USMC_Infantry_AT"
        };
    };

    class B_Heli_EC_04_military_RF {
        capacity = 20;
        loadOptions[] = {
            "USMC_Infantry_Squad",
            "USMC_Infantry_Weapons",
            "USMC_Infantry_HMG",
            "USMC_Infantry_Mortar",
            "USMC_Infantry_AT"
        };
    };

     class EF_B_Heli_Transport_01_MJTF_Des {
        capacity = 8;
        loadOptions[] = {
            "USMC_Infantry_HMG",
            "USMC_Infantry_Mortar",
            "USMC_Infantry_AT"
        };
    };
};

class cfgShips {
    class EF_B_LCC_MJTF_Des {
        displayName = "";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 12;
        image = "images\units\infantry_platoon.paa";
        loadOptions[] = {
            "EF_B_MRAP_01_MJTF_Des",
            "EF_B_MRAP_01_gmg_MJTF_Des",
            "EF_B_MRAP_01_hmg_MJTF_Des",
            "EF_B_Truck_01_transport_MJTF_Des"
        };
    };
};
