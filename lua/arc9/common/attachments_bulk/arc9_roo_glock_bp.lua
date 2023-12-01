local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}




///////////////////////////////////////      double ak hg



///////////////////////////////////////      eft_rec_ak_dogleg


///////////////////////////////////////      eft_aksu_hg_ak_std


ATT = {}

ATT.PrintName = "Polymer80 PF940 Back Plate"
ATT.CompactName = "pf940 "
ATT.Icon = nil
ATT.Description = [[The Back plate that comes with the slide Polymer80 PF940 kits.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "020"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_pf940")


ATT = {}

ATT.PrintName = "Glock OEM Back Plate"
ATT.CompactName = "OEM "
ATT.Icon = nil
ATT.Description = [[A standard-issue OEM Back Plate for Glock pistols.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "010"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_oem")


ATT = {}

ATT.PrintName = "Mexico Back Plate"
ATT.CompactName = "MX"
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate with the mexican flag.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "040"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_mex")
ATT = {}

ATT.PrintName = "ZEV HEX Back Plate"
ATT.CompactName = "HX"
ATT.Icon = nil
ATT.Description = [[A backplate by ZEV tech for their HEX series of slides.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "050"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_hex")


ATT = {}

ATT.PrintName = "Glock switch "
ATT.CompactName = "Switch "
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate which converts your gun to full auto.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "030"
ATT.BoneMerge = true
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}
ATT.RPM = 1160


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_auto")


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
ATT.ActivateElements = {"hasmag","eft_g17_bigstick31"}

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
ATT.ActivateElements = {"hasmag","eft_g17_bigstick24"}

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


ATT.Model = "models/weapons/arc9/darsu_eft/mods/roomag_sys.mdl"
ATT.ActivateElements = {"eft_mag_g17_std_17"}

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
ATT.ActivateElements = {"eft_mag_g19x"}


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
ATT.ActivateElements = {"eft_mag_g19x"}


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
ATT.ActivateElements = {"eft_mag_g17_bigstick31"}

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
ATT.ActivateElements = {"eft_mag_g17_bigstick31"}

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
ATT.ActivateElements = {"eft_mag_g19x"}
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

ATT.PrintName = "AIMS-74 5.45x39 Steel 30-round magazine"
ATT.CompactName = "Steel"
ATT.Icon = Material("entities/eft_ak_attachments/mag/5456l20.png", "mips smooth")
ATT.Description = [[A 30-round 5.45x39 Steel magazine, for AIMS-74 and compatible systems.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak74_izhmash_steel_545x39_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ak74_izhmash_steel_545x39_30.mdl"

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }

ATT.Category = {
    "eft_ak_545_mag",
}

ATT.ActivateElements = {"545"}

ATT.ChamberSize = 1
ATT.ClipSize = 30


ARC9.LoadAttachment(ATT, "eft_mag_ak_steel_545_30")
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
ATT.ModelAngleOffset = Angle(0, 180, 0)
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

ATT.PrintName = "Polymer80 PF940 Back Plate"
ATT.CompactName = "pf940 "
ATT.Icon = nil
ATT.Description = [[The Back plate that comes with the slide Polymer80 PF940 kits.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0002"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_pf940c")


ATT = {}

ATT.PrintName = "Glock OEM Back Plate"
ATT.CompactName = "OEM "
ATT.Icon = nil
ATT.Description = [[A standard-issue OEM Back Plate for Glock pistols.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0001"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_oem_g19")


ATT = {}

ATT.PrintName = "Mexico Back Plate"
ATT.CompactName = "MX"
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate with the mexican flag.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0004"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_mex_g19")
ATT = {}

ATT.PrintName = "ZEV HEX Back Plate"
ATT.CompactName = "HX"
ATT.Icon = nil
ATT.Description = [[A backplate by ZEV tech for their HEX series of slides.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0005"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_hex_g19")


ATT = {}

ATT.PrintName = "Glock switch "
ATT.CompactName = "Switch "
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate which converts your gun to full auto.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0003"
ATT.BoneMerge = true
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}
ATT.RPM = 1160


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_auto_19")
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

ATT.PrintName = "Polymer80 PF940 Back Plate"
ATT.CompactName = "pf940 "
ATT.Icon = nil
ATT.Description = [[The Back plate that comes with the slide Polymer80 PF940 kits.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0002"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_pf940c")


ATT = {}

ATT.PrintName = "Glock OEM Back Plate"
ATT.CompactName = "OEM "
ATT.Icon = nil
ATT.Description = [[A standard-issue OEM Back Plate for Glock pistols.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0001"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_oem_g19")


ATT = {}

ATT.PrintName = "Mexico Back Plate"
ATT.CompactName = "MX"
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate with the mexican flag.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0004"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_mex_g19")
ATT = {}

ATT.PrintName = "ZEV HEX Back Plate"
ATT.CompactName = "HX"
ATT.Icon = nil
ATT.Description = [[A backplate by ZEV tech for their HEX series of slides.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0005"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_hex_g19")


ATT = {}

ATT.PrintName = "Glock switch "
ATT.CompactName = "Switch "
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate which converts your gun to full auto.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0003"
ATT.BoneMerge = true
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}
ATT.RPM = 1160

ATT.RecoilUp = 44

ATT.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
    if recamount > 2 then
        recamount = math.Clamp((recamount - 2) / 20, 0, 1)
        return springconstant * math.max(1, 1 * recamount), VisualRecoilSpringMagnitude * 10, PUNCH_DAMPING * 0.74
    end
    return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
end


ATT.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 1 then
        recamount = 1.25 - math.Clamp((recamount - 1) / 7, 0, 1)
        
        return up * math.max(0.45, recamount), side * 2.5, roll, punch * 3
    end
    return up, side, roll, punch
end

ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_auto_19")
ATT = {}

ATT.PrintName = "Polymer80 PF940 Back Plate"
ATT.CompactName = "pf940 "
ATT.Icon = nil
ATT.Description = [[The Back plate that comes with the slide Polymer80 PF940 kits.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "020"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_pf940")


ATT = {}

ATT.PrintName = "Glock OEM Back Plate"
ATT.CompactName = "OEM "
ATT.Icon = nil
ATT.Description = [[A standard-issue OEM Back Plate for Glock pistols.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "010"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_oem")


ATT = {}

ATT.PrintName = "Mexico Back Plate"
ATT.CompactName = "MX"
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate with the mexican flag.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "040"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_mex")
ATT = {}

ATT.PrintName = "ZEV HEX Back Plate"
ATT.CompactName = "HX"
ATT.Icon = nil
ATT.Description = [[A backplate by ZEV tech for their HEX series of slides.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "050"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_hex")


ATT = {}

ATT.PrintName = "Glock switch "
ATT.CompactName = "Switch "
ATT.Icon = nil
ATT.Description = [[A cheaply made chinese back plate which converts your gun to full auto.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "030"
ATT.BoneMerge = true
ATT.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, PoseParam = 1 }
}
ATT.RPM = 1160
ATT.RecoilUp = 44

ATT.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
    if recamount > 2 then
        recamount = math.Clamp((recamount - 2) / 20, 0, 1)
        return springconstant * math.max(1, 1 * recamount), VisualRecoilSpringMagnitude * 10, PUNCH_DAMPING * 0.74
    end
    return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
end


ATT.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 1 then
        recamount = 1.25 - math.Clamp((recamount - 1) / 7, 0, 1)
        
        return up * math.max(0.45, recamount), side * 2.5, roll, punch * 3
    end
    return up, side, roll, punch
end


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_auto")
ATT = {}

ATT.PrintName = "Taran Tactical Back Plate"
ATT.CompactName = "TTI"
ATT.Icon = nil
ATT.Description = [[Custom back plate made by Taran Tactical with their logo on it.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "060"
ATT.BoneMerge = true


ATT.Category = {"eft_g17_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_tti")
ATT = {}

ATT.PrintName = "Taran Tactical Back Plate"
ATT.CompactName = "TTI"
ATT.Icon = nil
ATT.Description = [[Custom back plate made by Taran Tactical with their logo on it.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/g19_slide_backplate_barrel.mdl"
ATT.ModelBodygroups = "0006"
ATT.BoneMerge = true


ATT.Category = {"eft_g19_bp"}


ARC9.LoadAttachment(ATT, "eft_roosys_backplate_tti_19")

