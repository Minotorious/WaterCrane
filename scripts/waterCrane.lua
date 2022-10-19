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
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterLevelMarkPart", "PREFAB_WATER_LEVEL_MARK_PART")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GroundLevelMarkPart", "PREFAB_GROUND_LEVEL_MARK_PART")

waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterCraneIconPart", "PREFAB_WATER_CRANE_ICON_PART")

waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMainPart.ConstructionSteps", "PREFAB_GEAR_MAIN_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMainFrontPart.ConstructionSteps", "PREFAB_GEAR_MAIN_FRONT_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMainBackPart.ConstructionSteps", "PREFAB_GEAR_MAIN_BACK_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearTopPart.ConstructionSteps", "PREFAB_GEAR_TOP_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearTopFrontPart.ConstructionSteps", "PREFAB_GEAR_TOP_FRONT_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearTopBackPart.ConstructionSteps", "PREFAB_GEAR_TOP_BACK_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMiddlePart.ConstructionSteps", "PREFAB_GEAR_MIDDLE_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMiddleFrontPart.ConstructionSteps", "PREFAB_GEAR_MIDDLE_FRONT_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GearMiddleBackPart.ConstructionSteps", "PREFAB_GEAR_MIDDLE_BACK_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart.ConstructionSteps", "PREFAB_TREADMILL_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterCraneCorePart.ConstructionSteps", "PREFAB_WATER_CRANE_CORE_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterLevelMarkPart.ConstructionSteps", "PREFAB_WATER_LEVEL_MARK_PART_CONSTRUCTION_STEPS")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/GroundLevelMarkPart.ConstructionSteps", "PREFAB_GROUND_LEVEL_MARK_PART_CONSTRUCTION_STEPS")

waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_1.TreadmillWork", "PATH_TREADMILL_WORK_A1")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_2.TreadmillWork", "PATH_TREADMILL_WORK_A2")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_3.TreadmillWork", "PATH_TREADMILL_WORK_A3")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_4.TreadmillWork", "PATH_TREADMILL_WORK_A4")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterCraneCorePart/PATH_B_1.WaterWell", "PATH_WATER_WELL_B1")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterCraneCorePart/PATH_C_1.WaterWell", "PATH_WATER_WELL_C1")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterCraneCorePart/PATH_D_1.WaterWell", "PATH_WATER_WELL_D1")

waterCrane:registerAssetId("models/waterCrane.fbx/Materials/Material.Transparent", "MATERIAL_TRANSPARENT")

waterCrane:overrideAsset({
    Id = "MATERIAL_TRANSPARENT",
    HasAlphaTest = true
})

--[[---------------------------- CUSTOM COMPONENTS ----------------------------]]--

