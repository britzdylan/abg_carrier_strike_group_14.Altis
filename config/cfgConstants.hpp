class cfgInfantry {
    class USMC_Infantry_Squad
    {
        displayName = "USMC Infantry Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 36;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
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
        spawnLimit = 36;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
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
        callsigns[] {
            "Danger"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_GMG_Des", 
            "EF_B_Marine_AMG_Des"
        };
    };

    class USMC_Infantry_Mortar
    {
        displayName = "USMC Mortar Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Mike"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_Mort_Des", 
            "EF_B_Marine_AMort_Des"
        };
    };

    class USMC_Infantry_AT
    {
        displayName = "USMC AT Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Bravo"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_AT_Des", 
            "EF_B_Marine_AAT_Des"
        };
    };

    class USMC_Infantry_LAR
    {
        displayName = "USMC LAR Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 7;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
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
            "EF_B_Marine_Crew_Des"
            "EF_B_Marine_Crew_Des"
            "EF_B_Marine_Crew_Des"
        };
    };

    class USMC_Infantry_Engineer
    {
        displayName = "USMC Engineer Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 6;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Charlie"
        };
        unitClasses[] = {
            "EF_B_Marine_TL_Des", 
            "EF_B_Marine_Repair_Des"
            "EF_B_Marine_Eng_Des", 
            "EF_B_Marine_Eng_Des"
        };
    };

    class USMC_Infantry_MP
    {
        displayName = "USMC MP Squad";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 6;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
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
    };
};

class cfgCrewedVehicles {
    class USMC_mbt {
        displayName = "USMC MBT";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Bison",
        };
        className = "EF_B_MBT_01_TUSK_MJTF_Des";
    };
    class USMC_aav {
        displayName = "USMC AAV9 MACK";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 12;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Reaper",
        };
        className = "EF_B_AAV9_50mm_MJTF_Des";
    };
    class USMC_schorcher {
        displayName = "USMC M4 Schorcher";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 2;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Anvil",
        };
        className = "B_MBT_01_arty_F";
    };
    class USMC_medical {
        displayName = "USMC HEMTT Medical";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Hotel",
        };
        className = "EF_B_Truck_01_medical_MJTF_Des";
    };
    class USMC_transport {
        displayName = "USMC HEMTT Transport";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 12;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Romeo",
        };
        className = "EF_B_Truck_01_transport_MJTF_Des";
    };
    class USMC_ammo{
        displayName = "USMC HEMTT Ammo";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Able",
        };
        className = "EF_B_Truck_01_ammo_MJTF_Des";
    };
    class USMC_fuel {
        displayName = "USMC HEMTT Fuel";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Whiskey",
        };
        className = "EF_B_Truck_01_fuel_MJTF_Des";
    };
    class USMC_repair {
        displayName = "USMC HEMTT Repair";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 8;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Uniform",
        };
        className = "EF_B_Truck_01_Repair_MJTF_Des";
    };
    class USMC_mp_fsv {
        displayName = "USMC FSV";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 3;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Kilo",
        };
        className = "EF_B_MRAP_01_FSV_MJTF_Des";
    };
    class USMC_mp_laad {
        displayName = "USMC LAAD";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 3;
        image = "images\units\infantry_platoon.paa";
        callsigns[] {
            "Kilo",
        };
        className = "EF_B_MRAP_01_LAAD_MJTF_Des";
    };
};

class cfgAttachedVehicles {
    class USMC_amv {
        displayName = "USMC AMV 7 Marshal";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 7;
        image = "images\units\infantry_platoon.paa";
        className = "Aegis_B_MJTF_D_APC_Wheeled_01_atgm_v2";
    };
    class USMC_HunterAT {
        displayName = "USMC AT MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 4;
        image = "images\units\infantry_platoon.paa";
        className = "EF_B_MRAP_01_AT_MJTF_Des";
    };
};

class cfgSupportVehicles {
    class USMC_hunter {
        displayName = "USMC Unarmed MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 12;
        image = "images\units\infantry_platoon.paa";
        className = "EF_B_MRAP_01_MJTF_Des";
    };
    class USMC_hunter_gmg {
        displayName = "USMC GMG MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 9;
        image = "images\units\infantry_platoon.paa";
        className = "EF_B_MRAP_01_gmg_MJTF_Des";
    };
    class USMC_hunter_hmg {
        displayName = "USMC HMG MRAP";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 21;
        image = "images\units\infantry_platoon.paa";
        className = "EF_B_MRAP_01_hmg_MJTF_Des";
    };
    class USMC_hemtt_transport {
        displayName = "USMC HEMTT Transport";
        description = "Standard Marine rifle squad. Versatile assault infantry capable of sustained operations.";
        spawnLimit = 2;
        image = "images\units\infantry_platoon.paa";
        className = "EF_B_Truck_01_transport_MJTF_Des";
    };
};
