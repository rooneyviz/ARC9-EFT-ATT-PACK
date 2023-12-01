AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_pist")

SWEP.PrintName = "PF940C"

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Polymer80",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x19mm Parabellum",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = "Recoil",
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_usa"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2016"
}

SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}
SWEP.Description = [[The PF940C is a Glock 19 reciever made by polymer80 that is supposed to be able to be made easily by a citizen without as much paperwork or going through the process of buying a gun.]]

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_pf940.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
-- SWEP.DefaultBodygroups = "0001110101101"
SWEP.DefaultBodygroups = "10000000100000"
SWEP.BarrelLength = 25

SWEP.RecoilMultHipFire = 1.1
SWEP.RecoilAutoControlMultHipFire = 0.5

-------------------------- DAMAGE PROFILE

-- default pst ghz

SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/57mag.mdl" -- Set to a string or table to drop this magazine when reloading.
-- SWEP.DropMagazineSounds = {
--     "arc9_eft_shared/weap_magdrop_plastic.ogg"
-- } -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.45
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, 0, 0)

SWEP.Overheat = true
SWEP.HeatCapacity = 75
SWEP.HeatDissipation = 4
SWEP.HeatLockout = false
-------------------------- FIREMODES

SWEP.RPM = 450 -- idk ?
SWEP.Firemodes = { { Mode = 1 } }

-------------------------- RECOIL


SWEP.Recoil = 0.1

SWEP.RecoilMultHipFire = 0.5
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilAutoControlMultHipFire = 0.5

SWEP.RecoilUp = 6
SWEP.RecoilSide = 0.4
SWEP.RecoilRandomUp = 1.8
SWEP.RecoilRandomSide = 0.96


SWEP.RecoilDissipationRate = 11
SWEP.RecoilAutoControl = 10
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.15



SWEP.UseVisualRecoil = true 
SWEP.VisualRecoil = 0.5
SWEP.VisualRecoilMultHipFire = 0.3
SWEP.VisualRecoilMultSights = 0.3
SWEP.VisualRecoilMultCrouch = 0.5

SWEP.VisualRecoilCenter = Vector(2, 17, 2)
SWEP.VisualRecoilUp = 150
SWEP.VisualRecoilUpMultHipFire = 1
SWEP.VisualRecoilSide = 16
SWEP.VisualRecoilRoll = 25 -- Roll tilt

SWEP.VisualRecoilPunch = 15 -- How far back visual recoil moves the gun
SWEP.VisualRecoilPunchSights = 30 -- How far back visual recoil moves the gun


SWEP.VisualRecoilSpringPunchDamping = 8
SWEP.VisualRecoilDampingConst = 600
SWEP.VisualRecoilSpringMagnitude = 0.1
SWEP.VisualRecoilPositionBumpUp = -0.01
SWEP.VisualRecoilPositionBumpUpRTScope = 0.00
SWEP.VisualRecoilPositionBumpUpHipFire = 0.00

SWEP.RecoilKick = 0
SWEP.RecoilKickDamping = 10

-------------------------- SPREAD

SWEP.Spread = 10.31 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 333*2

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
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.35 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false
-------------------------- TRACERS

SWEP.TracerNum = 0 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-4.28, -8, 2.25),
    Ang = Angle(0, 0.01, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ViewModelFOVBase = 62

SWEP.ActivePos = Vector(-0.45, -1.8, -.45)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21.7, 25, 3.5)
SWEP.CustomizeSnapshotFOV = 70
SWEP.CustomizeRotateAnchor = Vector(21, -4.28, -5.23)

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeNPC = "pistol"

SWEP.HoldTypeCustomize = "physgun"
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_REVOLVER

SWEP.WorldModelOffset = {
    Pos = Vector(-15.5, 5.5, -4),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 6, -5), -- rpg
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


-------------------------- RECOIL





-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellScale = 1
SWEP.CaseEffectQCA = 2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = 0.05 -- Intensity for QC camera movement in ADS.

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3"
}

-------------------------- SOUNDS

local path = "weapons/darsu_eft/glock/"

SWEP.ShootSound = { path .. "glock17_close.ogg", path .. "glock17_close5.ogg", path .. "glock17_close6.ogg" }
SWEP.ShootSoundIndoor = path .. "glock17_indoor_close.ogg"
SWEP.DistantShootSound = { path .. "glock17_fire_distant.ogg", path .. "glock17_fire_distant2.ogg" }
SWEP.DistantShootSoundIndoor = path .. "glock17_indoor_distant.ogg"

SWEP.ShootSoundSilenced = { path .. "glock17_close_silenced.ogg", path .. "glock17_close_silenced2.ogg" }
SWEP.ShootSoundSilencedIndoor = path .. "glock17_indoor_close_silenced.ogg"
SWEP.DistantShootSoundSilenced = path .. "glock17_distant_silenced.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "glock17_indoor_distant_silenced.ogg"

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = ""-- we will have own in sound tables

SWEP.DryFireSound = "arc9_eft_shared/weap_trigger_empty.ogg"

SWEP.SuppressEmptySuffix = true 

SWEP.EnterSightsSound = "arc9_eft_shared/weap_in.ogg"
SWEP.ExitSightsSound = "arc9_eft_shared/weap_handoff.ogg"

