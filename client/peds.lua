--========================== qb-target
    local peds = {
        `a_f_y_bevhills_02`,
    }
    exports['qb-target']:AddTargetModel(peds, {
        options = {
            {
                event = "doj:client:OpenClothes",
                icon = "fas fa-tshirt",
                label = "Change Clothing", 
            },
            {
                event = "qb-clothing:client:openOutfitMenu",
                icon = "fas fa-person-booth",
                label = "Select an Outfit", 
            },
        },
        distance = 10.0
    }) 

    --Barber
    local Barber = {
        `v_serv_bs_clutter`,
    }
    exports['qb-target']:AddTargetModel(Barber, {
        options = {
            {
                event = "doj:client:OpenBarber",
                icon = "fas fa-cut",
                label = "Access Barber Shop", 
            },
        },
        distance = 4.0
    })

--===================================== Clothing

-- Tattoo Shops
local Barber = {
  {1324.855, -1650.462, 51.275,"Tattoo",132.527,0x94AE2B8C,"u_m_y_tattoo_01"},
  {-1151.813, -1424.01, 3.954,"Tattoo",118.299,0x94AE2B8C,"u_m_y_tattoo_01"},
  {319.726, 181.242, 102.586,"Tattoo",248.22,0x94AE2B8C,"u_m_y_tattoo_01"},
  {-3170.764, 1072.978, 19.829,"Tattoo",331.763,0x94AE2B8C,"u_m_y_tattoo_01"},
  {1862.403, 3747.604, 32.032,"Tattoo",337.085,0x94AE2B8C,"u_m_y_tattoo_01"},
  {-292.272, 6200.646, 30.487,"Tattoo",154.088,0x94AE2B8C,"u_m_y_tattoo_01"},
  {-1220.706, -1430.603, 3.332,"Tattoo",210.635,0x94AE2B8C,"u_m_y_tattoo_01"},
  {-1114.473, -1656.324, 3.439,"Tattoo",142.741,0x94AE2B8C,"u_m_y_tattoo_01"},


}

Citizen.CreateThread(function()

  for _,v in pairs(Tattoo) do
    RequestModel(GetHashKey(v[7]))
    while not HasModelLoaded(GetHashKey(v[7])) do
      Wait(1)
    end

    RequestAnimDict("amb@world_human_stand_impatient@male@no_sign@base")
    while not HasAnimDictLoaded("amb@world_human_stand_impatient@male@no_sign@base") do
      Wait(1)
    end
    ped1 =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
    SetEntityHeading(ped1, v[5])
    FreezeEntityPosition(ped1, true)
    SetEntityInvincible(ped1, true)
    SetBlockingOfNonTemporaryEvents(ped1, true)
    TaskPlayAnim(ped1,"amb@world_human_stand_impatient@male@no_sign@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
  end
end)

-- ClothingShops
local ClothingPed= {
  {199.739, -870.535, 29.713 ,"ClothingShops",159.902,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {427.323, -806.644, 28.491 ,"ClothingShops",88.498,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {-165.295, -302.752, 38.733 ,"ClothingShops",251.737,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {73.647, -1392.633, 28.376 ,"ClothingShops",265.891,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {-822.959, -1071.952, 10.328 ,"ClothingShops",206.783,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {-1448.765, -238.29, 48.814 ,"ClothingShops",45.003,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {5.656, 6510.81, 30.878 ,"ClothingShops",38.765,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {1197.138, 2711.822, 37.223 ,"ClothingShops",180.145,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {-1102.399, 2712.019, 18.108 ,"ClothingShops",221.885,0x5C2CF7F8,"a_f_y_bevhills_02"}, 
  {1695.56, 4822.664, 41.063 ,"ClothingShops",98.077,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {-708.62, -151.693, 36.415 ,"ClothingShops",113.755,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {1100.317, 195.453, -50.44 ,"ClothingShops",309.954,0x5C2CF7F8,"a_f_y_bevhills_02"},
  {922.60, 21.42, 70.83 ,"ClothingShops",309.954,0x5C2CF7F8,"a_f_y_bevhills_02"}, 
  -- {-1194.396, -766.909, 16.316 ,"Hospital",211.639,0x5C2CF7F8,"a_f_y_bevhills_02"}, --arcade
  -- {612.648, 2762.946, 41.088 ,"Hospital",270.184,0x5C2CF7F8,"a_f_y_bevhills_02"}, --arcade
  -- {127.289, -224.296, 53.558 ,"Hospital",70.455,0x5C2CF7F8,"a_f_y_bevhills_02"}, --arcade
  -- {-3169.292, 1042.974, 19.863 ,"Hospital",62.815,0x5C2CF7F8,"a_f_y_bevhills_02"}, --arcade

}

Citizen.CreateThread(function()

  for _,v in pairs(ClothingPed) do
    RequestModel(GetHashKey(v[7]))
    while not HasModelLoaded(GetHashKey(v[7])) do
      Wait(1)
    end

    RequestAnimDict("amb@world_human_stand_mobile@male@text@base")
    while not HasAnimDictLoaded("amb@world_human_stand_mobile@male@text@base") do
      Wait(1)
    end
    ped9 =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
    SetEntityHeading(ped9, v[5])
    FreezeEntityPosition(ped9, true)
    SetEntityInvincible(ped9, true)
    SetBlockingOfNonTemporaryEvents(ped9, true)
    TaskPlayAnim(ped9,"amb@world_human_stand_mobile@male@text@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
  end
end)
