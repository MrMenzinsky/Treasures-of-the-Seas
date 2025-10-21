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


-- Resources and their assets (icons)
mod:dofile("scripts/resources.lua")

-- Building and related functions
mod:dofile("scripts/building.lua")