SWEP.Hook_TranslateAnimation = ARC9EFT.Glock_AnimsHook
SWEP.Animations = ARC9EFT.Glock_Anims

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3"
    },
}


-------------------------- ATTACHMENTS

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasBarrel") or 
        !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasSlide") then
            
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasBarrel") or 
        !self:GetValue("HasAmmoooooooo") or 
        !self:GetValue("HasSlide") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_stock_g17_glr17"]    = { Bodygroups = { {5, 1} } },
    ["eft_mount_g17_at_base"]    = { Bodygroups = { {6, 1} } },
    ["eft_mount_g17_tshark"]    = { Bodygroups = { {6, 2} } },
    ["eft_barrel_g19x_std"]    = { Bodygroups = { {2, 7} } },
    ["eft_rec_g19x_std"]    = { Bodygroups = { {1, 11} } },
    ["eft_rec_g19x_black"]    = { Bodygroups = { {1, 12} } },
    ["eft_glock_black"] = { Skin = 1 },

    -- not exist in eft, use for custom atts :ahmad2:
    ["eft_pgrip_g17_tgg"]    = { Bodygroups = { {4, 1} } },
    ["eft_tac_g17_tangodown"]    = { Bodygroups = { {7, 1} } },
    ["eft_tac_g17_zt_cap"]    = { Bodygroups = { {7, 2} } },
    
    ["eft_barrel_g18c_std"]    = { Bodygroups = { {2, 3} } },
    ["eft_rec_g18c_std"]    = { Bodygroups = { {1, 2} } },
    ["eft_barrel_g17_aw"]    = { Bodygroups = { {2, 5} } },
    ["eft_barrel_g17_comp"]    = { Bodygroups = { {2, 2} } },
    ["eft_barrel_g17_dd_thr"]    = { Bodygroups = { {2, 4} } },
    ["eft_barrel_g17_sai"]    = { Bodygroups = { {2, 6} } },
    ["eft_barrel_g17_std"]    = { Bodygroups = { {2, 1} } },

    ["eft_rec_g17_aw"]    = { Bodygroups = { {1, 6} } },
    ["eft_rec_g17_aw_c"]    = { Bodygroups = { {1, 7} } },
    ["eft_rec_g17_mos"]    = { Bodygroups = { {1, 10} } },
    ["eft_rec_g17_motocut"]    = { Bodygroups = { {1, 9} } },
    ["eft_rec_g17_ps9"]    = { Bodygroups = { {1, 5} } },
    ["eft_rec_g17_std"]    = { Bodygroups = { {1, 1} } },
    ["eft_rec_g17_vipercut"]    = { Bodygroups = { {1, 8} } },
    ["eft_rec_g17_zt_hex"]    = { Bodygroups = { {1, 4} } },
    ["eft_rec_g17_zt_spartan"]    = { Bodygroups = { {1, 3} } },
    ["eft_muzzle_g17_g4"]    = { Bodygroups = { {3, 1} } },
    ["eft_muzzle_g17_3port"]    = { Bodygroups = { {3, 7} } },
    ["eft_muzzle_g17_aw"]    = { Bodygroups = { {3, 4} } },
    ["eft_muzzle_g17_aw_thr"]    = { Bodygroups = { {3, 9} } },
    ["eft_muzzle_g17_cc4p"]    = { Bodygroups = { {3, 8} } },
    ["eft_muzzle_g17_dd_fh"]    = { Bodygroups = { {3, 6} } },
    ["eft_muzzle_g17_dd_thr"]    = { Bodygroups = { {3, 5} } },
    ["eft_muzzle_g17_sai_thr"]    = { Bodygroups = { {3, 2} } },
    ["eft_muzzle_g17_lwd_comp9"]    = { Bodygroups = { {3, 3} } },
    ["eft_silencer_fd917"]    = { Bodygroups = { {9, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = "Barrel",
        Category = "eft_g19x_barrel",
        Bone = "mod_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Installed = "eft_barrel_g19x_std"
    },
    {
        PrintName = "Reciever",
        Category = "eft_g19x_rec",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1.085, 0.185),
        Installed = "eft_rec_g19x_std",
        SubAttachments = {
            {
                Installed = "eft_fs_g19x_std",
            },
            {
                Installed = "eft_rs_g19x_std",
            },
        }
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_barrel",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -1.2, -4),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_g17_mag",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, -0.4, 0),
        Installed = "eft_mag_g19x"
    },    
    {
        PrintName = "Tactical",
        Bone = "weapon",
        Category = {"eft_tactical_pistol", "eft_um3"},
        RejectAttachments = { ["eft_silencer_fd917"] = true },
        Pos = Vector(0, 23.3, -0.52),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Mount",
        Bone = "weapon",
        Category = "eft_g17_tshark",
        Pos = Vector(0, 17.6, -1),
        Ang = Angle(90, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_glock"},
        Bone = "weapon",
        Pos = Vector(0, 12, -1),
        Ang = Angle(90, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
        -- CosmeticOnly = true,
    },
}


SWEP.EFTErgo = 93
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
SWEP.ShellSounds = ARC9EFT.Shells9mm