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

waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_1.TreadmillWork", "PATH_TREADMILL_WORK_A1")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_2.TreadmillWork", "PATH_TREADMILL_WORK_A2")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_3.TreadmillWork", "PATH_TREADMILL_WORK_A3")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_4.TreadmillWork", "PATH_TREADMILL_WORK_A4")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/TreadmillPart/PATH_A_1.TreadmillPickUp", "PATH_TREADMILL_PICKUP_A1")
waterCrane:registerAssetId("models/waterCrane.fbx/Prefab/WaterCraneCorePart/PATH_A_1.WaterWell", "PATH_WATER_WELL_A1")

waterCrane:registerAssetId("models/waterCrane.fbx/Materials/Material.Transparent", "MATERIAL_TRANSPARENT")

waterCrane:override({
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
        { Name = "BucketVelocity", Type = "float", Default = 1.0 }
    }
}

function COMP_WATER_CRANE:create()
    self.sequence = 0
    self.ropeReeled = false
end

function COMP_WATER_CRANE:onEnabled()
    waterCrane:log("Component Enabled")
end

function COMP_WATER_CRANE:onDisabled()
    waterCrane:log("Component Disabled")
end

function COMP_WATER_CRANE:bucketSequence(dif)
    local dt = self:getLevel():getDeltaTime()
    self:getOwner():forEachChild(
        function(child)
            if child.Name == "AttachMajor.GearMain" then
                child:forEachChild(
                    function(part)
                        if part.Name == "GearMainPart" then
                            part:forEachChild(
                                function(bucketPart)
                                    if starts_with(bucketPart.Name, "Bucket") then
                                        bucketPart:move({ 0, dif, 0 })
                                    end
                                end
                            )
                        end
                    end
                )
            end
        end
    )
end

function COMP_WATER_CRANE:ropeReelSequence()
    local dt = self:getLevel():getDeltaTime()
    self:getOwner():forEachChild(
        function(child)
            if child.Name == "AttachMajor.GearMain" then
                child:forEachChild(
                    function(part)
                        if part.Name == "GearMainPart" then
                            part:forEachChild(
                                function(rope)
                                    if rope.Name == "Rope" then
                                        if self.ropeReeled == false then
                                            if rope.Scale.y > 0.1 then
                                                --waterCrane:log("Old Scale: " .. rope.Scale.y)
                                                local oldScale = rope.Scale.y
                                                rope:scaleAround({ 6.975, 4.4475, 0 }, { 1, 1 - self.RopeVelocity*dt, 1 })
                                                --waterCrane:log("New Scale: " .. rope.Scale.y)
                                                local newScale = rope.Scale.y
                                                local dif = 6 * (oldScale - newScale)
                                                --waterCrane:log("Difference: " .. dif)
                                                self:bucketSequence(dif)
                                            else
                                                waterCrane:log(rope.Scale.y)
                                                self.ropeReeled = true
                                            end
                                        else
                                            if rope.Scale.y < 1 then
                                                --waterCrane:log(rope.Scale.y)
                                                local oldScale = rope.Scale.y
                                                rope:scaleAround({ 6.975, 4.4475, 0 }, { 1, 1 + self.RopeVelocity*dt, 1 })
                                                local newScale = rope.Scale.y
                                                local dif = 6 * (oldScale - newScale)
                                                --waterCrane:log("Difference: " .. dif)
                                                self:bucketSequence(dif)
                                            else
                                                waterCrane:log(rope.Scale.y)
                                                self.ropeReeled = false
                                            end
                                        end
                                    end
                                end
                            )
                        end
                    end
                )
            end
        end
    )
end

function COMP_WATER_CRANE:generalGearsSequence()
    local dt = self:getLevel():getDeltaTime()
    
    --waterCrane:log(self:getOwner():getParent().Name)
    self:getOwner():forEachChild(
        function(child)
            if starts_with(child.Name, "Attach") then
                --waterCrane:log(child.Name)
                child:forEachChild(
                    function(attachment)
                        --waterCrane:log(attachment.Name)
                        if attachment.Name == "TreadmillPart" then
                            attachment:forEachChild(
                                function(mesh)
                                    if not starts_with(mesh.Name, "PATH") then
                                        mesh:rotateAround({ 0, 0, 0 }, { 0, 0, 1 }, -self.GearVelocity * dt)
                                    end
                                end
                            )
                        elseif attachment.Name == "GearMiddlePart" then
                            attachment:rotateZ(self.GearVelocity * dt)
                        elseif attachment.Name == "GearMiddleFrontPart" then
                            attachment:rotateZ(-2 * self.GearVelocity * dt)
                        elseif attachment.Name == "GearMiddleBackPart" then
                            attachment:rotateZ(-2 * self.GearVelocity * dt)
                        elseif attachment.Name == "GearTopPart" then
                            attachment:rotateZ(-self.GearVelocity * dt)
                        elseif attachment.Name == "GearTopFrontPart" then
                            attachment:rotateZ(2 * self.GearVelocity * dt)
                        elseif attachment.Name == "GearTopBackPart" then
                            attachment:rotateZ(2 * self.GearVelocity * dt)
                        elseif attachment.Name == "GearMainFrontPart" then
                            attachment:rotateY(-2 * self.GearVelocity * dt)
                        elseif attachment.Name == "GearMainBackPart" then
                            attachment:rotateY(2 * self.GearVelocity * dt)
                        end
                    end
                )
            end
        end
    )
