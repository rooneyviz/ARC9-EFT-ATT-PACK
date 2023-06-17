AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = "Assault Rifles"
SWEP.Credits = { Author2 = "Rooneyviz", Author1 = "Darsu", Assets2 = "Battlestate Games LTD", General_help3 = "Mal0", ARC9_Base4 = "Arctic" }

SWEP.PrintName = "Generic AK"
SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Manufacturer1 = "Kalashnikov Concern",
    Calibre2 = "7.62x39mm",
    Action3 = "Gas",
    Country4 = "Soviet Union",
    Year5 = "1959"
}

SWEP.Description = [[AKM 7.62x39mm - (Avtomát Kaláshnikova Modernizírovanny - Kalashnikovs Automatic Rifle Modernised) - was adopted in 1959 to replace AK as a standard service weapon of the Soviet Army. Main differences compared to AK: enhanced accuracy range, lower weight, new stock, trigger, hammer retarder, muzzle compensator and other design changes aimed at improving the efficiency of the rifle.]]


SWEP.StandardPresets = {
}

SWEP.BarrelLength = 37
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/rooney/c_ak_base.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00010000000000"


------------------------- [[[           STATS            ]]] -------------------------

--          Damage
-- default ps
SWEP.DamageMax = 57/2
SWEP.DamageMin = 38.1/2
SWEP.PhysBulletMuzzleVelocity = 700 /0.0254

SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      35 *2.54/100/0.0254
SWEP.PenetrationDelta = 52/100
SWEP.ArmorPiercing =    52/100
SWEP.RicochetChance =   35/100

SWEP.DamageLookupTable = {
    {   10/0.0254, 
    57/2     },

    {   100 /0.0254, 
    52.8/2     },

    {   200 /0.0254, 
    48.5/2     },

    {   300 /0.0254, 
    44.72/2     },

    {   400 /0.0254, 
    42.7/2     },

    {   500 /0.0254, 
    41.45/2     },

    {   600 /0.0254, 
    40.53/2     },

    {   700 /0.0254, 
    39.8/2     },

    {   800 /0.0254, 
    39.15/2     },

    {   900 /0.0254, 
    38.6/2     },

    {   1000 /0.0254, 
    38.1/2     },
}


--          Spread
SWEP.Spread = 2.303 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil

SWEP.Recoil = 1.6

SWEP.RecoilMultHipFire = 1.1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilAutoControlMultHipFire = 0.5

SWEP.RecoilUp = 4 * 0.85 -- patch 0.13.0.4.22617
SWEP.RecoilSide = 0.7
SWEP.RecoilRandomUp = 1.2
SWEP.RecoilRandomSide = 0.96

SWEP.ViewRecoil = false 
-- SWEP.ViewRecoil = false 
SWEP.ViewRecoilUpMult = 3 * 0.85 -- patch 0.13.0.4.22617
SWEP.ViewRecoilUpMultMultHipFire = 2
SWEP.ViewRecoilSideMult = -4
SWEP.ViewRecoilSideMultMultHipFire = -2

SWEP.RecoilDissipationRate = 11
SWEP.RecoilAutoControl = 10
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.15



SWEP.UseVisualRecoil = true 
SWEP.VisualRecoil = 0.4
SWEP.VisualRecoilMultHipFire = 0.3
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilMultCrouch = 0.5

SWEP.VisualRecoilCenter = Vector(2, 18, 2)
SWEP.VisualRecoilUp = 85 -- Vertical tilt
SWEP.VisualRecoilSide = 3 -- Horizontal tilt
SWEP.VisualRecoilRoll = 25 -- Roll tilt

SWEP.VisualRecoilPunch = 20 -- How far back visual recoil moves the gun
SWEP.VisualRecoilPunchSights = -20 -- How far back visual recoil moves the gun


SWEP.VisualRecoilSpringPunchDamping = 11
SWEP.VisualRecoilDampingConst = 250
SWEP.VisualRecoilSpringMagnitude = 2 / 1.67
SWEP.VisualRecoilPositionBumpUp = -0.065
SWEP.VisualRecoilPositionBumpUpRTScope = -0.03
SWEP.VisualRecoilPositionBumpUpHipFire = 0.001


SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
    if recamount > 1 then
        recamount = math.Clamp((recamount - 1) / 10, 0, 1)
        return springconstant * math.max(1, 10 * recamount) * 5, VisualRecoilSpringMagnitude * 1.4, PUNCH_DAMPING * 0.75
    elseif recamount == 1 then
        return springconstant * 0.8, VisualRecoilSpringMagnitude * 0.8, PUNCH_DAMPING * 0.8
    end

    return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
end


SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 2 then
        recamount = 2 - math.Clamp((recamount - 2) / 5, 0, 1)
        
        local fakerandom = 1 + (((69+recamount%5*CurTime()%3)*2420)%10)/10 
        
        return up * recamount * fakerandom, side * 0.8, roll, punch * 0.5
    elseif recamount == 1 then
        return up * 2.5, side * 2, roll, punch
    end

    return up, side, roll, punch
