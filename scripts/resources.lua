local mod = ...

 -- Fix custom graphics for icons
 mod:registerAssetId("icons/crab.png", "ICON_RESOURCE_CRAB", "ATLAS_CELL")
 mod:registerAssetId("icons/shrimp.png", "ICON_RESOURCE_SHRIMP", "ATLAS_CELL")
 mod:registerAssetId("icons/lobster.png", "ICON_RESOURCE_LOBSTER", "ATLAS_CELL")
 
 -- Existing RESOURCE_TYPE:s
 -- RESOURCE_FOOD (raw food)
 -- FOOD (for Serfs)
 -- FOOD_ADVANCED (for Commoners)
 -- LUXURY_FOOD (for Citizens)
 
 mod:registerAsset({
   DataType = "RESOURCE",
   Id = "RESOURCE_CRAB",
   ResourceName = "RESOURCE_CRAB_NAME",
   Icon = "ICON_RESOURCE_CRAB",
   ResourceTypeList = {
     "FOOD"
   },
   ResourceLayoutType = "BASKET",
   IsTradable = false, -- Fix trading later
   DisplayInToolbar = true,
   ResourceVisualPrefabList = {
     "PREFAB_RESOURCE_VISUAL_FISH" -- Fix custom graphics
     -- "PREFAB_CRAB_1",
     -- "PREFAB_CRAB_2",
     -- "PREFAB_CRAB_3",
   },
   IndividualResourceVisualPrefabList = {
     "PREFAB_RESOURCE_VISUAL_FISH" -- Fix custom graphics
     -- "PREFAB_SINGLE_CRAB_1",
     -- "PREFAB_SINGLE_CRAB_2",
     -- "PREFAB_SINGLE_CRAB_3",
   },
   IsOnWater = true -- I'm guessing we need this to work on water?
 })
 
 mod:registerAsset({
   DataType = "RESOURCE",
   Id = "RESOURCE_SHRIMP",
   ResourceName = "RESOURCE_SHRIMP_NAME",
   Icon = "ICON_RESOURCE_SHRIMP",
   ResourceTypeList = {
     "FOOD_ADVANCED"
   },
   ResourceLayoutType = "BASKET",
   IsTradable = false, -- Fix trading later
   DisplayInToolbar = true,
   ResourceVisualPrefabList = {
     "PREFAB_RESOURCE_VISUAL_FISH" -- Fix custom graphics
     -- "PREFAB_SHRIMP_1",
     -- "PREFAB_SHRIMP_2",
     -- "PREFAB_SHRIMP_3",
   },
   IndividualResourceVisualPrefabList = {
     "PREFAB_RESOURCE_VISUAL_FISH" -- Fix custom graphics
     -- "PREFAB_SINGLE_SHRIMP_1",
     -- "PREFAB_SINGLE_SHRIMP_2",
     -- "PREFAB_SINGLE_SHRIMP_3",
   },
   IsOnWater = true -- I'm guessing we need this to work on water?
 })
 
 mod:registerAsset({
   DataType = "RESOURCE",
   Id = "RESOURCE_LOBSTER",
   ResourceName = "RESOURCE_LOBSTER_NAME",
   Icon = "ICON_RESOURCE_LOBSTER",
   ResourceTypeList = {
     "LUXURY_FOOD"
   },
   ResourceLayoutType = "BASKET",
   IsTradable = false, -- Fix trading later
   DisplayInToolbar = true,
   ResourceVisualPrefabList = {
     "PREFAB_RESOURCE_VISUAL_FISH" -- Fix custom graphics
     -- "PREFAB_LOBSTER_1",
     -- "PREFAB_LOBSTER_2",
     -- "PREFAB_LOBSTER_3",
   },
   IndividualResourceVisualPrefabList = {
     "PREFAB_RESOURCE_VISUAL_FISH" -- Fix custom graphics
     -- "PREFAB_SINGLE_LOBSTER_1",
     -- "PREFAB_SINGLE_LOBSTER_2",
     -- "PREFAB_SINGLE_LOBSTER_3",
   },
   IsOnWater = true -- I'm guessing we need this to work on water?
 })