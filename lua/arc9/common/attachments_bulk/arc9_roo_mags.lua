local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}

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

ATT.PrintName = "OLD Molot rpk-201 5.56x45 45-round magazine"
ATT.CompactName = "OLD 45"
ATT.Icon = Material("entities/eft_ak_attachments/mag/556.png", "mips smooth")
ATT.Description = [[A 45-round 5.56x45 Izhmash  polymer magazine for AK-101 and compatible systems.

This is innacurate and ported from my old arc9 russian fork]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak_izhmash_6l29_556x45_45.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ak_izhmash_6l29_556x45_45.mdl"

ATT.Category = {
    "eft_ak_556_mag",
}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }

ATT.ActivateElements = {"long545"}

ATT.ChamberSize = 1
ATT.ClipSize = 45


ARC9.LoadAttachment(ATT, "eft_mag_ak_6l29_556_45")

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

ATT.PrintName = "Molot RPK-201 5.56x45 45-round magazine"
ATT.CompactName = "45"
ATT.Icon = Material("entities/eft_ak_attachments/mag/556.png", "mips smooth")
ATT.Description = [[A 45-round 5.56x45 Izhmash  polymer magazine for RPK-201 and compatible systems.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak_izhmash_molot_556x45_45.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ak_izhmash_molot_556x45_45.mdl"

ATT.Category = {
    "eft_ak_556_mag",
}

ATT.EFTErgoAdd = -3
ATT.CustomCons = { Ergonomics = "-3" }

ATT.ActivateElements = {"long545"}

ATT.ChamberSize = 1
ATT.ClipSize = 45

ARC9.LoadAttachment(ATT, "eft_mag_ak_molot_556_45")

ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 30 GEN M3 STANAG 30-round magazine W/ TTI extension"
ATT.CompactName = "GEN M3 30 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_30_gen_m3_w_stanag_30round_magazine.png", "mips smooth")
ATT.Description = [[30-round polymer Magpul PMAG GEN M3 30 magazine with a +5 taran tactical extension, for 5.56x45 ammunition, with an observation slot.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "0"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "0"
ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.EFTImprovedMagCheck = true


ATT.MalfunctionMeanShotsToFailMult = 0.87

ATT.ActivateElements = {"40rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 35

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_w_35_tti")


ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 30 GEN M3 STANAG 35-round magazine W/ TTI extension"
ATT.CompactName = "GEN M3 30 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_30_gen_m3_stanag_30round_magazine.png", "mips smooth")
ATT.Description = [[30-round polymer Magpul PMAG GEN M3 30 magazine with a +5 taran tactical extension, for 5.56x45 ammunition.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "3"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "3"

ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }

ATT.MalfunctionMeanShotsToFailMult = 0.87

ATT.ActivateElements = {"40rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 35

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_35_tti")

ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 40 GEN M3 STANAG 40-round magazine W/ TTI extension"
ATT.CompactName = "GEN M3 40 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_40_gen_m3_stanag_40round_magazine.png", "mips smooth")
ATT.Description = [[40-round polymer Magpul PMAG GEN M3 40 magazine with a +5 taran tactical extension, for 5.56x45 ammunition.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "4"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "4"
ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 

ATT.EFTErgoAdd = -9
ATT.CustomCons = { Ergonomics = "-9" }

ATT.MalfunctionMeanShotsToFailMult = 0.79

ATT.ActivateElements = {"40rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 45

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_45_tti")


ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 10 GEN M3 STANAG 10-round magazine W/ TTI extension"
ATT.CompactName = "GEN M3 10 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_10_gen_m3_stanag_10round_magazine.png", "mips smooth")
ATT.Description = [[10-round polymer Magpul PMAG GEN M3 10 magazine with a +5 taran tactical extension, for 5.56x45 ammunition.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "1"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "1"


ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.MalfunctionMeanShotsToFailMult = 0.93

ATT.ActivateElements = {"10rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 15

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_15_tti")

///////////////////////////////////////      eft_mag_ar15_pmag_20


ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 20 GEN M3 STANAG 20-round magazine W/ TTI extension"
ATT.CompactName = "GEN M3 20 tti"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_20_gen_m3_stanag_20round_magazine.png", "mips smooth")
ATT.Description = [[20-round polymer Magpul PMAG GEN M3 20 magazine with a +5 taran tactical extension, for 5.56x45 ammunition.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "2"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "2"

ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }

ATT.MalfunctionMeanShotsToFailMult = 0.92

ATT.ActivateElements = {"30rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 25

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_25_tti")
ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 30 GEN M3 STANAG 30-round magazine W/ TTI extension (FDE)"
ATT.CompactName = "GEN M3 30 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_30_gen_m3_w_stanag_30round_magazine_fde.png", "mips smooth")
ATT.Description = [[30-round polymer Magpul PMAG GEN M3 30 magazine with a +5 taran tactical extension, for 5.56x45 ammunition, with an observation slot. Flat dark earth.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "0"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "0"
ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 
ATT.ModelSkin = 1
ATT.DropMagazineSkin = 1

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.EFTImprovedMagCheck = true


ATT.MalfunctionMeanShotsToFailMult = 0.87

ATT.ActivateElements = {"40rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 35

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_w_35_tti_f")


ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 30 GEN M3 STANAG 35-round magazine W/ TTI extension (FDE)"
ATT.CompactName = "GEN M3 30 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_30_gen_m3_stanag_30round_magazine_fde.png", "mips smooth")
ATT.Description = [[30-round polymer Magpul PMAG GEN M3 30 magazine with a +5 taran tactical extension, for 5.56x45 ammunition. Flat dark earth.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "3"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "3"

ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 

ATT.ModelSkin = 1
ATT.DropMagazineSkin = 1
EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }

ATT.MalfunctionMeanShotsToFailMult = 0.87

ATT.ActivateElements = {"40rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 35

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_35_tti_f")

ATT = {}

ATT.PrintName = "5.56x45 Magpul PMAG 40 GEN M3 STANAG 40-round magazine W/ TTI extension (FDE)"
ATT.CompactName = "GEN M3 40 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_pmag_40_gen_m3_stanag_40round_magazine_fde.png", "mips smooth")
ATT.Description = [[40-round polymer Magpul PMAG GEN M3 40 magazine with a +5 taran tactical extension, for 5.56x45 ammunition. Flat dark earth.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "4"
ATT.Folder = "TTI"
ATT.ModelSkin = 1
ATT.DropMagazineSkin = 1

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "4"
ATT.Category = {"eft_ar15_mag"}
ATT.SuppressEmptySuffix = false 

ATT.EFTErgoAdd = -9
ATT.CustomCons = { Ergonomics = "-9" }

ATT.MalfunctionMeanShotsToFailMult = 0.79

ATT.ActivateElements = {"40rnd"}

ATT.ChamberSize = 1
ATT.ClipSize = 45

ARC9.LoadAttachment(ATT, "eft_mag_ar15_pmag_45_tti_f")


ATT = {}

ATT.PrintName = "6mm Magpul PMAG 30 GEN M3 STANAG 30-round magazine W/ TTI extension (FDE) (Airsoft)"
ATT.CompactName = "GEN M3 TTI"
ATT.Icon = Material("entities/eft_ar15_attachments/mag/556x45_magpul_aiiroft.png", "mips smooth")
ATT.Description = [[A 30-round polymer Magpul PMAG GEN M3 30 magazine with a +5 taran tactical extension, for 6mm plastic ammunition. Flat Dark Earth version.]]
ATT.SortOrder = 99
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.ModelBodygroups = "5"
ATT.Folder = "TTI"

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_tti_556x45.mdl"
ATT.DropMagazineModelBodygroups = "5"


ATT.Category = {"eft_ar15_mag_airsoft"}
ATT.SuppressEmptySuffix = false 

ATT.FuckingAirsoft = true 

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }

ATT.MalfunctionMeanShotsToFailMult = 0.88

ATT.ActivateElements = {"30rnd", "eft_bb_mag"}

ATT.ChamberSize = 1
ATT.ClipSize = 35

ARC9.LoadAttachment(ATT, "eft_mag_ar15_airsoft_tti")

ATT = {}

ATT.PrintName = "PP-19-01 \"Vityaz\" 9x19 PUFGUN SG-919 20 20-round magazine"
ATT.CompactName = "SG-919 20"
ATT.Icon = Material("entities/eft_ak_attachments/vityaz/puf20.png", "mips smooth")
ATT.Description = [[The PUFGUN SG-919 20 magazine for PP-19-01 Vityaz 9x19 with a 20-round ammo capacity. Black realism version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/pufgun_mag_b"
ATT.DropMagazineAmount = 1
ATT.Model = "models/weapons/arc9/darsu_eft/mods/pufgun_mag_b.mdl"
ATT.BoneMerge = true

ATT.Category = {
    "eft_vityaz_mag",
}

ATT.ActivateElements = {"9mmmag"}

ATT.ChamberSize = 1
ATT.ClipSize = 20


ARC9.LoadAttachment(ATT, "eft_vityaz_mag_sg919_20_b")


///////////////////////////////////////      eft_vityaz_mag_sg919_30


ATT = {}

ATT.PrintName = "PP-19-01 \"Vityaz\" 9x19 PUFGUN SG-919 30 30-round magazine"
ATT.CompactName = "SG-919 30"
ATT.Icon = Material("entities/eft_ak_attachments/vityaz/puf.png", "mips smooth")
ATT.Description = [[The PUFGUN SG-919 30 magazine for PP-19-01 Vityaz 9x19 with a 30-round ammo capacity. Black realism version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/pufgun_mag_b"
ATT.DropMagazineAmount = 1
ATT.Model = "models/weapons/arc9/darsu_eft/mods/pufgun_mag_b.mdl"
ATT.BoneMerge = true
ATT.Category = {
    "eft_vityaz_mag",
}
ATT.ModelBodygroups = "100"
ATT.DropMagazineModelBodygroups = "100"

ATT.ActivateElements = {"9mmmag"}

ATT.ChamberSize = 1
ATT.ClipSize = 30


ARC9.LoadAttachment(ATT, "eft_vityaz_mag_sg919_30_b")


ATT = {}

ATT.PrintName = "AK 7.62x39 SKS-D 20-round magazine"
ATT.CompactName = "SKS-D 20"
ATT.Icon = Material("entities/eft_ak_attachments/mag/pmag20.png", "mips smooth")
ATT.Description = [[A 20-round steel magazine for the SKS-D, 7.62x39 AK and compatible weapons. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak_sks_762x39_20.mdl"
ATT.DropMagazineModel =
"models/weapons/arc9/darsu_eft/mods/mag_ak_sks_762x39_20.mdl"
ATT.ActivateElements = {"eft_mag_ak_pmag_762_20"}

ATT.Category = {
    "eft_ak_762_mag",
}


ATT.ActivateElements = {"762"}

ATT.ChamberSize = 1
ATT.ClipSize = 20

ARC9.LoadAttachment(ATT, "eft_mag_ak_sks_762_20")


ATT = {}

ATT.PrintName = "AK 7.62x39 Romanian 75-round drum magazine"
ATT.CompactName = "Romanian"
ATT.Icon = Material("entities/eft_ak_attachments/mag/762molot75.png", "mips smooth")
ATT.Description = [[A 75-round AK metal drum magazine from Romania. It fits in 7.62x39 AK and compatible weapon systems. Can also be supplied with .366 TKM ammo for use with the corresponding caliber AK-compatible weapons.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak_romanian_rpk_drum_762x39_75.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ak_romanian_rpk_drum_762x39_75.mdl"

ATT.EFTErgoAdd = -26
ATT.CustomCons = { Ergonomics = "-26" }

ATT.Category = {
    "eft_ak_762_mag",
}

ATT.ActivateElements = {"bigdrum"}

ATT.ChamberSize = 1
ATT.ClipSize = 75

ATT.HookP_TranslateSound = function(self, data) -- that is metal mag
    if data.sound == "weapons/darsu_eft/ak/ak74_magin_plastic.ogg" then
        data.sound = "weapons/darsu_eft/ak/akm_magin_metal.ogg"
    elseif data.sound == "weapons/darsu_eft/ak/ak74_magout_plastic.ogg" then
        data.sound = "weapons/darsu_eft/ak/akm_magout_metal.ogg"
    end
    return data
end

ARC9.LoadAttachment(ATT, "eft_mag_ak_romanian_762_75")

ATT = {}

ATT.PrintName = "AK 7.62x39 BarrelXchange 77-round drum magazine"
ATT.CompactName = "BXC"
ATT.Icon = Material("entities/eft_ak_attachments/mag/762molot75.png", "mips smooth")
ATT.Description = [[A custom 77-round AK metal drum magazine. It fits in 5.45x39 AK and compatible weapon systems. made in romania and modified to fit 5.45x39 by BarrelXchange.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_ak_romanian_rpk_drum_762x39_75.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_ak_romanian_rpk_drum_762x39_75.mdl"

ATT.EFTErgoAdd = -26
ATT.CustomCons = { Ergonomics = "-26" }

ATT.Category = {
    "eft_ak_545_mag",
}

ATT.ActivateElements = {"bigdrum"}

ATT.ChamberSize = 1
ATT.ClipSize = 77

ATT.HookP_TranslateSound = function(self, data) -- that is metal mag
    if data.sound == "weapons/darsu_eft/ak/ak74_magin_plastic.ogg" then
        data.sound = "weapons/darsu_eft/ak/akm_magin_metal.ogg"
    elseif data.sound == "weapons/darsu_eft/ak/ak74_magout_plastic.ogg" then
        data.sound = "weapons/darsu_eft/ak/akm_magout_metal.ogg"
    end
    return data
end

ARC9.LoadAttachment(ATT, "eft_mag_ak_romanian_762_77")