end


SWEP.RecoilKick = 0
SWEP.RecoilKickDamping = 10



--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 1.5 * 450
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 200
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 575
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.wav"


--          Generic stats

SWEP.Ammo = "ar2"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.7
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 90, 90)
SWEP.DropMagazineVelocity = Vector(-100, 0, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.28, -5, 1.39),
    Ang = Angle(0, 0.09, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.5, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 30, 4)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(19, -4.28, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-5, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.36
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_ak47"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x39.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
}


-- SWEP.HideBones = { -- please do it later
--     "vm_mag2",
--     "tag_mag2"
-- }

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "vm_mag",
--         "tag_mag"
--     },
--     [2] = {
--         "vm_mag2",
--         "tag_mag2"
--     }
-- }


------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/ak/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire_new/akm_close_loop_1.wav", path .. "fire_new/akm_close_loop_2.wav", path .. "fire_new/akm_close_loop_3.wav", path .. "fire_new/akm_close_loop_4.wav" }
SWEP.LayerSound = path .. "fire_new/akm_close_loop_tail.wav"

SWEP.ShootSoundSilenced = { path .. "fire_new/akm_close_loop_silenced_1.wav", path .. "fire_new/akm_close_loop_silenced_2.wav", path .. "fire_new/akm_close_loop_silenced_3.wav", path .. "fire_new/akm_close_loop_silenced_4.wav" }
SWEP.LayerSoundSilenced = path .. "fire_new/akm_close_loop_silenced_tail.wav"

SWEP.ShootSoundIndoor = { path .. "fire_new/akm_close_indoor_loop_1.wav", path .. "fire_new/akm_close_indoor_loop_2.wav", path .. "fire_new/akm_close_indoor_loop_3.wav", path .. "fire_new/akm_close_indoor_loop_4.wav" }
SWEP.LayerSoundIndoor = path .. "fire_new/akm_close_indoor_loop_tail.wav"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/akm_close_indoor_loop_silenced_1.wav", path .. "fire_new/akm_close_indoor_loop_silenced_2.wav", path .. "fire_new/akm_close_indoor_loop_silenced_3.wav", path .. "fire_new/akm_close_indoor_loop_silenced_4.wav" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/akm_close_indoor_loop_silenced_tail.wav"

SWEP.DistantShootSound = { path .. "fire_new/akm_distant_loop_1.wav", path .. "fire_new/akm_distant_loop_2.wav" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/akm_distant_loop_silenced_1.wav", path .. "fire_new/akm_distant_loop_silenced_2.wav" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/akm_distant_indoor_loop_1.wav", path .. "fire_new/akm_distant_indoor_loop_2.wav" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/akm_distant_indoor_loop_silenced_1.wav", path .. "fire_new/akm_distant_indoor_loop_silenced_2.wav" }

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = "arc9_eft_shared/weap_in.wav"
SWEP.ExitSightsSound = "arc9_eft_shared/weap_handoff.wav"



------------------------- [[[           Hooks & functions            ]]] -------------------------

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_akn"] then
        return "AKMN"
    else
        return "AKM"
    end
end

SWEP.HookP_DescriptionChange = function(self, desc)
    local elements = self:GetElements()

    if elements["eft_akn"] then
        return [[AKMN (Avtomat Kalashnikova Modernizirovanny Nochnoy - "Kalashnikov's Automatic Rifle Modernised Night") is a small arms system consisting of a modified AKM automatic rifle with a dovetail mount for installation of the NSP family night vision scopes — NSP-2/3/3A, NSPU, NSPU-M.]]
    else
        return [[AKM 7.62x39mm - (Avtomát Kaláshnikova Modernizírovanny - Kalashnikovs Automatic Rifle Modernised) - was adopted in 1959 to replace AK as a standard service weapon of the Soviet Army. Main differences compared to AK: enhanced accuracy range, lower weight, new stock, trigger, hammer retarder, muzzle compensator and other design changes aimed at improving the efficiency of the rifle.]]
    end
end



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2"
    },
}

SWEP.Hook_TranslateAnimation = ARC9EFT.AK_AnimsHook
SWEP.Animations = ARC9EFT.AK_Anims




------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0
function SWEP:HookP_BlockFire() return ARC9EFT.AK_MissingParts(self) end



SWEP.Attachments = {
    {
        PrintName = "Receiver",
        Category = "eft_ak_receiver",
        Bone = "mod_magazine",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -5, 0),
    },
    {
        PrintName = "Receiver",
        Category = "eft_ak_rsb",
        Bone = "weapon",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -5, 0),
    },

    {
        PrintName = "Trigger",
        Category = "eft_ak_trigger",
        Bone = "weapon_trigger",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Mag release",
        Category = "eft_ak_mr",
        Bone = "weapon_release",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_ak", "eft_custom_slot_akm"},
        Bone = "mod_pistol_grip",
        Pos = Vector(0, -8, -5),
        Ang = Angle(0, 0, 0),
    },
}

SWEP.EFTErgo = 26
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells556