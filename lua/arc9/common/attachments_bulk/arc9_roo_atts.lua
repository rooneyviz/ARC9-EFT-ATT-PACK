local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000

local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}




///////////////////////////////////////      double ak hg



///////////////////////////////////////      eft_rec_ak_dogleg


///////////////////////////////////////      eft_aksu_hg_ak_std




ATT = {}


ATT.PrintName = "ARSENAL 4 Piece Flash Hider"
ATT.CompactName = "4 piece"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
ATT.Category = {"eft_ak74_muzzle", "eft_ak103_muzzle", "eft_ak_ttak", "eft_rpk16_muzzle","eft_ak101_muzzle"}
ATT.SortOrder = 1
ATT.MuzzleParticleOverride = "muzzleflash_mp5"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak104_flash.mdl"
ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0,0, 0)
ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 1.015
ATT.NoFlash = true

ARC9.LoadAttachment(ATT, "eft_muz_4pc")
///////////////////////////////////////      eft_frontsight


ATT = {}

ATT.PrintName = "front sight"
ATT.CompactName = "front sight"
ATT.Icon = nil
ATT.Description = [[lets you add a front iron sight instead of a laser]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"




ATT.Category = {"eft_tactical_top","eft_tactical_top_big"}

ATT.Attachments = {
	{
        PrintName = "Front Sight",
        Category = {"eft_ar_frontsight", "eft_frontsight",},
        Pos = Vector(-1, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(0, 0, 0),
        -- ExtraSightDistance = 8
    },
}

ARC9.LoadAttachment(ATT, "eft_front_sight_tactical")

ATT = {}

ATT.PrintName = "fronter sight"
ATT.CompactName = "front-er sight"
ATT.Icon = nil
ATT.Description = [[lets you add a front iron sight with a laser]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"




ATT.Category = {"eft_tactical_top","eft_tactical_top_big"}

ATT.Attachments = {
	{
        PrintName = "Front Sight",
        Category = {"eft_ar_frontsight", "eft_frontsight",},
        Pos = Vector(-4, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(0, 0, 0),
        -- ExtraSightDistance = 8
    },
		{
        PrintName = "Tactical",
        Category = {"eft_tactical_top","eft_tactical_top_big","eft_optic_small"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(1, 0, 0),
        -- ExtraSightDistance = 8
    },
}

ARC9.LoadAttachment(ATT, "eft_fronter_sight_tactical")

ATT = {}

ATT.PrintName = "zoomed out aiming"
ATT.CompactName = "zoomed out"
ATT.Icon = nil
ATT.Description = [[makes your charachter not aim in as much when aiming]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"




ATT.Category = {"eft_tactical_top","eft_tactical_top_big","eft_optic_small","eft_optic_large"}

ATT.Attachments = {
		{
        PrintName = "Tactical",
        Category = {"eft_tactical_top","eft_tactical_top_big","eft_optic_small","eft_optic_large","eft_optic_medium"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(1, 0, 0),
        ExtraSightDistance = 4,

    },
}

ARC9.LoadAttachment(ATT, "eft_optic_distance")

ATT = {}

ATT.PrintName = "rear-er sight"
ATT.CompactName = "rear-er sight"
ATT.Icon = nil
ATT.Description = [[lets you add a rear iron sight and an optic or laser ]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"




ATT.Category = {"eft_optic_small"}

ATT.Attachments = {
	{
        PrintName = "Rear Sight",
        Category = {"eft_ar_rearsight", "eft_rearsight",},
        Pos = Vector(2.5, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(0, 0, 0),
        -- ExtraSightDistance = 8
    },
			{
        PrintName = "Tactical",
        Category = {"eft_tactical_top","eft_tactical_top_big","eft_optic_small","eft_optic_large","eft_optic_medium","eft_optic_medium"},
        Pos = Vector(-1, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(1, 0, 0),
        -- ExtraSightDistance = 4
    },
}

ARC9.LoadAttachment(ATT, "eft_rearer_sight_tactical")
ATT = {}

ATT.PrintName = "rear sight"
ATT.CompactName = "rear sight"
ATT.Icon = nil
ATT.Description = [[lets you add a rear iron sight instead of an optic ]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"




ATT.Category = {"eft_optic_small"}

ATT.Attachments = {
	{
        PrintName = "Rear Sight",
        Category = {"eft_ar_rearsight", "eft_rearsight",},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(0, 0, 0),
        -- ExtraSightDistance = 8
    },

}

ARC9.LoadAttachment(ATT, "eft_rear_sight_tactical")

ATT = {}


ATT.PrintName = "ARSENAL 4 Piece Flash Hider"
ATT.CompactName = "4 piece"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
ATT.Category = {"eft_ak_receiver"}
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/darsu_eft/rooney/akm.mdl"
ATT.BoneMerge = true
ATT.Attachments = {
    {
        PrintName = "Caliber",
        Category = "eft_caliber_conversion",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 2, 0),

    },
}

ARC9.LoadAttachment(ATT, "eft_roo_akm_receiver")

ATT = {}


ATT.PrintName = "7.62x39 conversion"
ATT.CompactName = "4 piece"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
ATT.Category = {"eft_caliber_conversion"}
ATT.SortOrder = 1

ATT.Attachments = {
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_76239",
        Bone = "mod_magazine",
        Installed = "eft_ammo_76239_ps",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mag",
        Category = "eft_ak_762_mag",
        Pos = Vector(0, 0, 0),
        Bone = "mod_magazine",
        Bonemerge = true,
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -0.5, -1),
    },    

}

ARC9.LoadAttachment(ATT, "eft_roo_762_conversion")
ATT = {}


ATT.PrintName = "AK trigger"
ATT.CompactName = "trigger"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
ATT.Model = "models/weapons/arc9/darsu_eft/rooney/trig.mdl"
ATT.Category = {"eft_ak_trigger"}
ATT.SortOrder = 1

ARC9.LoadAttachment(ATT, "eft_ak_trigger")
ATT = {}

ATT.PrintName = "AK mag release"
ATT.CompactName = "trigger"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
ATT.Model = "models/weapons/arc9/darsu_eft/rooney/mr.mdl"
ATT.Category = {"eft_ak_mr"}
ATT.SortOrder = 1

ARC9.LoadAttachment(ATT, "eft_ak_mr")

ATT = {}

ATT.PrintName = "ak100 rear sight block"
ATT.CompactName = "trigger"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
BoneMerge = true
ATT.Model = "models/weapons/arc9/darsu_eft/rooney/ak100_rs_block.mdl"
ATT.Category = {"eft_ak_rsb"}
ATT.SortOrder = 1

ARC9.LoadAttachment(ATT, "eft_ak100_rearsightblock")

///////////////////////////////////////      eft_hg_ak_6p20sb9





ATT = {}

ATT.PrintName = "XM177 5.56x45 flash hider"
ATT.CompactName = "XM177"
ATT.Icon = nil
ATT.Description = [[Flash hider designed for special forces operations at night.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9_eft_shared/atts/muzzle/muzzle_xm177.mdl"
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.EFTErgoAdd = -10
ATT.CustomCons = { Ergonomics = "-10" }
ATT.ShootSound = { "weapons/darsu_eft/ak/fire_new/akm_close_loop_1.ogg", "weapons/darsu_eft/ak/fire_new/akm_close_loop_2.ogg", "weapons/darsu_eft/ak/fire_new/akm_close_loop_3.ogg", "weapons/darsu_eft/ak/fire_new/akm_close_loop_4.ogg" }
ATT.CustomPros = { Changes_sound = True }

ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96

ATT.Category = {"eft_ar15_muzzle", "eft_ak101_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_xm177")



ATT = {}

ATT.PrintName = [[M203 40mm underbarrel grenade launcher]]
ATT.CompactName = [[M203]]
ATT.Icon = Material("entities/eft_ar15_attachments/m203_40mm.png", "mips smooth")
ATT.Description = [[A single-shot 40mm underbarrel grenade launcher, designed for installation on M16 and M4 assault rifles.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.ExcludeElements = {
}

ATT.EFTErgoAdd = -41
ATT.CustomCons = { Ergonomics = "-41" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9

ATT.ReloadInSightsUBGL = false 

ATT.VisualRecoilUBGL = 0.5
ATT.VisualRecoilDampingConstUBGL = 125
ATT.VisualRecoilSpringMagnitudeUBGL = 2
ATT.VisualRecoilUpUBGL = 120 -- Vertical tilt
ATT.VisualRecoilSideUBGL = 0 -- Horizontal tilt
ATT.VisualRecoilRollUBGL = 0 -- Roll tilt

ATT.Model = "models/weapons/arc9/darsu_eft/mods/railm203.mdl"
-- ATT.ModelBodygroups = "01"
ATT.LHIK = true
ATT.LHIK_Priority = 100

ATT.MuzzleDeviceUBGL = true
ATT.DropMagazineAmountUBGL = 0

local path = "weapons/darsu_eft/m203/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}


ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
        EventTable = {
            { s = path .. "m203_trigger.ogg", t = 0 },
        }
    },
    ["fire_empty_ubgl"] = {
        Source = "fire",
    },
    ["reload_ubgl"] = {
        Source = "reload",
        EventTable = {
            -- { s = randspin, t = 0.05 },
            { s = path .. "m203_hand_on_tube.ogg", t = 10/24 },
            { s = path .. "fn40gl_tube_button.ogg", t = 12/24 },
            { s = path .. "m203_tube_open_empty.ogg", t = 16/24 },
            { s = path .. "m203_grenade_out_slide.ogg", t = 18/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 24/24 },

            { s = path .. "m203_grenade_in.ogg", t = 47/24 },
            { s = path .. "m203_hand_on_tube.ogg", t = 68/24 },
            { s = path .. "m203_tube_close_full.ogg", t = 71/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 76/24 },
            -- { s = randspin, t = 1.7 },
        }
    },
    ["enter_ubgl"] = {
        Source = "to_armed"
    },
    ["idle_ubgl"] = {
        Source = "idle_armed"
    },
    ["exit_ubgl"] = {
        Source = "to_idle"
    },
    ["enter_sights_ubgl"] = {
        Source = "idle_armed"
    },
    ["exit_sights_ubgl"] = {
        Source = "idle_armed"
    },
    ["inspect_ubgl"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 12/24 },
            { s = randspin, t = 41/24 },
            { s = randspin, t = 62/24 },
        }
    },
    ["inspect_check_ubgl"] = {
        Source = "check",
        EventTable = {
            { s = path .. "m203_hand_on_tube.ogg", t = 11/24 },
            { s = path .. "fn40gl_tube_button.ogg", t = 13/24 },
            { s = path .. "m203_tube_open_full.ogg", t = 16/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 25/24 },
            { s = path .. "m203_grenade_out.ogg", t = 33/24 },

            { s = path .. "m203_grenade_in.ogg", t = 75/24 },
            { s = path .. "m203_hand_on_tube.ogg", t = 98/24 },
            { s = path .. "m203_tube_close_full.ogg", t = 101/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 106/24 },
        }
    }
} -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.IKCameraMotionQCA = 3
ATT.IKCameraMotionOffsetAngle = Angle(0, 90, 2.5)

ATT.CamCoolViewUBGL = false

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 0, 0)
end

-- ATT.Category = {"fas_ubgl", "grip", "eft_ak_gp34"}
-- ATT.Category = {"eft_ak_gp34"}
ATT.Category = {"eft_foregrip_large"}

-- ATT.AimDownSightsTimeMult = 1.1
-- ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 0
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "M203"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 111

ATT.SpreadUBGL = 0.02  

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = path.."m203_fire_outdoor_close.ogg"
ATT.DistantShootSoundUBGL = path.."m203_fire_outdoor_distant.ogg"
ATT.ShootSoundIndoorUBGL = path.."m203_fire_indoor_close.ogg"
ATT.DistantShootSoundIndoorUBGL = path.."m203_fire_indoor_distant.ogg"
ATT.HasSightsUBGL = true

ATT.TriggerDelayUBGL = false

ATT.EnterUBGLSound = path.."m203_hand_out_tube.ogg"
ATT.ExitUBGLSound = path.."m203_hand_on_tube.ogg"

ATT.ShootEntUBGL = "arc9_eft_40mm_m381_bang" -- bla bla
ATT.ShootEntForceUBGL = 20000

ATT.MuzzleParticleUBGL = "muzzleflash_m79"
ATT.ModelScale = 1.2
ATT.ModelOffset = Vector(-2.55, 0, .6)
ATT.ModelAngleOffset = Angle(0, 0, 0)

-- ATT.AimDownSightsTimeUBGL =
-- please fixx  having gl fucks up regular ironsights on gun
-- ATT.Sights = {
    -- {
    --     Pos = Vector(2.3, 12, -3.3),
    --     Ang = Angle(0.29, -2.5+0.35, -2),
    --     Magnification = 1.1,
    --     ViewModelFOV = 50,
    --     UBGLOnly = true,
    --     CrosshairInSights = false,
    --     IsIronSight = true
    -- },
-- }

-- ATT.UBGLExclusiveSightsUBGL = true

ATT.DrawFunc = function(swep, model) 
    local eles = swep:GetElements()

    local bg = eles["eft_ammo_40x46_m381"] and 1 
    or eles["eft_ammo_40x46_m386"] and 2
    or eles["eft_ammo_40x46_m406"] and 3
    or eles["eft_ammo_40x46_m433"] and 4
    or eles["eft_ammo_40x46_m441"] and 5
    or eles["eft_ammo_40x46_m576"] and 6
    or eles["eft_ammo_40x46_m716"] and 7
    or 0

    model:SetBodygroup(1, bg) 
end

ATT.Attachments = {
    {
        PrintName = "Grenade type",
        Category = "eft_ammo_40x46",
        Pos = Vector(5, 0, 1),
        Ang = Angle(0, 0, 0),
        Integral = "eft_ammo_40x46_m406",
    },
}


ARC9.LoadAttachment(ATT, "eft_m203_rail")

ATT = {}

ATT.PrintName = "AR-15 Colt A1 pistol grip"
ATT.CompactName = "Colt A1"
ATT.Description = [[Colt A1 polymer pistol grip can be installed on any weapon compatible with AR-15 grips. Standard service grip for all AR-15-based weapons of US Army and USMC.]]
ATT.Icon = Material("entities/eft_attachments/pgrips/ar15grips/a2.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_colt_a1.mdl"

ATT.HasGrip = true

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_colta1")




ATT = {}

ATT.PrintName = [[M203 Grenade launcher Quadrant Sight]]
ATT.CompactName = [[Quadrant Sight]]
ATT.Icon = nil
ATT.Description = [[Quadrant Sight for The M203 Grenaden Launcher.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0




ATT.Model = "models/weapons/arc9_eft_shared/atts/muzzle/ar15_glsight.mdl"

ATT.DropMagazineAmountUBGL = 0

local path = "weapons/darsu_eft/ak/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
ATT.CamCoolViewUBGL = false

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 0, 0)
end

ATT.Category = {"ar15_glsight"}

-- ATT.AimDownSightsTimeMult = 1.1
-- ATT.SprintToFireTimeMult = 1.1


ATT.ModelOffset = Vector(3.65, -15,2)
ATT.ModelAngleOffset = Angle(-90, 0, 90)

ATT.AimDownSightsTimeUBGL = 0.4

ATT.Sights = {
    {
        Pos = Vector(2.3, 12, -3.3),
        Ang = Angle(0.29, -2.5+0.35-90, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(100) end
        end,
    },

    {
        Pos = Vector(2.3, 12, -4.3),
        Ang = Angle(0.3, -5+0.35-90, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(150) end
        end,
    },
    {
        Pos = Vector(2.375, 12, -6.15),
        Ang = Angle(0.48, -5-4.6+0.3-90, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(200) end
        end,
    },
    {
        Pos = Vector(2.45, 12, -8.15),
        Ang = Angle(0.7, -5-9.45+0.3-90, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(250) end
        end,
    },
    {
        Pos = Vector(2.54, 12, -10.1),
        Ang = Angle(0.95, -5-14.1+0.4-90, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(300) end
        end,
    },
    {
        Pos = Vector(2.61, 12, -12.65),
        Ang = Angle(1.17, -5-19.6+0.35-90, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(350) end
        end,
    },
    {
        Pos = Vector(2.75, 12-5, -23.7+5),
        Ang = Angle(2.5, -5-37.8+0.3-90, -4),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(400) end
        end,
    },
}

local gp25zeroing = {-5, -6.9, -9.6, -13.45, -14.1, -24.6, -45} -- negro

ATT.ShootAngOffsetHook = function(swep, val) 
    if swep:GetUBGL() and swep:GetInSights() then
        return Angle(-gp25zeroing[swep:GetMultiSight()], 0, 0)
    end
    return Angle(0, 0, 0)
end

ATT.DrawFunc = function(swep, model)
    if swep:GetUBGL() then
        model:SetPoseParameter("zeroing", swep:GetMultiSight()-1)
    end
end

ATT.UBGLExclusiveSightsUBGL = true

ARC9.LoadAttachment(ATT, "eft_m203_sight")
local ATT = {}

ATT.PrintName = [[M203 quadrant sight mount ]]
ATT.CompactName = [[quadrant sight mount]]
ATT.Icon = nil
ATT.Description = [[Quadrant Sight mount for for the M203 Grenade Launcher (ONLY WORKS ON LEFT RAIL).]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.Category = {"eft_tactical", }

ATT.Model = "models/weapons/arc9_eft_shared/atts/muzzle/ar15_rail_glsight_mount.mdl"
ATT.ModelOffset = Vector(3.33, -3.17, 19.75)
ATT.ModelAngleOffset = Angle(-90, 90, 180)
ATT.Attachments = {
    {
        PrintName = "Quadrant Sight",
        Category = {"ar15_glsight"},
        Bone = "weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(1, 1, 1),

    },
}

ARC9.LoadAttachment(ATT, "eft_m203_railmount")



ATT = {}

ATT.PrintName = "Glock 47 9x19 barrel"
ATT.CompactName = "G47"
ATT.Icon = Material("entities/eft_glock_attachments/barrel.png", "mips smooth")
ATT.Description = [[A standard barrel designed to replace or be an alternative slide for the Glock 19 9x19 pistol. Manufactured by Glock For the United States Customs and Border Protection (CBP) 
"Siempre estoy listo para cruzar
Polvo, ruedas y tambien cristal"- From PRC by Peso Pluma.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "001"
ATT.BoneMerge = true
ATT.ModelOffset = Vector(10, -5, 5)
ATT.ModelAngleOffset = Angle(0,-90, 0)
ATT.ActivateElements  = {"eft_g47"}

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96
ATT.PhysBulletMuzzleVelocityMult = 0.99

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g19x_barrel"}


ARC9.LoadAttachment(ATT, "eft_barrel_g47_std")



ATT = {}

ATT.PrintName = "(AK)C-CLAMP"
ATT.CompactName = "(AK)C-CLAMP"
ATT.Icon = nil
ATT.Description = [[A Method Of Gripping A Weapon. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_moe.mdl"
ATT.ModelAngleOffset = Angle(10,90, 0)
ATT.ModelOffset = Vector(0.3, -04, 02)

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"

ATT.Category = "eft_foregrip_small"
ARC9.LoadAttachment(ATT, "eft_foregrip_c_clamp")

ATT = {}

ATT.PrintName = "(AR)C-CLAMP"
ATT.CompactName = "(AR)C-CLAMP"
ATT.Icon = nil
ATT.Description = [[A Method Of Gripping A Weapon. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_moe.mdl"
ATT.ModelAngleOffset = Angle(10,90, 10)
ATT.ModelOffset = Vector(0.3, -04, 1.7)
ATT.ModelScale = .75

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"

ATT.Category = "eft_foregrip_small"
ARC9.LoadAttachment(ATT, "eft_foregrip_c_clampAR")

ATT = {}

ATT.PrintName = "PC9 rear sight"
ATT.CompactName = "PC9 RS"
ATT.Icon = Material("entities/eft_glock_attachments/rs.png", "mips smooth")
ATT.Description = [[A standard-issue rear sight for The PC9 Glock Parts kit.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pc9_rs.mdl"
ATT.ModelBodygroups = "0"
ATT.ModelOffset = Vector(-.003, 0, .01)

ATT.Sights = {
    {
        Pos = Vector(0, 12, -0.55),
        Ang = Angle(0, -0.05, 0),
        Magnification = 1.1,
        IsIronSight = true
    }
}


ATT.Category = {"eft_g17_rs"}


ARC9.LoadAttachment(ATT, "eft_rs_pc9_std")

ATT = {}

ATT.PrintName = "PC9 front sight"
ATT.CompactName = "PC9 FS"
ATT.Icon = Material("entities/eft_glock_attachments/fs.png", "mips smooth")
ATT.Description = [[A standard-issue front sight for the PC9 Glock Parts Kit.]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_g17_fs"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pc9_fs.mdl"
ATT.ModelBodygroups = "0"
ATT.ModelAngleOffset = Angle(0, 90, 0)
ATT.ModelOffset = Vector(0, -.053, 0.01)


ARC9.LoadAttachment(ATT, "eft_fs_pc9_std")
ATT = {}

ATT.PrintName = "NcSTAR MPR45 Backup mount"
ATT.CompactName = "MPR45"
ATT.Icon = Material("entities/eft_attachments/mount/ncstar45.png", "mips smooth")
ATT.Description = [[A universal mount by NcStar that allows installing an auxiliary sight at 45 degrees angle.]]
ATT.SortOrder = 1

ATT.Scale = 1
ATT.Model = "models/weapons/arc9_eft_shared/atts/mount/eft_backupmount_ncstar.mdl"

ATT.Category = {"eft_rearsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.ModelOffset = Vector(0, 0, -0)

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_small", "eft_t12w"},
        Pos = Vector(0, 0.85, -0.2),
        --Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 45),
        Icon_Offset = Vector(0, 0, 1),
        ExtraSightDistance = 4
    },
}


ARC9.LoadAttachment(ATT, "eft_mount_ncstarrear")

ATT = {}

ATT.PrintName = "DoubleStar ACE AR-15 Grip Adapter"
ATT.CompactName = "AR-15"
ATT.Icon = Material("entities/eft_ak_attachments/grip/ak_adaptor.png", "mips smooth")
ATT.Description = [[AR15 Pistol Grip Adaptor for AK type rifles,Use your favorite AR grip on your AK.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
ATT.CustomPros = { Ergonomics = "-1" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_pgrip_ar.mdl"

ATT.Category = {"eft_ak_grip"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_ar15_pgrip"},
        Pos = Vector(0, -0.48, 0.4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-0.2, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_grip_ak_ar")
ATT = {}

ATT.PrintName = "Foregrip back"
ATT.CompactName = "Foregrip back"
ATT.Icon = nil
ATT.Description = [[[puts your foregrip back by a little bit. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.RecoilMult = 1.1
ATT.VisualRecoilMult = 1.1


ATT.Attachments = {
    {
        PrintName = "grip",
        Category = "eft_foregrip_small",
        Pos = Vector(1, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ATT.Category = {"eft_foregrip_large","eft_foregrip_small"}
ARC9.LoadAttachment(ATT, "eft_foregrip_backsdssdsdds")
ATT = {}

ATT.PrintName = "fold sights"
ATT.Description = [[
folds eft sights down allowing you to use low profile sights on the MBUS or just have folded sights.

]]
ATT.Icon = nil

ATT.SortOrder = 4
ATT.Free = false

ATT.Category = {"SAA_SCOPE_SMALL", "optic_picatinny","eft_optic_small","eft_optic_medium","eft_optic_large"}
ATT.Sights = {
    {
        Pos = Vector(0, 7.5, -.645),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1

    },
}



ATT.HoloSight = false
ATT.FoldSights = true
ARC9.LoadAttachment(ATT, "saaa_foldeftsights")
ATT = {}

ATT.PrintName = "fold sights(default aim position)"
ATT.Description = [[
folds eft sights down allowing you to use low profile sights on the MBUS or just have folded sights.

]]
ATT.Icon = nil

ATT.SortOrder = 4
ATT.Free = false

ATT.Category = {"SAA_SCOPE_SMALL", "optic_picatinny","eft_optic_small","eft_optic_medium","eft_optic_large"}



ATT.HoloSight = false
ATT.FoldSights = true
ARC9.LoadAttachment(ATT, "saaa_dposfoldeftsights")

ATT = {}

ATT.PrintName = "grip method"
ATT.CompactName = "grip "
ATT.Description = [[A very ergonomic gripping method, that sacrifices recoil for better ergonomics.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/fg_fortisshift.mdl"
ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.RecoilMult = 1.1
ATT.VisualRecoilMult = 1.1

ATT.SortOrder = 0
ATT.Category = "eft_foregrip_small"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_foregrip_invisible")
ATT = {}

ATT.PrintName = "M870 12ga 508mm barrel vent-rib barrel"
ATT.CompactName = "M870 508mm"
ATT.Icon = Material("entities/eft_m870_attachments/508.png", "mips smooth")
ATT.Description = [[A 508mm barrel for the Remington Model 870 12 gauge shotgun.]]

ATT.HasBarrel = true 
ATT.BarrelLengthAdd = 6
ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_508_ventrib.mdl"
ATT.BoneMerge = true
ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.Spread = 18.91 * ARC9.MOAToAcc

ATT.HeatCapacityMult = 1.06
ATT.HeatDissipationMult = 0.98

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m870_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = "eft_12ga_muzzle",
        Pos = Vector(-17.5, 0, 0.0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1, 0, 0),
    },
    {
        PrintName = "Clamp",
        Category = "eft_m870_clamp",
        Pos = Vector(-14, 0, 0.5),
        Ang = Angle(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_m870_barrel_508_vent_rib")

ATT = {}

ATT.PrintName = "(AK)C-CLAMP"
ATT.CompactName = "FIXED(AK)C-CLAMP"
ATT.Icon = nil
ATT.Description = [[A Method Of Gripping A Weapon. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_moe.mdl"
ATT.ModelAngleOffset = Angle(10,90, 0)
ATT.ModelOffset = Vector(0.3, -04, 02)

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"

ATT.Category = "eft_foregrip_fix"
ARC9.LoadAttachment(ATT, "eft_foregrip_c_clampfix")

ATT = {}

ATT.PrintName = "(AR)C-CLAMP"
ATT.CompactName = "FIXED(AR)C-CLAMP"
ATT.Icon = nil
ATT.Description = [[A Method Of Gripping A Weapon. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_moe.mdl"
ATT.ModelAngleOffset = Angle(10,-90, 10)
ATT.ModelOffset = Vector(0.3, -04, 01.5)
ATT.ModelScale = .75

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"

ATT.Category = "eft_foregrip_fix"
ARC9.LoadAttachment(ATT, "eft_foregrip_c_clampARfix")

ATT = {}

ATT.PrintName = "Glock rear sight mount"
ATT.CompactName = "Glock RS"
ATT.Icon = nil
ATT.Description = [[A mount that allows you to add glock rear sights.]]
ATT.SortOrder = 1

ATT.Scale = 1
ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_glock_rs.mdl"

ATT.Category = {"eft_rearsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.ModelOffset = Vector(0, 0, -0)

ATT.Attachments = {
    {
        PrintName = "Rear Sight",
        Category = {"eft_g17_rs"},
        Pos = Vector(-2, 0, .1),
        --Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1),
        ExtraSightDistance = -4    },
}


ARC9.LoadAttachment(ATT, "eft_mount_g17rs")
ATT = {}

ATT.PrintName = "Glock front sight mount"
ATT.CompactName = "Glock FS"
ATT.Icon = nil
ATT.Description = [[A mount that allows you to add glock front sights.]]
ATT.SortOrder = 1

ATT.Scale = 1
ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_glock_fs.mdl"

ATT.Category = {"eft_frontsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.ModelOffset = Vector(0, 0, -0)

ATT.Attachments = {
    {
        PrintName = "Front Sight",
        Category = {"eft_g17_fs"},
        Pos = Vector(4.5, 0, .06),
        --Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 1),
        ExtraSightDistance = -4    },
}


ARC9.LoadAttachment(ATT, "eft_mount_g17fs")


ATT = {}

ATT.PrintName = "Zenit RK-0 tactical foregrip"
ATT.CompactName = "RK-0"
ATT.Description = [[The RK-0 foregrip can be installed on the lower part of handguards with a Zenit Basis rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/rk0.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/roo/mods/fg_rk0.mdl"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.Folder = "Zenit"
ATT.SortOrder = 0
ATT.Category = "eft_zenitb"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_roo_foregrip_rk0")


///////////////////////////////////////      eft_roo_foregrip_rk1


ATT = {}

ATT.PrintName = "Zenit RK-1 tactical foregrip"
ATT.CompactName = "RK-1"
ATT.Description = [[The RK-1 foregrip can be installed on the lower part of handguards with a Zenit Basis rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/rk1.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/roo/mods/fg_rk1.mdl"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97

ATT.Folder = "Zenit"
ATT.SortOrder = 0
ATT.Category = "eft_zenitb"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_roo_foregrip_rk1")


///////////////////////////////////////      eft_roo_foregrip_rk2


ATT = {}

ATT.PrintName = "Zenit RK-2 tactical foregrip"
ATT.CompactName = "RK-2"
ATT.Description = [[The RK-2 foregrip can be installed on the lower part of handguards with a Zenit Basis rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/rk2.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/roo/mods/fg_rk2.mdl"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = -8
ATT.CustomCons = { Ergonomics = "-8" }
ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96

ATT.Folder = "Zenit"
ATT.SortOrder = 0
ATT.Category = "eft_zenitb"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_roo_foregrip_rk2")


///////////////////////////////////////      eft_roo_foregrip_rk4


ATT = {}

ATT.PrintName = "Zenit RK-4 tactical foregrip"
ATT.CompactName = "RK-4"
ATT.Description = [[The RK-4 foregrip can be installed on the lower part of handguards with a Zenit Basis rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/rk4.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/roo/mods/fg_rk4.mdl"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.Folder = "Zenit"
ATT.SortOrder = 0
ATT.Category = "eft_zenitb"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_roo_foregrip_rk4")


///////////////////////////////////////      eft_roo_foregrip_rk5


ATT = {}

ATT.PrintName = "Zenit RK-5 tactical foregrip"
ATT.CompactName = "RK-5"
ATT.Description = [[The RK-5 foregrip can be installed on the lower part of handguards with a Zenit Basis rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/rk5.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/roo/mods/fg_rk5.mdl"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.Folder = "Zenit"
ATT.SortOrder = 0
ATT.Category = "eft_zenitb"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_roo_foregrip_rk5")


///////////////////////////////////////      eft_roo_foregrip_rk6


ATT = {}

ATT.PrintName = "Zenit RK-6 tactical foregrip"
ATT.CompactName = "RK-6"
ATT.Description = [[The RK-6 foregrip can be installed on the lower part of handguards with a Zenit Basis rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/rk6.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/roo/mods/fg_rk6.mdl"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.Folder = "Zenit"
ATT.SortOrder = 0
ATT.Category = "eft_zenitb"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_roo_foregrip_rk6")
ATT = {}

ATT.PrintName = "Universal picatinny"
ATT.CompactName = "Universal picatinny"
ATT.Icon = nil
ATT.Description = [[Use virtually all picatinny attachments.]]
ATT.SortOrder = 1


ATT.Category = {"eft_rearsight","eft_frontsight","eft_tactical","eft_tactical_big","eft_tactical_top_big","eft_tactical_top","eft_foregrip_small","eft_foregrip_big","eft_optic_small","eft_offset_mount","eft_optic_large","eft_optic_medium"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.ModelOffset = Vector(0, 0, -0)

ATT.Attachments = {
    {
        PrintName = "Picatinny",
        Category = {"eft_rearsight","eft_frontsight","eft_tactical","eft_tactical_big","eft_tactical_top_big","eft_tactical_top","eft_foregrip_small","eft_foregrip_big","eft_optic_small","eft_offset_mount","eft_optic_large","eft_optic_medium"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1, 1),
        },
}

ARC9.LoadAttachment(ATT, "eft_universal")

ATT = {}

ATT.PrintName = "NcSTAR MPR45 Backup mount(flipped)"
ATT.CompactName = "MPR45(flipped)"
ATT.Icon = Material("entities/eft_attachments/mount/ncstar45.png", "mips smooth")
ATT.Description = [[A universal mount by NcStar that allows installing an auxiliary sight at 45 degrees angle.

this one is reversed to the other side]]
ATT.SortOrder = 1

ATT.Scale = 1
ATT.Model = "models/weapons/arc9_eft_shared/atts/mount/eft_backupmount_ncstar.mdl"
ATT.ModelAngleOffset = Angle(0, 0, 180)
ATT.Category = {"eft_rearsight","eft_backup_mount"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.ModelOffset = Vector(0, 0, -0)

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_small", "eft_t12w"},
        Pos = Vector(0, -0.85, -0.2),
        --Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, -45),
        Icon_Offset = Vector(0, 0, 1),
        ExtraSightDistance = 4
    },
}


ARC9.LoadAttachment(ATT, "eft_mount_ncstarflipped")

ATT = {}

ATT.PrintName = "Glock Taran Tactical sight mount cap"
ATT.CompactName = "G TTI cap"
ATT.Icon = Material("entities/eft_glock_attachments/ztcap.png", "mips smooth")
ATT.Description = [[A protective steel cap covering the mount for reflex sights, manufactured by Taran Tactical.]]

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/tti_rmr_cover.mdl"
ATT.ModelOffset = Vector(0.04, 0, 0.039)

ATT.Category = {"eft_rmr"}


ARC9.LoadAttachment(ATT, "eft_tac_g17_tti_cap")
ATT = {}

ATT.PrintName = "Glock 34 9x19 barrel"
ATT.CompactName = "G34"
ATT.Icon = Material("entities/eft_glock_attachments/barrel.png", "mips smooth")
ATT.Description = [[A standard barrel designed to replace or be an alternative slide for the Glock 17 9x19 pistol. Manufactured by Glock.]]
ATT.ActivateElements  = {"eft_g34"}
ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_34.mdl"
ATT.BoneMerge = true

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 1
ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_barrel"}


ARC9.LoadAttachment(ATT, "eft_barrel_g34_std")

ATT = {}

ATT.PrintName = "Glock 34 tti 9x19 barrel"
ATT.CompactName = "G34"
ATT.Icon = Material("entities/eft_glock_attachments/barrel.png", "mips smooth")
ATT.Description = [[A barrel designed to replace the Glock 17 9x19 pistol barrel. Manufactured by Taran tactical.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_tti.mdl"
ATT.ModelBodygroups = "2"
ATT.BoneMerge = true
ATT.ActivateElements  = {"eft_g34"}
ATT.Folder = "TTI"
ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 1

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_barrel"}
ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_glock_muzzle", "eft_g17_muzzle"},
        ExcludeElements = {"eft_silencer_fd917", "eft_muzzle_g17_g4"},
        Pos = Vector(0, 4.18, -0.55),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_barrel_g34_tti")
ATT = {}

ATT.PrintName = "grip method"
ATT.CompactName = "grip "
ATT.Description = [[A very ergonomic gripping method.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/fg_fortisshift.mdl"
ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.ModelOffset = Vector (-4,.25,-.5)
ATT.ModelAngleOffset = Angle(180, 180, 0)
ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.RecoilMult = 1.1
ATT.VisualRecoilMult = 1.1

ATT.SortOrder = 0
ATT.Category = "eft_tactical_pistol"
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Attachments = {
{
        PrintName = "Tactical",
        Bone = "weapon",
        Category = {"eft_tactical_pistol", "eft_um3", "eft_g17_tac"},
        Pos = Vector(0, 0,0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, 0, 0),
    },

}

ARC9.LoadAttachment(ATT, "eft_pistol_grip11111")

ATT = {}

ATT.PrintName = "one handed"
ATT.CompactName = "1hand "
ATT.Description = [[hold the gun with one hand.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/fg_fortisshift.mdl"
ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.ModelOffset = Vector (-15,-13,-30)
ATT.ModelAngleOffset = Angle(180, 180, 0)
ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.RecoilMult = 1.40
ATT.VisualRecoilMult = 1.40
ATT.RecoilMultSights = .75
ATT.VisualRecoilMultSights = .75

ATT.SortOrder = 0
ATT.Category = {"eft_tactical_pistol","eft_foregrip_small"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Attachments = {
{
        PrintName = "Tactical",
        Bone = "weapon",
        Category = {"eft_tactical_pistol","eft_foregrip_small", "eft_um3", "eft_g17_tac"},
        Pos = Vector(0, 0,0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, 0, 0)
    }

}

ARC9.LoadAttachment(ATT, "eft_pistol_grip21111")


ATT = {}

ATT.PrintName = "Kochevnik Trigger cover"
ATT.CompactName = "Kochevnik"
ATT.Icon = nil
ATT.Description = [[a cover for the trigger to prevent it being snagged on things when using the kochevnik bullpup kit.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.Max = 1

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_pgrip_kocehvnik_std.mdl"

ATT.Category = {"eft_ak_grip"}


ATT.ToggleStats = {
    {
        PrintName = "idk",
        ModelOffset = Vector(0,0,0.1)

    },
    {
        PrintName = "idk",
        ModelOffset = Vector(0,-.01,0.2)

    },
}

ARC9.LoadAttachment(ATT, "eft_grip_ak_kocehvnim")


ATT = {}

ATT.PrintName = "infinite LaRue LT101 QD Tactical Picatinny Riser mount"
ATT.CompactName = "infinite QD LT101"
ATT.Icon = Material("entities/eft_attachments/scopes/lt101.png", "mips smooth")
ATT.Description = [[A Quick-Detach Picatinny riser to elevate the reflex or optical sight position, manufactured by LaRue.

infinityly stackable]]

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mount_all_larue_picatinny_raiser_qd_lt101.mdl"

ATT.Category = {"eft_optic_large"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.ModelOffset = Vector(0, 0, -0)

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large", "eft_optic_small", "eft_optic_medium"},
        Pos = Vector(-0.2, -0, -0.55),
        --Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.2),
    },
}


ARC9.LoadAttachment(ATT, "eft_mount_lt101inf")

ATT = {}

ATT.PrintName = "Glock 17l 9x19 barrel"
ATT.CompactName = "G17l"
ATT.Icon = Material("entities/eft_glock_attachments/barrel.png", "mips smooth")
ATT.Description = [[A standard barrel designed to replace or be an alternative slide for the Glock 17 9x19 pistol. Manufactured by Glock.]]
ATT.ActivateElements  = {"eft_g34","eft_g17l"}
ATT.Model = "models/weapons/arc9/darsu_eft/mods/barrel_34.mdl"
ATT.BoneMerge = true
ATT.ModelBodygroups = "100"

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.932
ATT.RecoilMult = 0.93
ATT.PhysBulletMuzzleVelocityMult = 1.03
ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_barrel"}


ARC9.LoadAttachment(ATT, "eft_barrel_g17l_std")

ATT = {}

ATT.PrintName = "BCM GUNFIGHTER MOD 3 vertical foregrip"
ATT.CompactName = "MOD3"
ATT.Description = [[Lightweight polymer tactical grip produced by BCM.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/bcm.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/fg_mlok_bcm3.mdl"

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.SortOrder = 0
ATT.Category = "eft_grip_keymod"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_foregrip_bcm_keymod")
ATT = {}

ATT.PrintName = "BCM GUNFIGHTER MOD 3 vertical foregrip"
ATT.CompactName = "MOD3"
ATT.Description = [[Lightweight polymer tactical grip produced by BCM.]]
ATT.Icon = Material("entities/eft_attachments/foregrips/bcm.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/fg_mlok_bcm3.mdl"
ATT.ModelAngleOffset = Angle(0, 0,90)
ATT.LHIK_Priority = 2
ATT.LHIK = true
ATT.ModelBodygroups = "1"

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.SortOrder = 0
ATT.Category = "eft_foregrip_mlok"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_foregrip_bcm_mlok")

ATT = {}

ATT.PrintName = "AR-15 BCM GUNFIGHTER MOD 3 Beavertail pistol grip"
ATT.CompactName = "MOD3"
ATT.Description = [[BCM MOD3 pistol grip with Beavertail can be installed on any weapon compatible with AR-15 "beavertail" style grips ,produced by BCM.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_bcm_mod3.mdl"

ATT.HasGrip = true

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip_m4"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_bcm3")

ATT = {}

ATT.PrintName = "Magpul MOE SL Carbine stock"
ATT.CompactName = "MOE SL"
ATT.Description = [[A drop-in replacement buttstock for AR-15/M16 carbines. It uses mil-spec sized receiver extension tubes. Designed for the modern battlefield, the sleek profile, dual-side release latches, rolled toe, and angled rubber butt-pad are optimized for use with body armor or modular gear and provides for efficient shoulder transitions.]]
ATT.Icon = Material("entities/eft_attachments/stocks/ds150.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_bcm_mod1.mdl"
// i know its not bcm 
ATT.HasStock = true

ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68
ATT.Folder = "Magpul"

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_stock_moe_sl")

ATT = {}

ATT.PrintName = "Glock Polymer80 9x19 barrel"
ATT.CompactName = "P80"
ATT.Icon = Material("entities/eft_glock_attachments/barrel.png", "mips smooth")
ATT.Description = [[A barrel for Glock 9x19 style weapons,
manufactured by Polymer80.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_p80_g19.mdl"
ATT.BoneMerge = true
ATT.ModelBodygroups = "200"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.VisualRecoilMult = 0.95
ATT.RecoilMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 0.97

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_barrel"}


ARC9.LoadAttachment(ATT, "eft_barrel_pfc19_std")


ATT = {}

ATT.PrintName = "AK Zenit RP-1 charging handle (to scale)"
ATT.CompactName = "RP-1(to scale)"
ATT.Icon = Material("entities/eft_ak_attachments/rp1.png", "mips smooth")
ATT.Description = [[The RP-1 charging handle by Zenit is a milled detail, manufactured with D16T aluminum alloy with black coating. 
It's compatible with all models of AK family rifles. 
The RP-1 is larger and more convenient than the standard charging handle, which improves the weapon ergonomics and makes handling more comfortable. 
The RP-1 is installed above the base handle through kit-enclosed bolts. 
© Zenit
the rp1 in eft has weird innacurate proportions, this version is accurate proportions and size,this version is to scale.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/charge_ak_zenit_rp1_2scale.mdl"
ATT.Category = {"eft_ak_charge"}


ARC9.LoadAttachment(ATT, "eft_charge_ak_rp1_2scale")

ATT = {}

ATT.PrintName = "AK Tromix charging handle "
ATT.CompactName = "Tromix"
ATT.Icon = Material("entities/eft_ak_attachments/rp1.png", "mips smooth")
ATT.Description = [[Extended charging handle for all models of AK family rifles. 
manufactured by Tromix. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.Model = "models/weapons/arc9/darsu_eft/mods/charge_ak_zenit_tromix.mdl"
ATT.Category = {"eft_ak_charge"}


ARC9.LoadAttachment(ATT, "eft_charge_ak_tromix")

ATT = {}

ATT.PrintName = "AK TWS Rear Sight"
ATT.CompactName = "TWS"
ATT.Icon = nil
ATT.Description = [[Standard iron sight for The Texas Weapon Systems Dog Leg Rail dust cover.
]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/arc9/darsu_eft/mods/tws_rs.mdl"

ATT.Category = {"eft_rearsight"}
ATT.MenuCategory = "ARC9 - EFT Attachments"



ATT.Sights = {
    {
        Pos = Vector(0, 10, -0.50),
        Ang = Angle(0, -0.65, 0),
        Magnification = 1.1,
        ViewModelFOV = 63,
        IsIronSight = true
    }
}

ATT.FoldSights = true

ARC9.LoadAttachment(ATT, "eft_rearsight_TWS")