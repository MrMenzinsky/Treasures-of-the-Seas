local mod = foundation.createMod();

-- Read in assets and prefabs
-- mod:registerAssetProcessor("models/Seafood.fbx", {
--   DataType = "BUILDING_ASSET_PROCESSOR"
-- })

-- CRABS --
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Crab_1", "PREFAB_CRAB_1")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Crab_2", "PREFAB_CRAB_2")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Crab_3", "PREFAB_CRAB_3")

-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Crab_1", "PREFAB_SINGLE_CRAB_1")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Crab_2", "PREFAB_SINGLE_CRAB_2")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Crab_3", "PREFAB_SINGLE_CRAB_3")

-- SHRIMPS --
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Shrimp_1", "PREFAB_SHRIMP_1")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Shrimp_2", "PREFAB_SHRIMP_2")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Shrimp_3", "PREFAB_SHRIMP_3")

-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Shrimp_1", "PREFAB_SINGLE_SHRIMP_1")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Shrimp_2", "PREFAB_SINGLE_SHRIMP_2")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Shrimp_3", "PREFAB_SINGLE_SHRIMP_3")

-- LOBSTERS --
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Lobster_1", "PREFAB_LOBSTER_1")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Lobster_2", "PREFAB_LOBSTER_2")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Lobster_3", "PREFAB_LOBSTER_3")

-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Lobster_1", "PREFAB_SINGLE_LOBSTER_1")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Lobster_2", "PREFAB_SINGLE_LOBSTER_2")
-- mod:registerAssetId("models/Seafood.fbx/Prefab/Single_Lobster_3", "PREFAB_SINGLE_LOBSTER_3")


-- Custom icon for the Seafood Fishery unlockable
-- mod:registerAssetId("icons/icon_unlockable_seafood_fishery.png", "ICON_UNLOCKABLE_SEAFOOD_FISHERY", "ATLAS_CELL")


-- Resources and their assets (icons)
mod:dofile("scripts/resources.lua")

-- Building and related functions
mod:dofile("scripts/building.lua")


-- Register the Seafood Fishery in Common Tier 2
mod:overrideAsset({
  Id = "PROGRESS_TIER_COMMON_T2",
  UnlockableList = {
    Action = "APPEND",
    "UNLOCKABLE_COMMON_SEAFOOD_FISHERY_PRODUCTION"
  }
})


-- Unlockable Technology for the Seafood Fishery
mod:registerAsset({
  DataType = "UNLOCKABLE_TECHNOLOGY",
  Id = "UNLOCKABLE_COMMON_SEAFOOD_FISHERY_PRODUCTION",
  Name = "UNLOCKABLE_COMMON_SEAFOOD_FISHERY_PRODUCTION_NAME",
  Description = "UNLOCKABLE_COMMON_SEAFOOD_FISHERY_PRODUCTION_DESC",
  OptionalNameParameter = "UNLOCKABLE_COMMON_SEAFOOD_FISHERY_PRODUCTION_NAME_OPTIONAL",
  BoughtText = "UNLOCKABLE_COMMON_SEAFOOD_FISHERY_PRODUCTION_BOUGHT",
  DataCost = {
    DataInfluenceCostList = {},
    ResourceCollection = {
      {
        Resource = "GOLD_COINS",
        Quantity = 50
      }
    }
  },
  PrerequisiteUnlockableList = {
    "UNLOCKABLE_COMMON_FISHING_PRODUCTION"
  },
  IsMajor = false,
  ActionList = {
    {
      DataType = "GAME_ACTION_UNLOCK_BUILDING_LIST",
      BuildingProgressData = {
        DataType = "BUILDING_PROGRESS",
        UnlockName = "UNLOCKNAME_BUILDING_SEAFOOD_FISHERY",
        AssetBuildingList = {
          "BUILDING_SEAFOOD_FISHERY"
        },
        AdditionalBuildingUnlockList = {},
        AssetBuildingFunctionList = {},
        DataEstateDecorationList = {}
      }
    }
  },
  UnlockableImage = "ICON_UNLOCKABLE_FISHING" -- Placeholder icon
  -- UnlockableImage = "ICON_UNLOCKABLE_SEAFOOD_FISHERY" -- Fix custom graphics
})