end

function COMP_WATER_CRANE:update()
    self:generalGearsSequence()
    self:ropeReelSequence()
end

waterCrane:registerClass(COMP_WATER_CRANE)

waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { DataType = "COMP_BUILDING_PART", FeedbackComponentListToActivate = { { "PREFAB_WATER_CRANE_CORE_PART", "COMP_WATER_CRANE" } } })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { DataType = "COMP_WATER_CRANE",  Enabled = false })

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
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterLevelMarkPart", { DataType = "COMP_BUILDING_PART", BuildingPartType = "MINOR" })

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
                "PATH_TREADMILL_PICKUP_A1"
            }
        },
        {   
            PathType = "PICKUP",
            WayPointList = {
                "PATH_WATER_WELL_A1"
            }
        }
    }
})

waterCrane:configurePrefabFlagList("models/waterCrane.fbx/Prefab/WaterCraneCorePart", { "PLATFORM" })
waterCrane:registerPrefabComponent("models/waterCrane.fbx/Prefab/WaterLevelMarkPart", { DataType = "COMP_GROUNDED" })

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
    "TREADMILL",
    "WATER_LEVEL_MARK"
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
        Quantity = 1--10
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
            { BuildingPart = "TREADMILL_PART", OptionalAttachNodeString = "AttachMajor.Treadmill" },
            { BuildingPart = "WATER_LEVEL_MARK_PART", OptionalAttachNodeString = "AttachMinor.WaterLevelMark" }
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
                Quantity = 0--50
            },
            {
                Resource = "STONE",
                Quantity = 0--10
            },
            {
                Resource = "TOOL",
                Quantity = 0--10
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
    ProductionDelay = 60,
    IsLockedByDefault = true,
    UseWorkplaceBehavior = true,
    AssetJobProgression = "DEFAULT_JOB_PROGRESSION"
})

waterCrane:register({ 
    DataType = "BUILDING_FUNCTION_QUARRY",
    Id = "WATER_CRANE_BUILDING_FUNCTION",
    WorkerCapacity = 1,
    RelatedJob = { Job = "TREADMILL_WORKER", Behavior = "TREADMILL_WORKER_BEHAVIOR_TREE" },
    ResourceProduced = {
        { Resource = "FISH", Quantity = 0 }
    },
    RandomResourceToSpawn = "GEMS",
    SpawnPercentage = 0.33
})

local overridenCompatibleJobList = {
    Action = "APPEND",
    "TREADMILL_WORKER"
}
waterCrane:override({ Id = "SERF", CompatibleJobList = overridenCompatibleJobList })
waterCrane:override({ Id = "COMMONER", CompatibleJobList = overridenCompatibleJobList })
waterCrane:override({ Id = "CITIZEN", CompatibleJobList = overridenCompatibleJobList })

--[[----------------------------- BEHAVIOUR TREES -----------------------------]]--

waterCrane:registerBehaviorTree({
    Id = "TREADMILL_WORKER_BEHAVIOR_TREE",
    VariableList = {
        {
            Name = "AgentData",
            DataType = "BEHAVIOR_TREE_DATA_AGENT",
            IsPublic = true,
            InitialValue = {}
        },
        {
            Name = "DoJobTimer",
            DataType = "BEHAVIOR_TREE_DATA_WAIT",
            IsPublic = false,
            InitialValue = {
                TimeToWait = 0,
                Animation = "IDLE",
                SetIdleAfterWait = false
            }
        },
        {
            Name = "WorkplacePosition",
            DataType = "BEHAVIOR_TREE_DATA_LOCATION",
            IsPublic = false,
            InitialValue = {
                CanNavigateOnGround = true,
                CanNavigateOnWater = false,
                IsSetOrientationOnDestination = true
            }
        },
        {
            Name = "WorkLoop",
            DataType = "BEHAVIOR_TREE_DATA_LOOP",
            IsPublic = true,
            InitialValue = {
                LoopCount = 1,
                Duration = 240,
                IsInfinite = false,
                IsDuration = true
            }
        }
    },
    Root = {
        Name = "WorkingGlobalSequencer",
        Type = "SEQUENCER",
        Children = {
            {
                Name = "WorkLoopRepeater",
                Type = "REPEAT",
                RepeatData = "WorkLoop",
                Child = {
                    Name = "WorkLoopSequencer",
                    Type = "SEQUENCER",
                    Children = {
                        {
                            Name = "SetupWork",
                            Type = "SETUP_WORK",
                            AgentData = "AgentData",
                            TimeToWait = "DoJobTimer",
                            WorkPosition = "WorkplacePosition"
                        },
                        {
                            Name = "GoToWorkplace",
                            Type = "GO_TO",
                            AgentData = "AgentData",
                            Destination = "WorkplacePosition",
                            BuildingPathType = "",
                            AnimationData = "",
                            AnimationSpeedMultiplier = ""
                        },
                        {
                            Name = "ProduceResource",
                            Type = "PRODUCE_RESOURCE",
                            AgentData = "AgentData",
                            TimeToWait = "DoJobTimer"
                        },
                        {
                            Name = "GettingXp",
                            Type = "GIVE_JOB_XP",
                            AgentData = "AgentData",
                            ShouldReceiveXp = ""
                        }
                    }
                }
            }
        }
    }
})