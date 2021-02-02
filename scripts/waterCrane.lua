--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                  SUPPLEMENTARY FILE                  | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                WATER CRANE DEFINITION                | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local waterCrane = ...

--[[--------------------------- PREFABS & MATERIALS ---------------------------]]--

waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMainPart", "PREFAB_GEAR_MAIN_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMainFrontPart", "PREFAB_GEAR_MAIN_FRONT_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMainBackPart", "PREFAB_GEAR_MAIN_BACK_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearTopPart", "PREFAB_GEAR_TOP_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearTopFrontPart", "PREFAB_GEAR_TOP_FRONT_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearTopBackPart", "PREFAB_GEAR_TOP_BACK_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMiddlePart", "PREFAB_GEAR_MIDDLE_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMiddleFrontPart", "PREFAB_GEAR_MIDDLE_FRONT_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMiddleBackPart", "PREFAB_GEAR_MIDDLE_BACK_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart", "PREFAB_TREADMILL_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterCraneCorePart", "PREFAB_WATER_CRANE_CORE_PART")

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

local COMP_WATER_CRANE = {
	TypeName = "COMP_WATER_CRANE",
	ParentType = "COMPONENT",
	Properties = {
		{ Name = "GearVelocity", Type = "float", Default = 0.3 }
	}
}

function COMP_WATER_CRANE:create()
	self.sequence = 0
end

function COMP_WATER_CRANE:onEnabled()
    waterCrane:log("Component Enabled")
end

function COMP_WATER_CRANE:generalSequence()
    local dt = self:getLevel():getDeltaTime()
    
end


waterCrane:registerClass(COMP_WATER_CRANE)

waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { DataType = "COMP_BUILDING_PART", FeedbackComponentListToActivate = { { "PREFAB_WATER_CRANE_CORE_PART", "COMP_WATER_CRANE" } } })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { DataType = "COMP_WATER_CRANE",	Enabled = false })

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

waterCrane:registerAssetProcessor("models/waterCrane.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMainPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MAJOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMainFrontPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMainBackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearTopPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MAJOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearTopFrontPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearTopBackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMiddlePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MAJOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMiddleFrontPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMiddleBackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/TreadmillPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MAJOR" })

