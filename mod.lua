--[[---------------------------------------------------------------------------\
| ||\\    //||       /|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯\ |
| || \\  // ||  (o_ / |                     MAIN MOD FILE                    | |
| ||  \\//  ||  //\/  |                         ----                         | |
| ||   \/   ||  V_/_  |                      WATER CRANE                     | |
| ||        ||        |‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗/ |
\---------------------------------------------------------------------------]]--

local waterCrane = foundation.createMod();

waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/waterCranePart", "PREFAB_WATER_CRANE_PART")

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
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_WATER_CRANE_PART"
	},
	BuildingZone = {
		ZoneEntryList = {
            {
            Polygon = polygon.createRectangle( { 6, 10 }, { 0, 0 } ),
            Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true }
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

--[[------------------------------ MAIN MONUMENT ------------------------------]]--

--[[------------------------------- MAIN EVENT --------------------------------]]--

--[[-------------------------------- DO FILES ---------------------------------]]--
