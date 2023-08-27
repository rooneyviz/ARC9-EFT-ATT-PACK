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
ATT.Category = {"eft_ak74_muzzle", "eft_ak103_muzzle", "eft_ak_ttak", "eft_rpk16_muzzle"}
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

ATT.PrintName = "High Standard XM177 Stock"
ATT.CompactName = "XM177"
ATT.Description = [[The High Standard XM177 telescoping stock closely follows the classic XM177 stock except for a few geometry details.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_high_standart_xm177.mdl"

ATT.HasStock = true

ATT.RecoilMult = 0.83
ATT.VisualRecoilMult = 0.83

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_stock_m177")

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

ATT.PrintName = "AR-15 Colt A2 Stock"
ATT.CompactName = "M16A2"
ATT.Description = [[Colt A2 Stock, Mil-Spec diameter will fit any AR-15-based carbine or rifle.]]
ATT.Icon = Material("entities/eft_attachments/stocks/a2.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_colt_stock_a2.mdl"
ATT.ModelOffset = Vector(2.75, 0, 0.9)
ATT.HasBufferTube = true

ATT.RecoilMult = 0.7
ATT.VisualRecoilMult = 0.7

ATT.ExcludeElements = {"pgrip_stock"}


-- ATT.EFTErgoAdd = 4
-- ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock_a2"
ATT.MenuCategory = "ARC9 - EFT Attachments"
ARC9.LoadAttachment(ATT, "eft_ar_m16a2_stock")




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
ATT.ModelOffset = Vector(3.15, -3.15, 19.75)
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

ATT.PrintName = "Glock 47 9x19 MOS slide"
ATT.CompactName = "G MOS"
ATT.Icon = Material("entities/eft_glock_attachments/slide_mos.png", "mips smooth")
ATT.Description = [[The Glock 47 MOS (Modular Optic System) slide designed to replace or be an alternative slide for the Glock 19 9x19 pistol. Manufactured by Glock For The United States Customs and Border Protection (CBP)enforcement 
"Welcome to the United States
...
Are you coming from Mexico?"- From Soy De Rancho by El Komander.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "300"
ATT.BoneMerge = true
-- ATT.VisualRecoilMult = 0.99
ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g19x_rec","eft_g19x_rec_backplate"}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, 0, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },    {
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.325, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Compensator",
        Category = "eft_g17_g4",
        Pos = Vector(0, 5, 0.6),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mount",
        Category = "eft_g17_tangodown",
        Pos = Vector(0, -0.92, -0.15),
        Icon_Offset = Vector(0.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g47_mos")

ATT = {}

ATT.PrintName = "Glock OEM Magazine Plate"
ATT.CompactName = "Glock OEM "
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = [[A standard-issue OEM Magazine Plate for Glock pistols.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ActivateElements = {"eft_roosys_0"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "030"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_oem")
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

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 0.97

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
ATT.ModelOffset = Vector(0.3, -04, 01.5)
ATT.ModelScale = .75

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"

ATT.Category = "eft_foregrip_small"
ARC9.LoadAttachment(ATT, "eft_foregrip_c_clampAR")
ATT = {}

ATT.PrintName = "Glock 9x19 \"Big Stick\" 31-round magazine (Coyote)"
ATT.CompactName = "Big Stick"
ATT.Icon = Material("entities/eft_glock_attachments/bs31.png", "mips smooth")
ATT.Description = [[A factory-produced 31-round 9x19 magazine for Glock pistols. Coyote version.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -5
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-5" }
ATT.MalfunctionMeanShotsToFailMult = 0.85

ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"
ATT.ModelBodygroups = "3"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 31
ATT.DropMagazineAmount = "1"
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.Category = {"eft_g17_mag"}
ATT.Attachments = {

    {
        PrintName = "MagPlate",
        Category = "eft_glock_magplate",
        Pos = Vector(1.06,0, 2.91),
        Ang = Angle(0, 0, 0),
        Integral = true,
        Icon_Offset = Vector(-1.5,0, -3),

    },
}


ARC9.LoadAttachment(ATT, "eft_roosys_mag_bigstick31")

ATT = {}

ATT.PrintName = "Glock 9x19 \"Big Stick\" 24-round magazine (Coyote)"
ATT.CompactName = "Big Stick"
ATT.Icon = Material("entities/eft_glock_attachments/bs24.png", "mips smooth")
ATT.Description = [[A factory-produced 24-round 9x19 magazine for Glock pistols. Coyote version.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -4
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.9

ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"
ATT.ModelBodygroups = "2"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 24
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.Category = {"eft_g17_mag"}
ATT.Attachments = {

    {
        PrintName = "MagPlate",
        Category = "eft_glock_magplate",
        Pos = Vector(.64,0, 1.72),
        Ang = Angle(0, 0, 0),
        Integral = true,
        Icon_Offset = Vector(-1.5,0, -3),

    },
}

ARC9.LoadAttachment(ATT, "eft_roosys_mag_bigstick24")




ATT = {}

ATT.PrintName = "Glock 9x19 17-round magazine"
ATT.CompactName = "Glock 9x19"
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = [[A standard-issue 17-round 9x19 magazine for Glock pistols.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
-- ATT.MalfunctionMeanShotsToFailMult = 0.85

ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"

ATT.ChamberSize = 1
ATT.ModelBodygroups = "1"
ATT.ClipSize = 17
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"hasmag"}

ATT.Category = {"eft_g17_mag"}
ATT.Attachments = {

    {
        PrintName = "MagPlate",
        Category = "eft_glock_magplate",
        Pos = Vector(0,0, 0),
        Ang = Angle(0, 0, 0),
        Integral = true,
        Icon_Offset = Vector(-1.5,0, -3),
		Installed = "eft_roosys_magplate_oem"


    },
}


ARC9.LoadAttachment(ATT, "eft_roosys_mag_g17_std_17")



ATT = {}

ATT.PrintName = "Glock OEM Magazine Plate"
ATT.CompactName = "Glock OEM "
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = [[A standard-issue OEM Magazine Plate for Glock pistols.]]
ATT.SortOrder = 0

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ActivateElements = {"eft_roosys_0"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"

ATT.ModelBodygroups = "04"
ATT.ClipSizeAdd = 0

ATT.Category = {"eft_glock_magplate"}


ARC9.LoadAttachment(ATT, "eft_roosys_magplate_oem")

ATT = {}

ATT.PrintName = "Glock 19X OEM +2 Magazine Plate"
ATT.CompactName = "Glock 19X +2 OEM "
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = [[A standard-issue Glock 19X OEM Magazine Plate for Glock pistols That Adds 2 Rounds.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.EFTErgoAdd = -0.5
ATT.CustomCons = { Ergonomics = "-0.5" }
ATT.MalfunctionMeanShotsToFailMult = 0.99
ATT.ActivateElements = {"eft_roosys_1"}


ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"


ATT.ModelBodygroups = "01"
ATT.ClipSizeAdd = 2

ATT.Category = {"eft_glock_magplate"}


ARC9.LoadAttachment(ATT, "eft_roosys_magplate_oem2")

ATT = {}

ATT.PrintName = "Glock TTI +6 Magazine Plate"
ATT.CompactName = "Glock TTI +6"
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = [[An Aftermarket Glock Magazine Plate for Glock pistols That Adds 6 Rounds.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.EFTErgoAdd = -1.5
ATT.CustomCons = { Ergonomics = "-1.5" }
ATT.MalfunctionMeanShotsToFailMult = 0.975
ATT.ActivateElements = {"eft_roosys_1"}


ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"

ATT.ModelBodygroups = "05"
ATT.ClipSizeAdd = 6

ATT.Category = {"eft_glock_magplate"}


ARC9.LoadAttachment(ATT, "eft_roosys_magplate_tti6")

ATT = {}

ATT.PrintName = "Glock KRISS +23 Magazine Plate"
ATT.CompactName = "Glock KRISS +23"
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = [[An Aftermarket Glock Magazine Plate for Glock pistols That Adds 23 Rounds.]]
ATT.ActivateElements = {"eft_roosys_2"}

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.9


ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"
ATT.ModelOffset = Vector(0,0,0)
ATT.ModelAngleOffset = Angle(0,0,0)

ATT.ModelBodygroups = "06"
ATT.ClipSizeAdd = 23

ATT.Category = {"eft_glock_magplate"}
ATT.Attachments = {

    {
        PrintName = "MagPlate",
        Category = "eft_glock_magplate",
        Pos = Vector(1.15,0, 4.75),
        Ang = Angle(-10, 0, 0),
        Integral = true,
        Icon_Offset = Vector(-1.5,0, -3),
		Installed = "eft_roosys_magplate_oem"


    },
}


ARC9.LoadAttachment(ATT, "eft_roosys_magplate_kriss23actual")
--[[ ATT = {}

ATT.PrintName = "Glock KRISS +17 Magazine Plate"
ATT.CompactName = "Glock KRISS +17"
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = An Aftermarket Glock Magazine Plate for Glock pistols That Adds 23 Rounds.
ATT.ActivateElements = {"eft_roosys_2"}

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.9


ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"
ATT.ModelOffset = Vector(0,0,0)
ATT.ModelAngleOffset = Angle(0,90,0)

ATT.ModelBodygroups = "03"
ATT.ClipSizeAdd = 17

ATT.Category = {"eft_glock_magplate"}


ARC9.LoadAttachment(ATT, "eft_roosys_magplate_kriss23")
ATT = {}

ATT.PrintName = "Glock KRISS +5 Magazine Plate"
ATT.CompactName = "Glock KRISS +5"
ATT.Icon = Material("entities/eft_glock_attachments/mag.png", "mips smooth")
ATT.Description = An Aftermarket Glock Magazine Plate for Glock pistols That Adds 7 Rounds.
ATT.ActivateElements = {"eft_roosys_1"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.EFTErgoAdd = -1.75
ATT.CustomCons = { Ergonomics = "-1.75" }
ATT.MalfunctionMeanShotsToFailMult = 0.975
ATT.ModelOffset = Vector(0,0,0)
ATT.ModelAngleOffset = Angle(0,90,0)

ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"

ATT.ModelBodygroups = "02"
ATT.ClipSizeAdd = 5

ATT.Category = {"eft_glock_magplate"}


ARC9.LoadAttachment(ATT, "eft_roosys_magplate_kriss7")
--]]

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

ATT.PrintName = "Extend Stock"
ATT.CompactName = "Extend Stock"
ATT.Icon = nil
ATT.Description = [[Allows you to Extend An ar15 Style Stock 1 Slot Back.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"



ATT.Category = {"eft_ar_stock"}

ATT.Attachments = {
           {
               PrintName = "Stock",
               Category = "eft_ar_stock",
               Pos = Vector(.6, 0, 0),
               Ang = Angle(0, 0, 0),
           }
        }


ARC9.LoadAttachment(ATT, "eft_roo_ar_stock_extended")


ATT = {}

ATT.PrintName = "fold stock"
ATT.CompactName = "fold stock"
ATT.Icon = nil
ATT.Description = [[idk why you would want this]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_ak74m_stock"}
ATT.RecoilMult = 1.3
ATT.Attachments = {
    {
        PrintName = "Stock",
        Pos = Vector(0, 0.05, 0),
        Ang = Angle(0, -179, 0),
        Category = {"eft_ak74m_stock"},
        IconOffset = Vector(-1, 0, 0),
    },
}
ARC9.LoadAttachment(ATT, "eft_foldakstock")

ATT = {}

ATT.PrintName = "Kochevnik Stock"
ATT.CompactName = "CAA AKTS"
ATT.Icon = Material("entities/eft_ak_attachments/stock/akts.png", "mips smooth")
ATT.Description = [[Stock for the Kochevnik Bullpup kit, Mil-Spec diameter will fit any modern AK-based rifles with side-folding stock.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_kochevnik.mdl"

ATT.Category = {"eft_ak74m_stock", "eft_vityaz_stock"}

ATT.EFTErgoAdd = 3
ATT.CustomCons = { Ergonomics = "+3" }



ARC9.LoadAttachment(ATT, "eft_stock_ak74m_kochevnik")
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

ATT.PrintName = "AKM/AK-74 ME4 buffer tube adapter"
ATT.CompactName = "ME4"
ATT.Icon = Material("entities/eft_ak_attachments/stock/me4.png", "mips smooth")
ATT.Description = [[An adapter for the installation of telescopic stock buffer tubes on AKs with non-folding stocks.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_akm_ak100.mdl"

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.Category = {"eft_akm_stock"}


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = {"eft_ak74m_stock"},
        Pos = Vector(0, -2.1, 0),
        Ang = Angle(-3, 0, 0),
        Icon_Offset = Vector(-0.2, 0, 0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_stock_akm_ak100")

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

ATT.PrintName = "PP-19-01 \"Vityaz\" metal skeleton stock"
ATT.CompactName = "PP-19-01"
ATT.Icon = Material("entities/eft_ak_attachments/vityaz/stock.png", "mips smooth")
ATT.Description = [[A skeletonized metal stock for PP-19-01 Vityaz SMGs and Saiga-9 carbines, manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_vityaz.mdl"

ATT.Category = {"eft_ak74m_stock"}

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.66
ATT.VisualRecoilMult = 0.66

ATT.Attachments = {
    {
        PrintName = "Recoil pad",
        Category = {"eft_stock_ak_pad"},
        Pos = Vector(0, 0, -0.1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -9.7, -1),
    },
}


ARC9.LoadAttachment(ATT, "eft_vityaz_stock_std_ak74m")
ATT = {}

ATT.PrintName = "AK-74M polymer stock (6P34 Sb.15)"
ATT.CompactName = "6P34 Sb.15"
ATT.Icon = Material("entities/eft_ak_attachments/stock/74m.png", "mips smooth")
ATT.Description = [[A polymer stock for AK-74M automatic rifles, manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_ak74m_std.mdl"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68

ATT.Category = {"eft_vityaz_stock"}

ATT.Attachments = {
    {
        PrintName = "Recoil pad",
        Category = {"eft_stock_ak_pad"},
        Pos = Vector(0, 0, -0.15),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -9.7, -1),
    },
}


ARC9.LoadAttachment(ATT, "eft_stock_ak74m_std_vityaz")

ATT = {}

ATT.PrintName = "Remington Wingmaster Police Grip"
ATT.CompactName = "Wingmaster"
ATT.Icon = Material("entities/eft_m870_attachments/agr.png", "mips smooth")
ATT.Description = [[The AGR-870 pistol grip for Remington 870 pump-action shotgun, manufactured by FAB Defense.]]

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pdfolder_grip.mdl"
-- ATT.LHIK = true
ATT.RHIK = true
ATT.BoneMerge = true
ATT.Category = {"eft_m870_stock"}

ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }

ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_m870_wingmaster",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m870_stock_police_folder")

ATT = {}

ATT.PrintName = "Remington wooden stock"
ATT.CompactName = "wood"
ATT.Icon = Material("entities/eft_m870_attachments/agr.png", "mips smooth")
ATT.Description = [[Wooden stock for Remington 870 pump-action shotgun.]]

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/m870_stock_wood.mdl"
-- ATT.LHIK = true
ATT.RHIK = false
ATT.BoneMerge = true
ATT.Category = {"eft_m870_stock"}

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.RecoilMult = 0.65
ATT.VisualRecoilMult = 0.65

ARC9.LoadAttachment(ATT, "eft_m870_wood")

ATT = {}

ATT.PrintName = "Remington wooden stock"
ATT.CompactName = "wood"
ATT.Icon = Material("entities/eft_m870_attachments/agr.png", "mips smooth")
ATT.Description = [[Wooden stock for Remington 870 pump-action shotgun.]]

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/m870_stock_wood_sawed.mdl"
-- ATT.LHIK = true
ATT.RHIK = false
ATT.BoneMerge = true
ATT.Category = {"eft_m870_stock"}

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.RecoilMult = 0.94
ATT.VisualRecoilMult = 0.94

ARC9.LoadAttachment(ATT, "eft_m870_wood_sawed")


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

ATT.PrintName = "Alternative viewmodel position thing"
ATT.CompactName = "Pistol hold rooney"
ATT.Icon = Material("entities/eft_extras_attachments/pistol15pose.png", "mips smooth")
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 70
ATT.ActivePos = Vector(-3.6, -3, 0.3)
ATT.ActiveAng = Angle(0, 0, -5)
ATT.SprintAng = Angle(-2, 30, -7)
ATT.SprintPos = Vector(-3, -2, -8)
ATT.CrouchPos = Vector(-4.6, -5, -0.92)
ATT.CrouchAng = Angle(0, 0, -20)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_alt_pistol_hold151000200")
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

ATT.PrintName = "SLR-106/AK 5.56x45 Circle 10 20-round magazine"
ATT.CompactName = "20 C-10 AK"
ATT.Icon = Material("entities/eft_ak_attachments/mag/556c10.png", "mips smooth")
ATT.Description = [[A Bulgarian 20-round 5.56x45 "Waffle Pattern" magazine for the SLR-106 civilian AK-based rifles. Manufactured by Circle 10 and distributed by Arsenal Inc.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak_arsenal_cwp_mag_556x45_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ak_arsenal_cwp_mag_556x45_20.mdl"

ATT.EFTErgoAdd = 2
ATT.CustomCons = { Ergonomics = "+2" }

ATT.Category = {
    "eft_ak_556_mag",
}

ATT.ActivateElements = {"556"}

ATT.ChamberSize = 1
ATT.ClipSize = 20


ARC9.LoadAttachment(ATT, "eft_mag_ak_slr106_556_20")

ATT = {}

ATT.PrintName = "Molot rpkl-201 5.56x45 45-round magazine"
ATT.CompactName = "45"
ATT.Icon = Material("entities/eft_ak_attachments/mag/556.png", "mips smooth")
ATT.Description = [[A 45-round 5.56x45 Izhmash  polymer magazine for AK-101 and compatible systems.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak_izhmash_6l29_556x45_45.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ak_izhmash_6l29_556x45_45.mdl"

ATT.Category = {
    "eft_ak_556_mag",
}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }

ATT.ActivateElements = {"556"}

ATT.ChamberSize = 1
ATT.ClipSize = 45


ARC9.LoadAttachment(ATT, "eft_mag_ak_6l29_556_45")

ATT = {}

ATT.PrintName = "no shells"
ATT.CompactName = "noshells"
ATT.Icon = nil
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 
ATT.ShellScale = 0.01
ATT.ShellModel = nil
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_noshells")


ATT = {}

ATT.PrintName = "HasAmmoooooooo = true"
ATT.CompactName = "has ammo"
ATT.Icon = nil
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 
ATT.HasAmmoooooooo = true 

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_hasammo")
ATT = {}

ATT.PrintName = "Airsoft 6mm BB"
ATT.CompactName = "6mm BB"
ATT.Icon = Material("entities/eft_attachments/ammo/556/bb.png", "mips smooth")
ATT.Description = [[Airsoft 6mm 0.2g BBs.

This ammo type really exists in tarkov but not used! because there is no fucking airsoft rifles in tarkov!
https://tarkov-changes.com/item/Airsoft%206mm%20BB ]]
ATT.SortOrder = 99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "Airsoft 6mm BBs"

ATT.DamageMaxOverride = 1 
ATT.DamageMinOverride = 0.63 
ATT.PhysBulletMuzzleVelocity = 100 /0.0254
ATT.TracerNum = 1
ATT.TracerColor = Color(255, 255, 255)
-- ATT.SpreadMult = 1.05
-- ATT.RecoilMult = 1.05
-- ATT.VisualRecoilMult = 1.05
ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 100 /0.0254

ATT.Penetration =      1 *2.54/100/0.0254
ATT.PenetrationDelta = 1/100
ATT.ArmorPiercing =    1/100
ATT.RicochetChance =   100/100
ATT.RecoilMult = 0
ATT.VisualRecoilMult = 0

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    1 },

    {   100 /0.0254 * dmgrange, 
    0.63 },
}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.Category = {"eft_custom_slot"}


ARC9.LoadAttachment(ATT, "eft_ammo_blobal_bb")
ATT = {}

ATT.PrintName = "Standard Nerf darts"
ATT.CompactName = "Nerf dart"
ATT.Icon = Material("entities/eft_attachments/ammo/556/bb.png", "mips smooth")
ATT.Description = [[Standard Nerf darts]]
ATT.SortOrder = 99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "Standard Nerf darts"

ATT.DamageMaxOverride = 1 
ATT.DamageMinOverride = 0.63 
ATT.PhysBulletMuzzleVelocity = 70 /0.0254
ATT.TracerNum = 1
ATT.TracerColor = Color(0, 0, 255)
-- ATT.SpreadMult = 1.05
-- ATT.RecoilMult = 1.05
-- ATT.VisualRecoilMult = 1.05
ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 100 /0.0254

ATT.Penetration =      1 *2.54/100/0.0254
ATT.PenetrationDelta = 1/100
ATT.ArmorPiercing =    1/100
ATT.RicochetChance =   100/100
ATT.RecoilMult = 0
ATT.VisualRecoilMult = 0

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    1 },

    {   100 /0.0254 * dmgrange, 
    0.63 },
}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.Category = {"eft_custom_slot"}


ARC9.LoadAttachment(ATT, "eft_ammo_blobal_nerf")
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