waterCrane:configurePrefabFlagList("models/waterCrane.fbx/Prefab/TreadmillPart", { "PLATFORM" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

function registerDefaultBuildingPart(_nodePrefix)
	waterCrane:register({
		DataType = "BUILDING_PART",
		Id = _nodePrefix .. "_PART",
		ConstructorData = { DataType = "BUILDING_CONSTRUCTOR_DEFAULT", CoreObjectPrefab = "PREFAB_" .. _nodePrefix .. "_PART" }
	})
end

local defaultNodePrefixList = {
    "GEAR_MAIN",
    "GEAR_MAIN_FRONT",
    "GEAR_MAIN_BACK",
    "GEAR_TOP",
    "GEAR_TOP_FRONT",
    "GEAR_TOP_BACK",
    "GEAR_MIDDLE",
    "GEAR_MIDDLE_FRONT",
    "GEAR_MIDDLE_BACK",
    "TREADMILL"
}

for i, nodePrefix in ipairs(defaultNodePrefixList) do
	registerDefaultBuildingPart(nodePrefix)
end

waterCrane:override({
    Id = "TREADMILL_PART",
    AssetBuildingFunction = "WATER_CRANE_BUILDING_FUNCTION"
})

waterCrane:register({
	DataType = "BUILDING",
	Id = "WATER_CRANE",
	Name = "WATER_CRANE_NAME",
	Description = "WATER_CRANE_DESC",
	BuildingType = "GENERAL",
	AssetCoreBuildingPart = "WATER_CRANE_PART",
    VillagerRequired = {
        Status = "SERF",
        Quantity = 10
    }
})

waterCrane:register({
	DataType = "BUILDING_PART",
	Id = "WATER_CRANE_PART",
    Name = "WATER_CRANE_PART_NAME",
	Description = "WATER_CRANE_PART_DESC",
	ConstructorData = {
        DataType = "BUILDING_CONSTRUCTOR_ASSEMBLAGE",
        CoreRandomBuildingPartList = { "PREFAB_WATER_CRANE_CORE_PART" },
        MandatoryBuildingPartList = {
            { BuildingPart = "GEAR_MAIN_PART", OptionalAttachNodeString = "AttachMajor.GearMain" },
            { BuildingPart = "GEAR_MAIN_FRONT_PART", OptionalAttachNodeString = "AttachMinor.GearMainFront" },
            { BuildingPart = "GEAR_MAIN_BACK_PART", OptionalAttachNodeString = "AttachMinor.GearMainBack" },
            { BuildingPart = "GEAR_TOP_PART", OptionalAttachNodeString = "AttachMajor.GearTop" },
            { BuildingPart = "GEAR_TOP_FRONT_PART", OptionalAttachNodeString = "AttachMinor.GearTopFront" },
            { BuildingPart = "GEAR_TOP_BACK_PART", OptionalAttachNodeString = "AttachMinor.GearTopBack" },
            { BuildingPart = "GEAR_MIDDLE_PART", OptionalAttachNodeString = "AttachMajor.GearMiddle" },
            { BuildingPart = "GEAR_MIDDLE_FRONT_PART",  OptionalAttachNodeString = "AttachMinor.GearMiddleFront" },
            { BuildingPart = "GEAR_MIDDLE_BACK_PART",  OptionalAttachNodeString = "AttachMinor.GearMiddleBack" },
            { BuildingPart = "TREADMILL_PART", OptionalAttachNodeString = "AttachMajor.Treadmill" }
        }
	},
    AssetBuildingFunction = "BUILDING_FUNCTION_WELL",
	BuildingZone = {
		ZoneEntryList = {
            {
            Polygon = polygon.createRectangle( { 6, 10 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
            },
            {
            Polygon = polygon.createRectangle( { .5, .5 }, { 4, 2 } ),
            Type = { WATER_CONSTRAINT = true }
            },
            {
            Polygon = polygon.createRectangle( { 1, 1 }, { 7, 2 } ),
            Type = { DEFAULT = true, NAVIGABLE = true }
            }
        }
	},
	ConstructionVisual = nil,
    EstateSplendor = {
        {
            Estate = "LABOUR",
            Quantity = 5
        }
    },
	Cost = {
        BuildRightTaxes = {
            {
                Resource = "GOLD_COINS",
                Quantity = 200
            }
        },
        UpkeepCost = {
            {
                Resource = "GOLD_COINS",
                Quantity = 50
            }
        },
		RessourcesNeeded = {
            {
                Resource = "PLANK",
                Quantity = 50
            },
            {
                Resource = "STONE",
                Quantity = 10
            },
            {
                Resource = "TOOL",
                Quantity = 10
            }
        }
	},
    DesirabilityModifiers = {
        {
            Desirability = "DESIRABILITY_RESIDENTIAL",
            Type = "SUBSTRACT",
            Radius = 10,
            Value = 1
        }
    },
    IsVisibleWhenBuilt = true
})

--[[------------------------- JOBS & BUILDING FUNCTIONS -----------------------]]--

waterCrane:register({
	DataType = "JOB",
	Id = "TREADMILL_WORKER",
	JobName = "TREADMILL_WORKER_NAME",
	JobDescription = "TREADMILL_WORKER_DESC",
	CharacterSetup = {
		IdleAnimation = "WALKING",
	},
	IsLockedByDefault = true,
	UseWorkplaceBehavior = true,
	AssetJobProgression = "DEFAULT_JOB_PROGRESSION"
})

waterCrane:register({ 
	DataType = "BUILDING_FUNCTION_WORKPLACE",
	Id = "WATER_CRANE_BUILDING_FUNCTION",
	WorkerCapacity = 1,
	RelatedJob = { Job = "TREADMILL_WORKER", Behavior = "BEHAVIOR_WORK" },
	ResourceProduced = {
		{ Resource = "FISH", Quantity = 1 }
	}
})

local overridenCompatibleJobList = {
	Action = "APPEND",
	"TREADMILL_WORKER"
}
waterCrane:override({ Id = "SERF", CompatibleJobList = overridenCompatibleJobList })
waterCrane:override({ Id = "COMMONER", CompatibleJobList = overridenCompatibleJobList })
waterCrane:override({ Id = "CITIZEN", CompatibleJobList = overridenCompatibleJobList })