local function starts_with(str, start)
   return str:sub(1, #start) == start
end

local COMP_WATER_CRANE = {
    TypeName = "COMP_WATER_CRANE",
    ParentType = "COMPONENT",
    Properties = {
        { Name = "GearVelocity", Type = "float", Default = 0.8 },
        { Name = "RopeVelocity", Type = "float", Default = 0.3 },
        { Name = "BucketVelocity", Type = "float", Default = 1.0 },
        { Name = "LeverVelocity", Type = "float", Default = 0.05 }
    }
}

function COMP_WATER_CRANE:create()
    self.isInit = false
    self.sequence = 0
    self.ropeReeled = true
    self.bucketFilled = true
    self.craneWaterSide = true
    self.craneStop = true
    self.leverUp = false
    self.bucketTipped = false
    self.maxScaleWater = 1
    self.maxScaleGround = 1

    -- Game Objects
    self.rope = nil
    self.reels = {}
    self.lever = nil
    self.bucketWater = nil
    self.bucketRope = nil
    self.bucketParts = {}
    self.cranePart = nil
    self.treadmill = nil
    self.gearMiddle = nil
    self.gearMiddleFront = nil
    self.gearMiddleBack = nil
    self.gearTop = nil
    self.gearTopFront = nil
    self.gearTopBack = nil
    self.gearMainFront = nil
    self.gearMainBack = nil
end

function COMP_WATER_CRANE:onEnabled()
    if not self.isInit then
        local waterLevel = 0
        local groundLevel = 0
        local bucketLevel = 0
        self:getOwner():forEachChild(
            function(child)
                if child.Name == "AttachMinor.WaterLevelMark" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "WaterLevelMarkPart" then
                                waterLevel = part.Position.y
                            end
                        end
                    )
                elseif child.Name == "AttachMinor.GroundLevelMark" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GroundLevelMarkPart" then
                                groundLevel = part.Position.y
                            end
                        end
                    )
                elseif child.Name == "AttachMajor.Treadmill" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "TreadmillPart" then
                                self.treadmill = part
                            end
                        end
                    )
                elseif child.Name == "AttachMajor.GearMiddle" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearMiddlePart" then
                                self.gearMiddle = part
                            end
                        end
                    )
                elseif child.Name == "AttachMinor.GearMiddleFront" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearMiddleFrontPart" then
                                self.gearMiddleFront = part
                            end
                        end
                    )
                elseif child.Name == "AttachMinor.GearMiddleBack" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearMiddleBackPart" then
                                self.gearMiddleBack = part
                            end
                        end
                    )
                elseif child.Name == "AttachMajor.GearTop" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearTopPart" then
                                self.gearTop = part
                            end
                        end
                    )
                elseif child.Name == "AttachMinor.GearTopFront" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearTopFrontPart" then
                                self.gearTopFront = part
                            end
                        end
                    )
                elseif child.Name == "AttachMinor.GearTopBack" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearTopBackPart" then
                                self.gearTopBack = part
                            end
                        end
                    )
                elseif child.Name == "AttachMinor.GearMainFront" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearMainFrontPart" then
                                self.gearMainFront = part
                            end
                        end
                    )
                elseif child.Name == "AttachMinor.GearMainBack" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearMainBackPart" then
                                self.gearMainBack = part
                            end
                        end
                    )
                elseif child.Name == "AttachMajor.GearMain" then
                    child:forEachChild(
                        function(part)
                            if part.Name == "GearMainPart" then
                                self.cranePart = part
                                part:forEachChild(
                                    function(mainGearPart)
                                        if starts_with(mainGearPart.Name, "Bucket") then
                                            table.insert(self.bucketParts, mainGearPart)
                                            if mainGearPart.Name == "BucketRope" then
                                                bucketLevel = mainGearPart.Position.y
                                                self.bucketRope = mainGearPart
                                            elseif mainGearPart.Name == "BucketWater" then
                                                self.bucketWater = mainGearPart
                                            end
                                        elseif mainGearPart.Name == "Rope" then
                                            self.rope = mainGearPart
                                        elseif starts_with(mainGearPart.Name, "Reel") then
                                            table.insert(self.reels, mainGearPart)
                                        elseif mainGearPart.Name == "Lever" then
                                            self.lever = mainGearPart
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        )
        self.maxScaleWater = (6 + math.abs(waterLevel))/6
        self.maxScaleGround = (6 + math.abs(groundLevel + 0.9))/6
        self:bucketWaterSequence()
        self.isInit = true
    end
end

function COMP_WATER_CRANE:bucketWaterSequence()
    --waterCrane:log("BucketWaterSequence")
    if self.bucketFilled == true then
        --waterCrane:log("BucketEmptySequence")
        self.bucketWater:setScale(0)
        self.bucketFilled = false
    else
        --waterCrane:log("BucketFillSequence")
        self.bucketWater:setScale(1)
        self.bucketFilled = true
    end
end

function COMP_WATER_CRANE:bucketReelSequence(dif)
    for i, bucketPart in ipairs(self.bucketParts) do
        bucketPart:move({ 0, dif, 0 })
    end
end

function COMP_WATER_CRANE:bucketTipSequence()
    local dt = self:getLevel():getDeltaTime()
    local tipPointX = 6.975
    local tipPointY = self.bucketRope.Position.y
    local tipPointZ = 0

    for i, bucketPart in ipairs(self.bucketParts) do
        if self.bucketTipped == false then
            --waterCrane:log("Bucket Tipping")
            bucketPart:rotateAround({ tipPointX, tipPointY, tipPointZ }, { 0, 0, 1 }, -self.GearVelocity * dt)
            if quaternion.getEulerAngles(self.bucketRope.Orientation).z < -1.3 then
                --waterCrane:log("Bucket Tipped")
                self.bucketTipped = true
                self:bucketWaterSequence()
            end
        else
            --waterCrane:log("Bucket Untipping")
            bucketPart:rotateAround({ tipPointX, tipPointY, tipPointZ }, { 0, 0, 1 }, self.GearVelocity * dt)
            if quaternion.getEulerAngles(self.bucketRope.Orientation).z > 0 then
                --waterCrane:log("Bucket Untipped")
                self:bucketResetSequence(tipPointY)
                self.bucketTipped = false
                self.ropeReeled = false
            end
        end
    end
end

function COMP_WATER_CRANE:bucketResetSequence(tipPointY)
    for i, bucketPart in ipairs(self.bucketParts) do
        bucketPart:setRotationZ(0)
        if bucketPart.Name == "BucketRope" then
            bucketPart:move({ 6.975 - bucketPart.Position.x, tipPointY - bucketPart.Position.y, 0 })
        else
            bucketPart:move({ 6.975 - bucketPart.Position.x, tipPointY - bucketPart.Position.y - 0.35894, 0 }) -- 0.35894 is the rope to bucket height difference in the fbx
        end
    end
end

function COMP_WATER_CRANE:ropeReelSequence()
    local dt = self:getLevel():getDeltaTime()

    if self.ropeReeled == false then
        if self.rope.Scale.y > 0.1 then
            local oldScale = self.rope.Scale.y
            self.rope:scaleAround({ 6.975, 4.4475, 0 }, { 1, 1 - self.RopeVelocity*dt, 1 })
            local newScale = self.rope.Scale.y
            local dif = 6 * (oldScale - newScale)
            self:bucketReelSequence(dif)
        else
            --waterCrane:log("RopeReeled")
            self.ropeReeled = true
            if self.sequence == 0 then
                self.sequence = 1
                self.craneStop = false
            elseif self.sequence == 2 then
                self.sequence = 3
                self.craneStop = false
            end
        end
    else
        if self.craneWaterSide == true then
            if self.rope.Scale.y < self.maxScaleWater then
                local oldScale = self.rope.Scale.y
                self.rope:scaleAround({ 6.975, 4.4475, 0 }, { 1, 1 + self.RopeVelocity*dt, 1 })
                local newScale = self.rope.Scale.y
                local dif = 6 * (oldScale - newScale)
                self:bucketReelSequence(dif)
            else
                --waterCrane:log("RopeUnreeled")
                self.ropeReeled = false
                self:bucketWaterSequence()
            end
        else
            if self.rope.Scale.y < self.maxScaleGround then
                local oldScale = self.rope.Scale.y
                self.rope:scaleAround({ 6.975, 4.4475, 0 }, { 1, 1 + self.RopeVelocity*dt, 1 })
                local newScale = self.rope.Scale.y
                local dif = 6 * (oldScale - newScale)
                self:bucketReelSequence(dif)
            else
                --waterCrane:log("RopeUnreeled")
                self:bucketTipSequence()
            end
        end
    end

    for i, reel in ipairs(self.reels) do
        if self.ropeReeled == false then
            reel:rotateZ(2 * self.GearVelocity * dt)
        else
            reel:rotateZ(-2 * self.GearVelocity * dt)
        end
    end

    if self.leverUp == false then
        if self.lever.Position.y < 2.02 then
            self.lever:move({ 0, self.LeverVelocity*dt, 0 })
        else
            self.leverUp = true
        end
    else
        if self.lever.Position.y > 1.92 then
            self.lever:move({ 0, -self.LeverVelocity*dt, 0 })
        else
            self.leverUp = false
        end
    end
end

function COMP_WATER_CRANE:generalGearsSequence()
    local dt = self:getLevel():getDeltaTime()

    self.treadmill:forEachChild(
        function(mesh)
            if not starts_with(mesh.Name, "PATH") then
                mesh:rotateAround({ 0, 0, 0 }, { 0, 0, 1 }, -self.GearVelocity * dt)
            end
        end
    )

    self.gearMiddle:rotateZ(self.GearVelocity * dt)
    self.gearMiddleFront:rotateZ(-2 * self.GearVelocity * dt)
    self.gearMiddleBack:rotateZ(-2 * self.GearVelocity * dt)

    self.gearTop:rotateZ(-self.GearVelocity * dt)
    self.gearTopFront:rotateZ(2 * self.GearVelocity * dt)
    self.gearTopBack:rotateZ(2 * self.GearVelocity * dt)
end

function COMP_WATER_CRANE:craneRotationSequence()
    local dt = self:getLevel():getDeltaTime()
    if self.craneStop == false then
        if self.craneWaterSide == true then
            if quaternion.getEulerAngles(self.cranePart.Orientation).y <= 0 then
                --waterCrane:log("rotating to land")
                self.cranePart:rotateY(-self.GearVelocity * dt)
            else
                --waterCrane:log("rotation to land finished")
                self.cranePart:setRotationY(-1*math.pi)
                self.craneWaterSide = false
                if self.sequence == 1 then
                    self.sequence = 2
                    self.craneStop = true
                end
            end
        else
            if quaternion.getEulerAngles(self.cranePart.Orientation).y < 0 or quaternion.getEulerAngles(self.cranePart.Orientation).y > 3.14 then
                --waterCrane:log("rotating to water")
                self.cranePart:rotateY(self.GearVelocity * dt)
            else
                --waterCrane:log("rotation to water finished")
                self.cranePart:setRotationY(0)
                self.craneWaterSide = true
                if self.sequence == 3 then
                    self.sequence = 0
                    self.craneStop = true
                end
            end
        end

        if self.craneWaterSide == true then
            self.gearMainFront:rotateY(2 * self.GearVelocity * dt)
            self.gearMainBack:rotateY(2 * self.GearVelocity * dt)
        else
            self.gearMainFront:rotateY(-2 * self.GearVelocity * dt)
            self.gearMainBack:rotateY(-2 * self.GearVelocity * dt)
        end
    end
end

function COMP_WATER_CRANE:update()
    self:generalGearsSequence()
    if self.sequence == 0 then --bucket reel down and up filling
        self:ropeReelSequence()
    elseif self.sequence == 1 then --crane rotate to land
        self:craneRotationSequence()
    elseif self.sequence == 2 then --bucket reel down and up emptying
        self:ropeReelSequence()
    elseif self.sequence == 3 then --crane rotate to water
        self:craneRotationSequence()
    end
end

waterCrane:registerClass(COMP_WATER_CRANE)

waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { DataType = "COMP_BUILDING_PART", FeedbackComponentListToActivate = { { "PREFAB_WATER_CRANE_CORE_PART", "COMP_WATER_CRANE" } } })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { DataType = "COMP_WATER_CRANE",  Enabled = false })

