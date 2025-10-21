local mod = ...

mod:dofile("scripts/building_part.lua")


mod:registerAsset({
  DataType = "BUILDING",
  Id = "BUILDING_SEAFOOD_FISHERY",
  Name = "BUILDING_SEAFOOD_FISHERY_NAME",
  Description = "BUILDING_SEAFOOD_FISHERY_DESC",
  BuildingType = "RESOURCE_PRODUCTION",
  NavMeshLockCategory = "NONE",
  OptionalSubBuildingIcon = nil,
  AssetCoreBuildingPart = "BUILDING_PART_FISHERS_HUT", -- Fix custom building_part and graphics
  AssetBuildingPartList = {
    -- Add specific building parts for the seafood fishery here
  },
  AssetBuildingFunction = "BUILDING_FUNCTION_ASSIGNABLE_SEAFOOD_FISHERY",
  RequiredPartList = {
    {
      OptionalSpecificBuildingPart = "BUILDING_PART_FISHERS_HUT",
    }
  }
})


mod:registerAsset({
  DataType = "BUILDING_FUNCTION_ASSIGNABLE",
  Id = "BUILDING_FUNCTION_ASSIGNABLE_SEAFOOD_FISHERY",

  -- BUILDING_FUNCTION properties
  Name = "BUILDING_FUNCTION_ASSIGNABLE_SEAFOOD_FISHERY_NAME",
  NamePluralKey = "BUILDING_FUNCTION_ASSIGNABLE_SEAFOOD_FISHERY_NAME_PLURAL",
  Description = "BUILDING_FUNCTION_ASSIGNABLE_SEAFOOD_FISHERY_DESC",

  -- BUILDING_FUNCTION_ASSIGNABLE properties
  AuthorizedFunctionList = "ASSIGNABLE_BUILDING_FUNCTION_LIST_SEAFOOD_FISHERY"
})

mod:registerAsset({
  DataType = "ASSIGNABLE_BUILDING_FUNCTION_LIST",
  Id = "ASSIGNABLE_BUILDING_FUNCTION_LIST_SEAFOOD_FISHERY",
  AssetFunctionList = {
    "BUILDING_FUNCTION_SEAFOOD_FISHERY_CRABS",
    "BUILDING_FUNCTION_SEAFOOD_FISHERY_SHRIMPS",
    "BUILDING_FUNCTION_SEAFOOD_FISHERY_LOBSTERS"
  }
})

mod:registerAsset({
  DataType = "BUILDING_FUNCTION_ASSIGNABLE",
  Id = "BUILDING_FUNCTION_SEAFOOD_FISHERY_CRABS",

  -- BUILDING_FUNCTION properties
  Name = "BUILDING_FUNCTION_SEAFOOD_FISHERY_CRABS_NAME",
  NamePluralKey = "BUILDING_FUNCTION_SEAFOOD_FISHERY_CRABS_NAME_PLURAL",
  Description = "BUILDING_FUNCTION_SEAFOOD_FISHERY_CRABS_DESC",
  -- UpkeepPerCapacity = {}, -- Maybe not needed?

  -- BUILDING_FUNCTION_WORKPLACE properties
  WorkerCapacity = 2,
  OutputCapacity = 50,
  UpkeepPerWorker = {
    {
      Resource = "GOLD_COINS",
      Quantity = 5
    }
  },
  RelatedJob = {
    DataType = "ASSOCIATION_JOB_BEHAVIOR",
    Job = "JOB_FISHERMAN",
    Behavior = "BEHAVIOR_WORK"
  },
  CanAssignWorkerAutomatically = false,
  ProductionCycleDurationInSec = 20.0, -- 20.0 is the default
  WorkCycleNeededToProduceOnce = 1, -- 1 is the default
  ResourceProduced = {
    {
      Resource = "RESOURCE_CRAB",
      Quantity = 1
    }
  }
})


mod:registerAsset({
  DataType = "BUILDING_FUNCTION_ASSIGNABLE",
  Id = "BUILDING_FUNCTION_SEAFOOD_FISHERY_SHRIMPS",

  -- BUILDING_FUNCTION properties
  Name = "BUILDING_FUNCTION_SEAFOOD_FISHERY_SHRIMPS_NAME",
  NamePluralKey = "BUILDING_FUNCTION_SEAFOOD_FISHERY_SHRIMPS_NAME_PLURAL",
  Description = "BUILDING_FUNCTION_SEAFOOD_FISHERY_SHRIMPS_DESC",
  -- UpkeepPerCapacity = {}, -- Maybe not needed?

  -- BUILDING_FUNCTION_WORKPLACE properties
  WorkerCapacity = 2,
  OutputCapacity = 50,
  UpkeepPerWorker = {
    {
      Resource = "GOLD_COINS",
      Quantity = 10
    }
  },
  RelatedJob = {
    DataType = "ASSOCIATION_JOB_BEHAVIOR",
    Job = "JOB_FISHERMAN",
    Behavior = "BEHAVIOR_WORK"
  },
  CanAssignWorkerAutomatically = false,
  ProductionCycleDurationInSec = 30.0, -- 20.0 is the default
  WorkCycleNeededToProduceOnce = 1, -- 1 is the default
  ResourceProduced = {
    {
      Resource = "RESOURCE_SHRIMP",
      Quantity = 1
    }
  }
})


mod:registerAsset({
  DataType = "BUILDING_FUNCTION_ASSIGNABLE",
  Id = "BUILDING_FUNCTION_SEAFOOD_FISHERY_LOBSTERS",

  -- BUILDING_FUNCTION properties
  Name = "BUILDING_FUNCTION_SEAFOOD_FISHERY_LOBSTERS_NAME",
  NamePluralKey = "BUILDING_FUNCTION_SEAFOOD_FISHERY_LOBSTERS_NAME_PLURAL",
  Description = "BUILDING_FUNCTION_SEAFOOD_FISHERY_LOBSTERS_DESC",
  -- UpkeepPerCapacity = {}, -- Maybe not needed?

  -- BUILDING_FUNCTION_WORKPLACE properties
  WorkerCapacity = 2,
  OutputCapacity = 50,
  UpkeepPerWorker = {
    {
      Resource = "GOLD_COINS",
      Quantity = 15
    }
  },
  RelatedJob = {
    DataType = "ASSOCIATION_JOB_BEHAVIOR",
    Job = "JOB_FISHERMAN",
    Behavior = "BEHAVIOR_WORK"
  },
  CanAssignWorkerAutomatically = false,
  ProductionCycleDurationInSec = 40.0, -- 20.0 is the default
  WorkCycleNeededToProduceOnce = 1, -- 1 is the default
  ResourceProduced = {
    {
      Resource = "RESOURCE_LOBSTER",
      Quantity = 1
    }
  }
})
