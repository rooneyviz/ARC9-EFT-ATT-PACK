local ATT = {}

///////////////////////////////////////      double aksu hg

local ATT = {}



ATT = {}


ATT.PrintName = "ARSENAL 4 Piece Flash Hider"
ATT.CompactName = "alpha flash"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
ATT.Category = {"muzzle","saa_m43_muz", "saa_545_muz"}
ATT.SortOrder = 1

ATT.MuzzleParticleOverride = "muzzleflash_mp5"
ATT.Model = "models/saa/upgrades/muzzle/ak104_flash.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(.25, 0, 0)
ATT.ModelAngleOffset = Angle(0,0, 0)

ATT.SwayMult = 1.35
ATT.SpeedMult = 4.87/4.93
ATT.ShootVolumeMult = 130/126.5
ATT.NoFlash = true

ARC9.LoadAttachment(ATT, "eft_muz_4pc")

ATT = {}

ATT.PrintName = "seperate gas tube cover and handguard"
ATT.CompactName = "seperate cover and handguard"
ATT.Icon = Material("entities/eft_ak_attachments/su/hg.png", "mips smooth")
ATT.Description = [[Allows you to mix and match handguards and gas covers instead of only being able to use matching ones.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true

ATT.EFTErgoAdd = 4

ATT.Category = {"eft_aksu_handguard"}
ATT.Attachments = {
    {
        PrintName = "Handguard",
        Category = "eft_aksu_Lhandguard",
        Pos = Vector(0, -0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, -1.5),
    },
{
        PrintName = "Gas tube cover",
        Category = "eft_aksu_gascover",
        Pos = Vector(0, -0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, 0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_aksu_seperate_hg")

///////////////////////////////////////      double ak hg


ATT = {}

ATT.PrintName = "seperate gas tube cover and handguard"
ATT.CompactName = "seperate cover and handguard"
ATT.Icon = Material("entities/eft_ak_attachments/su/hg.png", "mips smooth")
ATT.Description = [[Allows you to mix and match handguards and gas covers instead of only being able to use matching ones.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true

ATT.EFTErgoAdd = 4

ATT.Category = {"eft_ak_handguard","eft_vityaz_handguard"}
ATT.Attachments = {
    {
        PrintName = "Handguard",
        Category = "eft_ak_Lhandguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, -0.5),
    },
{
        PrintName = "Gas tube cover",
        Category = "eft_ak_gascover",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, 0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_ak_seperate_hg")


///////////////////////////////////////      eft_rec_ak_dogleg


ATT = {}

ATT.PrintName = "AKS-74U TWS Dog Leg Rail dust cover"
ATT.CompactName = "TWS Dog Leg"
ATT.Icon = Material("entities/eft_ak_attachments/dc_dog.png", "mips smooth")
ATT.Description = [[The Texas Weapon Systems Dog Leg Rail dust cover with an integrated Picatinny rail is compatible with all models of Kalashnikov automatic carbines and pistols based on the AKSU platform.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_dc_dog_leg.mdl"
ATT.BoneMerge = true
ATT.ActivateElements = {"norearsight", "railedcover"}
ATT.Category = {"eft_aksu_dustcover"}

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }


ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_large", "eft_optic_small"},
        Pos = Vector(0, -4.5, 0.1),
        Ang = Angle(0, -90, 0),
        Bone = "weapon",
        Icon_Offset = Vector(-1, 0, 0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_aksu_dogleg")

///////////////////////////////////////      eft_aksu_hg_ak_std


ATT = {}

ATT.PrintName = "AKS-74U wooden handguard"
ATT.CompactName = "6P26 Sb.6"
ATT.Icon = Material("entities/eft_ak_attachments/su/hg.png", "mips smooth")
ATT.Description = [[A standard-issue wooden handguard for AKS-74U, AKS-74UN, and AKS-74UB, manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_std_hg.mdl"
ATT.LHIK = true

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.HeatCapacityMult = 1.02567051

ATT.RequireElements = {"gasblock"}
ATT.Category = {"eft_aksu_Lhandguard"}


ARC9.LoadAttachment(ATT, "eft_aksu_Lhg_ak_std")
///////////////////////////////////////      eft_aksu_hg_ak_std


ATT = {}

ATT.PrintName = "AKS-74U wooden gas tube cover"
ATT.CompactName = "6P26 Sb.6"
ATT.Icon = Material("entities/eft_ak_attachments/su/hg.png", "mips smooth")
ATT.Description = [[A standard-issue wooden handguard for AKS-74U, AKS-74UN, and AKS-74UB, manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_std_gascover.mdl"

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.HeatCapacityMult = 1.02567051

ATT.RequireElements = {"gasblock"}
ATT.Category = {"eft_aksu_gascover"}


ARC9.LoadAttachment(ATT, "eft_aksu_gc_ak_std")

///////////////////////////////////////      eft_hg_ak_b11


ATT = {}

ATT.PrintName = "AKS-74U Zenit B-11 handguard"
ATT.CompactName = "B-11"
ATT.Icon = Material("entities/eft_ak_attachments/su/b11.png", "mips smooth")
ATT.Description = [[The integrally machined B-11 foregrip is manufactured from aluminum alloy D16T with black coating and can be installed instead of the standard-issue foregrip on the AKS-74U. The foregrip is fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators. Manufactured by Zenit.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_b11_hg.mdl"
ATT.LHIK = true

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.96912214

ATT.Category = {"eft_aksu_Lhandguard"}
ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, 3, 1.6),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_b12"},
        Pos = Vector(1.05, 3.7, 0.35),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical"},
        Pos = Vector(-1.05, 3.7, 0.35),
        Ang = Angle(180, 90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_b11")

///////////////////////////////////////      eft_hg_ak_goliaf


ATT = {}

ATT.PrintName = "AKS-74U Alfa Arms Goliaf handguard"
ATT.CompactName = "Goliaf"
ATT.Icon = Material("entities/eft_ak_attachments/su/goliaf.png", "mips smooth")
ATT.Description = [[This integrally machined handguard is manufactured from aluminum alloy D16T with coyote brown coating and can be installed instead of the standard-issue foregrip on the AKS-74U. It comes fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_goliaf_hg.mdl"
ATT.LHIK = true

ATT.EFTErgoAdd = 1.5
ATT.CustomPros = { Ergonomics = "+1.5" }
ATT.RecoilMult = 0.994987437
ATT.VisualRecoilMult = 0.994987437
ATT.HeatCapacityMult = 1.00498756

ATT.Category = {"eft_aksu_Lhandguard"}
ATT.Attachments = {
        {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, 3, 1.695),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical_top"},
        Pos = Vector(1.15, 8, 0.52),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical_top"},
        Pos = Vector(-1.15, 8, 0.52),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "B Tactical",
        Category = {"eft_tactical_top"},
        Pos = Vector(0, 8.1, 1.7),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top"},
        Pos = Vector(0, 8.1, -0.7),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_goliaf")
///////////////////////////////////////      eft_hg_ak_goliaf


ATT = {}

ATT.PrintName = "AKS-74U Alfa Arms Goliaf Gas Tube Cover"
ATT.CompactName = "Goliaf"
ATT.Icon = Material("entities/eft_ak_attachments/su/goliaf.png", "mips smooth")
ATT.Description = [[This integrally machined handguard is manufactured from aluminum alloy D16T with coyote brown coating and can be installed instead of the standard-issue foregrip on the AKS-74U. It comes fitted with Picatinny rail mounts on three sides, allowing for the installation of additional equipment such as tactical foregrips, flashlights, and laser designators.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_goliaf_gascover.mdl"

ATT.EFTErgoAdd = 1.5
ATT.CustomPros = { Ergonomics = "+1.5" }
ATT.RecoilMult = 0.994987437
ATT.VisualRecoilMult = 0.994987437
ATT.HeatCapacityMult = 1.00498756

ATT.Category = {"eft_aksu_gascover"}
ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_small", "eft_tactical_top"},
        Pos = Vector(0, 3, -1.3),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },

}


ARC9.LoadAttachment(ATT, "eft_gc_ak_goliaf")

///////////////////////////////////////      eft_hg_ak_xrsu47


ATT = {}

ATT.PrintName = "AKS-74U CAA XRSU47SU tactical handguard"
ATT.CompactName = "XRSU47SU"
ATT.Icon = Material("entities/eft_ak_attachments/su/xsu.png", "mips smooth")
ATT.Description = [[A tactical aluminum handguard for AKS-74U, AKS-74UN, and AKS-74UB, designed and manufactured by CAA. Equipped with multiple rail mounts for installation of a wide range of additional equipment.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_xrsu47_hg.mdl"
ATT.LHIK = true

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.907698906

ATT.ActivateElements = {"nodovetail"}

ATT.Category = {"eft_aksu_Lhandguard"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_large", "eft_optic_small"},
        Pos = Vector(0, -6.1, -1.55),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 1),
        -- ExtraSightDistance = 8
    },
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, 3, 1.95),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical"},
        Pos = Vector(1.23, 3, 0.5),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical"},
        Pos = Vector(-1.23, 3, 0.5),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top"},
        Pos = Vector(0, 3, -1.55),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 1),
    },
}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_xrsu47")



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
        Category = {"eft_tactical_top","eft_tactical_top_big","eft_optic_small","eft_optic_large","eft_optic_medium"},
        Pos = Vector(-1, 0, 0),
        Ang = Angle(0, 0,0),
        Icon_Offset = Vector(1, 0, 0),
        -- ExtraSightDistance = 8
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

ATT.PrintName = "AK-74 polymer handguard (6P20 Sb.9)"
ATT.CompactName = "6P20 Sb.9"
ATT.Icon = Material("entities/eft_ak_attachments/hg/74m.png", "mips smooth")
ATT.Description = [[A polymer handguard for AK-74 automatic rifles which replaced the classic wooden one.
Manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 2.5
ATT.CustomPros = { Ergonomics = "+2.5" }
ATT.HeatCapacityMult = 1.02225242
ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_vityaz_hg.mdl"
ATT.LHIK = true

ATT.Category = {"eft_ak_Lhandguard"}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_6p20sb9")

///////////////////////////////////////      eft_hg_ak_6p20sb9


ATT = {}

ATT.PrintName = "AK-74 polymer gas tube cover (6P20 Sb.9)"
ATT.CompactName = "6P20 Sb.9"
ATT.Icon = Material("entities/eft_ak_attachments/hg/74m.png", "mips smooth")
ATT.Description = [[A polymer handguard for AK-74 automatic rifles which replaced the classic wooden one.
Manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 2.5
ATT.CustomPros = { Ergonomics = "+2.5" }
ATT.HeatCapacityMult = 1.02225242
ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_vityaz_gascover.mdl"

ATT.Category = {"eft_ak_gascover"}


ARC9.LoadAttachment(ATT, "eft_gtc_ak_6p20sb9")

ATT = {}

ATT.PrintName = "AK Hexagon tubular handguard"
ATT.CompactName = "Hexagon"
ATT.Icon = Material("entities/eft_ak_attachments/hg/hexa.png", "mips smooth")
ATT.Description = [[A tubular handguard for AK family automatic rifles, manufactured by Hexagon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
-- ATT.Folder = "HEXAGON"

ATT.EFTErgoAdd = 11.5
ATT.CustomPros = { Ergonomics = "+11.5" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.931276837

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hex_hg.mdl"
ATT.ModelSkin = "0"
ATT.LHIK = true
ATT.RequireElements = {"gasblock"}
ATT.ActivateElements = {"nogp34"}


ATT.Category = {"eft_ak_Lhandguard"}
ATT.Attachments = {
    {
        PrintName = "B2 Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(0, 14.7, 1.65),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0.2, 0),
    },
    {
        PrintName = "L Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(-1.1, 14.7, 0.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0.2, 0),
    },
    {
        PrintName = "R Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(1.1, 14.7, 0.5),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0.2, 0),
    },
    {
        PrintName = "B Hex. mount",
        Category = {"eft_mount_hexagon_m"},
        Pos = Vector(0, 5.5, 1.65),
        Ang = Angle(0, -90, -90),
    },
}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_hexagon")
///////////////////////////////////////      eft_hg_ak_6p20sb9


ATT = {}

ATT.PrintName = "AK-74 polymer gas tube cover (6P20 Sb.9)"
ATT.CompactName = "6P20 Sb.9"
ATT.Icon = Material("entities/eft_ak_attachments/hg/74m.png", "mips smooth")
ATT.Description = [[A polymer handguard for AK-74 automatic rifles which replaced the classic wooden one.
Manufactured by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 2.5
ATT.CustomPros = { Ergonomics = "+2.5" }
ATT.HeatCapacityMult = 1.02225242
ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_vityaz_gascover.mdl"

ATT.Category = {"eft_ak_gascover"}


ARC9.LoadAttachment(ATT, "eft_gtc_ak_6p20sb9")

ATT = {}

ATT.PrintName = "AK Hexagon tubular handguard AR"
ATT.CompactName = "Hexagon"
ATT.Icon = Material("entities/eft_ak_attachments/hg/hexar.png", "mips smooth")
ATT.Description = [[A tubular handguard for AK family automatic rifles, manufactured by Hexagon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
-- ATT.Folder = "HEXAGON"

ATT.EFTErgoAdd = 11.5
ATT.CustomPros = { Ergonomics = "+11.5" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.931276837

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hex_hg.mdl"
ATT.ModelSkin = "1"
ATT.LHIK = true
ATT.RequireElements = {"gasblock"}
ATT.ActivateElements = {"nogp34"}


ATT.Category = {"eft_ak_Lhandguard"}
ATT.Attachments = {
    {
        PrintName = "B2 Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(0, 14.7, 1.65),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0.2, 0),
    },
    {
        PrintName = "L Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(-1.1, 14.7, 0.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0.2, 0),
    },
    {
        PrintName = "R Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(1.1, 14.7, 0.5),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0.2, 0),
    },
    {
        PrintName = "B Hex. mount",
        Category = {"eft_mount_hexagon_m"},
        Pos = Vector(0, 5.5, 1.65),
        Ang = Angle(0, -90, -90),
    },
}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_hexagon_ar")
///////////////////////////////////////      eft_hg_ak_b30b31s


ATT = {}

ATT.PrintName = "AK Zenit B-31S upper handguard rail"
ATT.CompactName = "B31S"
ATT.Icon = Material("entities/eft_ak_attachments/hg/b30b31s.png", "mips smooth")
ATT.Description = [[
The B-31S rail mount above the gas tube is an all-milled bracket made of D16T aluminum alloy with a black coating, mounted on the B-30 handguard. 
© «Zenit»]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
-- ATT.Folder = "ZENIT"

ATT.EFTErgoAdd = 3.5
ATT.CustomPros = { Ergonomics = "+3.5" }
ATT.RecoilMult = 0.98488578
ATT.VisualRecoilMult = 0.98488578
ATT.HeatCapacityMult = 0.951840323

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_b31c_gascover.mdl"
ATT.ModelBodygroups = "0"
ATT.LHIK = true
ATT.RequireElements = {"gasblock", "gasblock_vdmcs"}
ATT.ExcludeElements = {"eft_vityaz_gas_std"}
ATT.ActivateElements = {"nogp34"}

ATT.Category = {"eft_ak_gascover"}
ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_tactical_top", "eft_tactical_top_big", "eft_backupmount", "eft_optic_medium", "eft_optic_small"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0, 4, -1.32),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
}
ARC9.LoadAttachment(ATT, "eft_lhg_ak_b31s")


ATT = {}

ATT.PrintName = "AK Zenit B-30 handguard"
ATT.CompactName = "B30"
ATT.Icon = Material("entities/eft_ak_attachments/hg/b30b31s.png", "mips smooth")
ATT.Description = [[The all-milled B-30 handguard is made of D16T aluminum alloy with a black coating, it is intended for installing on the AK assault rifle series 103, 104, 105, 74S, 74M, AKM, AKMS in the standard place of the handguard. 
The B-31S rail mount above the gas tube is an all-milled bracket made of D16T aluminum alloy with a black coating, mounted on the B-30 handguard. 
© «Zenit»]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
-- ATT.Folder = "ZENIT"

ATT.EFTErgoAdd = 3.5
ATT.CustomPros = { Ergonomics = "+3.5" }
ATT.RecoilMult = 0.98488578
ATT.VisualRecoilMult = 0.98488578
ATT.HeatCapacityMult = 0.951840323

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_b30_hg.mdl"
ATT.ModelBodygroups = "0"
ATT.LHIK = true
ATT.RequireElements = {"gasblock", "gasblock_vdmcs"}
ATT.ExcludeElements = {"eft_vityaz_gas_std"}
ATT.ActivateElements = {"nogp34"}

ATT.Category = {"eft_ak_Lhandguard", }
ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, 4, 1.65),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(1.15, 9, 0.45),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-1.15, 9, 0.45),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = "B Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0, 9, 1.65),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 1),
    },
}

ARC9.LoadAttachment(ATT, "eft_lhg_ak_b30")



ATT = {}

ATT.PrintName = "Full Auto"
ATT.CompactName = "Auto"
ATT.Icon = nil
ATT.Description = [[allows you to use full auto on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }

ATT.RPM = 770
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

ARC9.LoadAttachment(ATT, "eft_ar15_fullauto")

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
ATT.ShootSound = { "weapons/darsu_eft/ak/fire_new/akm_close_loop_1.wav", "weapons/darsu_eft/ak/fire_new/akm_close_loop_2.wav", "weapons/darsu_eft/ak/fire_new/akm_close_loop_3.wav", "weapons/darsu_eft/ak/fire_new/akm_close_loop_4.wav" }
ATT.CustomPros = { Changes_sound = True }

ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96

ATT.Category = {"eft_ar15_muzzle", "eft_ak101_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_xm177")

ATT = {}

ATT.PrintName = "M16A2 5.56x45 upper receiver"
ATT.CompactName = "M16A2"
ATT.Icon = nil
ATT.Description = [[Upper receiver for M16A2 assault rifle manufactured by Colt. Equipped with a carry handle that can attach mounts.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasReceiver = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/reciever_ar15_colt_m16a2_std.mdl"

ATT.Category = {"eft_m4a1_upper"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.989

ATT.Attachments = {
    
    {
        PrintName = "Barrel",
        Category = "eft_m4a1_barrel",
        Pos = Vector(-0.175, 0, -0.9),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.2, 0, 0),
    },
    {
        PrintName = "Handguard",
        Category = "eft_ar15_hguard",
        Pos = Vector(-0.15, 0, -1),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 4, 0),
    },
    {
        PrintName = "Mounts",
        Category = {"eft_scope_trijicon"},
        Pos = Vector(1.75, 0, -3.13),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

}
ATT.Sights = {
    {
        Pos = Vector(0, 12, -3.445),
        Ang = Angle(0, -0, 0),
        Magnification = 1.1,
        ViewModelFOV = 53,
        IsIronSight = true
    }
}

ARC9.LoadAttachment(ATT, "eft_rec_ar15_m16a2")


ATT = {}

ATT.PrintName = "M16A1 5.56x45 upper receiver"
ATT.CompactName = "M16A1"
ATT.Icon = nil
ATT.Description = [[Upper receiver for M16A1 assault rifle manufactured by Colt. Equipped with a carry handle that can attach mounts.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasReceiver = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/reciever_ar15_colt_m16a1_std.mdl"

ATT.Category = {"eft_m4a1_upper"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.989

ATT.Attachments = {
    
    {
        PrintName = "Barrel",
        Category = "eft_m4a1_barrel",
        Pos = Vector(-0.175, 0, -0.9),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.2, 0, 0),
    },
    {
        PrintName = "Handguard",
        Category = "eft_ar15_hguard",
        Pos = Vector(-0.15, 0, -1),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 4, 0),
    },
    {
        PrintName = "Mounts",
        Category = {"eft_scope_trijicon"},
        Pos = Vector(1.75, 0, -3.13),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },

}
ATT.Sights = {
    {
        Pos = Vector(0, 12, -3.445),
        Ang = Angle(0, -0, 0),
        Magnification = 1.1,
        ViewModelFOV = 53,
        IsIronSight = true
    }
}

ARC9.LoadAttachment(ATT, "eft_rec_ar15_m16a1")


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

local ATT = {}

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

ATT.ModelOffset = Vector(-2.55, 0, .65)
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

ATT.HasBufferTube = true

ATT.RecoilMult = 0.7
ATT.VisualRecoilMult = 0.7

ATT.ExcludeElements = {"pgrip_stock"}


-- ATT.EFTErgoAdd = 4
-- ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_buffertube"
ATT.MenuCategory = "ARC9 - EFT Attachments"
ARC9.LoadAttachment(ATT, "eft_ar_m16a2_stock")




ATT = {}

ATT.PrintName = "AR-15 Colt m16a2 rifle Length handguard"
ATT.CompactName = "M16A2 Rifle"
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_colt_m4_carbine_length_handguard.png", "mips smooth")
ATT.Description = [[A Rifle length handguard manufactured by Colt, a standard-issue handguard for the M16A2 assault rifles]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_m16a2.mdl"
ATT.LHIK = false
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.988
ATT.Category = {"eft_ar15_hguard"}
ATT.ActivateElements = {"nostdgasblockpls"}
ATT.Attachments = {
    {
        PrintName = "Lower HG",
        Category = {"eft_hglower_m16a2"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),   
        Icon_Offset = Vector(0, 3.35, -1),
	},
    {
        PrintName = "Gas block",
        Category = "eft_ar15_gasblock",
        Pos = Vector(0,13.1, 0.25),
        Ang = Angle(0, -90, 0),
    },
}
ARC9.LoadAttachment(ATT, "eft_hg_ar15_m16a2roo")

ATT = {}
ATT.PrintName = "AR-15 Colt M16A2 Rifle Length lower handguard"
ATT.CompactName = "M16a2 Rifle"
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_colt_m4_carbine_length_lower_handguard.png", "mips smooth")
ATT.Description = [[A Rifle length lower handguard part manufactured by Colt, a standard-issue handguard for the M16A2 assault rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_m16a2_lower.mdl"
ATT.LHIK = true
ATT.LHIK_Priority = 1 -- lower
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.HeatCapacityMult = 1.029
ATT.Category = {"eft_hglower_m16a2"}
ARC9.LoadAttachment(ATT, "eft_hg_ar15_m16a2_roo_lower")

local ATT = {}

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
ATT.ModelOffset = Vector(3.25, -3.15, 20)
ATT.ModelAngleOffset = Angle(-90, 90, 0)
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
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.225, 0),
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

ATT.PrintName = "Glock 47 9x19 barrel"
ATT.CompactName = "G47"
ATT.Icon = Material("entities/eft_glock_attachments/barrel.png", "mips smooth")
ATT.Description = [[A standard barrel designed to replace or be an alternative slide for the Glock 19 9x19 pistol. Manufactured by Glock For the United States Customs and Border Protection (CBP) 
"Siempre estoy listo para cruzar
Polvo, ruedas y tambi�n cristal"- From PRC by Peso Pluma.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "001"
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
ATT.PrintName = "(NO IK)AR-15 Daniel Defense RIS II 9.5 lower handguard (Coyote Brown)"
ATT.CompactName = "(NO IK)RIS II 12.25"
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_daniel_defense_ris_ii_95_lower_handguard_(coyote_brown).png", "mips smooth")
ATT.Description = [[(holds gun on the receiver instead of under the handguard)The Daniel Defense RIS II 9.5 lower handguard. Made with light but durable aircraft aluminum alloy. Equipped with RIS interface for installation of additional devices and accessories. Coyote Brown.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_dd_ris_ii_9,5_lower.mdl"
ATT.Category = {"eft_hglower_ddrisii95"}
ATT.HasHG = true
ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.992
ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small", "eft_foregrip_large"},
        Pos = Vector(0, 3.4, 1.2),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
}
ARC9.LoadAttachment(ATT, "eft_hg_ar15_ddrisii95_lower_b_NOIK")



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
ATT.ModelOffset = Vector(0.3, -03, 02)

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
ATT.ModelOffset = Vector(0.3, -03, 01.5)
ATT.ModelScale = .75

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"

ATT.Category = "eft_foregrip_small"
ARC9.LoadAttachment(ATT, "eft_foregrip_c_clampAR")

