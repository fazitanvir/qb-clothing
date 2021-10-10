# qb-clothing (re-skin)
All Credits to go to the original creators/qbcore-framework repository

## Target info
   ``` 
-- Clothing
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
```
```
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
```
## Screenshot
![General](https://i.imgur.com/eZPBOKR.png)
