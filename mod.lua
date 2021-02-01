--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                     MAIN MOD FILE                    | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      WATER CRANE                     | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local waterCrane = foundation.createMod();

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

waterCrane:registerAssetProcessor("models/waterCrane.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })



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

waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMainPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "BUILD_ORDER_DEPENDENCY" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMainFrontPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "LEFT" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMainBackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "RIGHT" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearTopPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_BOTTOM" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearTopFrontPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "FRONT" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearTopBackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "SIDE" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMiddlePart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MAJOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMiddleFrontPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GearMiddleBackPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "INNER_TOP" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/TreadmillPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "DOOR" })

waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart/AttachBuildOrderDependency", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "BUILD_ORDER_DEPENDENCY" } })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart/AttachFront", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "FRONT" } })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart/AttachSide", { DataType = "COMP_BUILDING_ATTACH_NODE", AttachNodeTypeList = { "SIDE" } })

waterCrane:register({
	DataType = "BUILDING",
	Id = "WATER_CRANE",
	Name = "WATER_CRANE_NAME",
	Description = "WATER_CRANE_DESC",
	BuildingType = "DECORATION",
	AssetCoreBuildingPart = "WATER_CRANE_PART"
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
            { BuildingPart = "GEAR_MAIN_PART" },
            { BuildingPart = "GEAR_MAIN_FRONT_PART" },
            { BuildingPart = "GEAR_MAIN_BACK_PART" },
            { BuildingPart = "GEAR_TOP_PART" },
            { BuildingPart = "GEAR_TOP_FRONT_PART" },
            { BuildingPart = "GEAR_TOP_BACK_PART" },
            { BuildingPart = "GEAR_MIDDLE_PART" },
            { BuildingPart = "GEAR_MIDDLE_FRONT_PART" },
            { BuildingPart = "GEAR_MIDDLE_BACK_PART" },
            { BuildingPart = "TREADMILL_PART" }
        }
	},
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
	Cost = {
		RessourcesNeeded = {}
	},
    IsVisibleWhenBuilt = true
})

--[[---------------------------- GENERAL MATERIALS ----------------------------]]--

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

function COMP_WATER_CRANE:generalSequence()
    local dt = self:getLevel():getDeltaTime()
    
end

--[[------------------------------ MAIN MONUMENT ------------------------------]]--

--[[------------------------------- MAIN EVENT --------------------------------]]--

--[[-------------------------------- DO FILES ---------------------------------]]--