--[[--------------------- ASSET PROCESSOR & NODE HANDLING ---------------------]]--
--[[--------------------------- COMPONENT ASSIGNMENT --------------------------]]--
--[[-------------------------------- COLLIDERS --------------------------------]]--

waterCrane:registerAssetProcessor("models/waterCrane.fbx", { DataType = "BUILDING_ASSET_PROCESSOR" })

waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart", {
    DataType = "COMP_BUILDING_PART",
    PathList = {
        {
            PathType = "WORK",
            WayPointList = {
                "PATH_TREADMILL_WORK_A1",
                "PATH_TREADMILL_WORK_A2",
                "PATH_TREADMILL_WORK_A3",
                "PATH_TREADMILL_WORK_A4"
            }
        },
        {
            PathType = "PICKUP",
            WayPointList = {
                "PATH_WATER_WELL_B1"
            }
        },
        {
            PathType = "PICKUP",
            WayPointList = {
                "PATH_WATER_WELL_C1"
            }
        },
        {
            PathType = "PICKUP",
            WayPointList = {
                "PATH_WATER_WELL_D1"
            }
        }
    }
})

waterCrane:configurePrefabFlagList("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { "PLATFORM" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterLevelMarkPart", { DataType = "COMP_GROUNDED" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/GroundLevelMarkPart", { DataType = "COMP_GROUNDED" })

--[[------------------------ BUILDINGS & BUILDING PARTS -----------------------]]--

local function registerDefaultBuildingPart(_nodePrefix)
    waterCrane:registerAsset({
        DataType = "BUILDING_PART",
        Id = _nodePrefix .. "_PART",
        ConstructorData = { DataType = "BUILDING_CONSTRUCTOR_DEFAULT", CoreObjectPrefab = "PREFAB_" .. _nodePrefix .. "_PART" },
        ConstructionVisual = "PREFAB_" .. _nodePrefix .. "_PART_CONSTRUCTION_STEPS"
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
    "TREADMILL",
    "WATER_LEVEL_MARK",
    "GROUND_LEVEL_MARK"
}

for i, nodePrefix in ipairs(defaultNodePrefixList) do
    registerDefaultBuildingPart(nodePrefix)
end

waterCrane:overrideAsset({
    Id = "TREADMILL_PART",
    AssetBuildingFunction = "WATER_CRANE_BUILDING_FUNCTION"
})

waterCrane:registerAsset({
    DataType = "BUILDING",
    Id = "WATER_CRANE",
    Name = "WATER_CRANE_NAME",
    Description = "WATER_CRANE_DESC",
    BuildingType = "FOOD_PRODUCTION",
    AssetCoreBuildingPart = "WATER_CRANE_PART",
    AssetMiniatureBuildingPart = "WATER_CRANE_ICON_PART"
})

waterCrane:registerAsset({
	DataType = "BUILDING_PART",
	Id = "WATER_CRANE_ICON_PART",
	Name = "WATER_CRANE_ICON_PART_NAME",
	--Description = "WATER_CRANE_ICON_PART_DESC",
	ConstructorData = {
		DataType = "BUILDING_CONSTRUCTOR_DEFAULT",
		CoreObjectPrefab = "PREFAB_WATER_CRANE_ICON_PART",
        MiniatureConfig = {
            ClipUnderGround = true,
            GroupHeight = 0.0,
            CameraPosition = { 0, 5, -30 },
            OrientationOffset = -90.0,
            CameraPitchOffset = 0.0
        }
    }
})

waterCrane:registerAsset({
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
            { BuildingPart = "GEAR_MIDDLE_FRONT_PART", OptionalAttachNodeString = "AttachMinor.GearMiddleFront" },
            { BuildingPart = "GEAR_MIDDLE_BACK_PART", OptionalAttachNodeString = "AttachMinor.GearMiddleBack" },
            { BuildingPart = "TREADMILL_PART", OptionalAttachNodeString = "AttachMajor.Treadmill" },
            { BuildingPart = "WATER_LEVEL_MARK_PART", OptionalAttachNodeString = "AttachMinor.WaterLevelMark" },
            { BuildingPart = "GROUND_LEVEL_MARK_PART", OptionalAttachNodeString = "AttachMinor.GroundLevelMark" }
        }
    },
    AssetBuildingFunction = "BUILDING_FUNCTION_WELL",
    BuildingZone = {
        ZoneEntryList = {
            {
                Polygon = polygon.createRectangle( { 6, 10 }, { 0, 0 } ),
                Type = { DEFAULT = true, NAVIGABLE = false, GRASS_CLEAR = true, GROUND_CONSTRAINT = true }
            },
            {
                Polygon = polygon.createRectangle( { 0.5, 0.5 }, { 4, 2 } ),
                Type = { WATER_CONSTRAINT = true }
            },
            {
                Polygon = polygon.createRectangle( { 1, 1 }, { 7, 2 } ),
                Type = { DEFAULT = true, NAVIGABLE = true }
            },
            {
                Polygon = polygon.createRectangle( { 2, 1 }, { -7.575, 2 } ),
                Type = { DEFAULT = true, NAVIGABLE = true, GRASS_CLEAR = true }
            }
        }
    },
    ConstructionVisual = "PREFAB_WATER_CRANE_CORE_PART_CONSTRUCTION_STEPS",
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
                Quantity = 100
            }
        },
        UpkeepCost = {
            {
                Resource = "GOLD_COINS",
                Quantity = 5
            }
        },
        ResourceNeededList = {
            {
                { Resource = "PLANK", Quantity = 50 },
                { Resource = "STONE", Quantity = 10 },
                { Resource = "TOOL", Quantity = 10 }
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

--[[------------------------------- UNLOCKABLES -------------------------------]]--

waterCrane:overrideAsset({
    Id = "UNLOCKABLE_COMMON_FISHING_HUT",
    ActionList = {
        Action = "APPEND",
        {
            DataType = "GAME_ACTION_UNLOCK_BUILDING_LIST",
            BuildingProgressData = {
                AssetBuildingList = {
                    "WATER_CRANE"
                }
            }
        }
    }
})

--[[------------------------- JOBS & BUILDING FUNCTIONS -----------------------]]--

waterCrane:registerAsset({
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

waterCrane:registerAsset({ 
    DataType = "BUILDING_FUNCTION_QUARRY",
    Id = "WATER_CRANE_BUILDING_FUNCTION",
    WorkerCapacity = 1,
    RelatedJob = { Job = "TREADMILL_WORKER", Behavior = "BEHAVIOR_WORK" },
    ResourceProduced = {
        { Resource = "FISH", Quantity = 15 }
    },
    ProductionCycleDurationInSec = 240,
    RandomResourceToSpawn = "GEMS",
    SpawnPercentage = 0.33
})

local overridenCompatibleJobList = {
    Action = "APPEND",
    "TREADMILL_WORKER"
}
waterCrane:overrideAsset({ Id = "SERF", CompatibleJobList = overridenCompatibleJobList })
waterCrane:overrideAsset({ Id = "COMMONER", CompatibleJobList = overridenCompatibleJobList })
waterCrane:overrideAsset({ Id = "CITIZEN", CompatibleJobList = overridenCompatibleJobList })

--[[----------------------------- BEHAVIOUR TREES -----------------------------]]--
