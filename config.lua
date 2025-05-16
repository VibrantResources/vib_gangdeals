Config = Config or {}

Config.CoreInfo = {
    Debug = true,
}

Config.Deals = {
    {
        startingPed = { -- This is the ped that players speak to to initially set up the deal
            name = "Jamal",
            model = "a_m_m_afriamer_01",
            location = vector4(),
            animInfo = {
                active = true,
                dict = "amb@world_human_aa_smoke@male@idle_a",
                clip = "idle_c",
            },
            propInfo = {
                active = true,
                propModel = "prop_cs_ciggy_01",
                bone = 28422,
                placement = {x = 0.0, y = 0.0, z = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0,},
            },
        },
        dealLocation = {
            main = {
                dealPed = { -- This is the main ped that the player speaks to when arriving at the deal location
                    name = "Mr. Black",
                    model = "a_m_y_hasjew_01",
                    location = vector4(),
                    animInfo = {
                        active = true,
                        dict = "amb@world_human_aa_smoke@male@idle_a",
                        clip = "idle_c",
                    },
                    propInfo = {
                        active = true,
                        propModel = "prop_cs_ciggy_01",
                        bone = 28422,
                        placement = {x = 0.0, y = 0.0, z = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0,},
                    },
                },
            },
            AmountOfGuardPeds = 1, -- The amount of guards to spawn in the below table of locations
            guardPedLocations = { -- Make sure there's at least as many locations as there are guard peds
                vector4(),
            },
        },
    },
}