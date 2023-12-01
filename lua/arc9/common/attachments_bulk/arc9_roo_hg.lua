local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}



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


ATT.Category = {"eft_aksu_Lhandguard"}

ATT.Attachments = {
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
        PrintName = "Mount",
        Category = {"eft_xrsu_47_mount"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 2),
    },

}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_xrsu47")

ATT = {}

ATT.PrintName = "Optic mount"
ATT.CompactName = "XRSU47SU"
ATT.Icon = Material("entities/eft_ak_attachments/su/xsu.png", "mips smooth")
ATT.Description = [[the top mount part of the XRSU47SU handguard.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_xrsu47_hg.mdl"
ATT.ModelBodygroups = "10"

ATT.EFTErgoAdd = 0
ATT.CustomPros = { Ergonomics = "+0" }
ATT.RecoilMult = 1
ATT.VisualRecoilMult = 1
ATT.HeatCapacityMult = 1

ATT.ActivateElements = {"nodovetail"}

ATT.Category = {"eft_xrsu_47_mount"}

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
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top"},
        Pos = Vector(0, 3, -1.55),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 1),
    },
}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_xrsu47_mount")
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

ATT.PrintName = "AR-15 Colt m16a1 rifle Length handguard"
ATT.CompactName = "M16A1 Rifle"
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_colt_m4_carbine_length_handguard.png", "mips smooth")
ATT.Description = [[A Rifle length handguard manufactured by Colt, a standard-issue handguard for the M16A1 assault rifles]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_m16a1.mdl"
ATT.LHIK = true
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.988
ATT.Category = {"eft_ar15_hguard"}
ATT.ActivateElements = {"nostdgasblockpls"}
ATT.Attachments = {

    {
        PrintName = "Gas block",
        Category = "eft_ar15_gasblock",
        Pos = Vector(0,13.1, 0.25),
        Ang = Angle(0, -90, 0),
    },
}
ARC9.LoadAttachment(ATT, "eft_hg_ar15_m16a1roo")

ATT = {}

ATT.PrintName = "Kochevnik Bullpup Kit"
ATT.CompactName = "Kochevnik Bullpup Kit"
ATT.Icon = nil
ATT.Description = [[The RK-1 foregrip can be installed on the lower part of handguards with a Weaver rail. Its provides better operational control of a weapon during firing. Manufactured by Zenit.]]
ATT.SortOrder = 0

ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.RequireElements = {"eft_grip_ak_kocehvnim"}
ATT.ActivateElements = {"nodovetail"}

ATT.Category = {"eft_ak_handguard"}
ATT.Icon = nil
ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_kochevnik.mdl"
ATT.ModelAngleOffset = Angle(0, -90, 0)
ATT.ModelOffset = Vector(-20.25, -4.25, 3.0)
ATT.IronSights = {
    Pos = Vector(-4.28, -10, 1.37),
    Ang = Angle(0, 0.09, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

ATT.ActivePos = Vector(-0.7, -12.5, -1)
ATT.ActiveAng = Angle(0, 0, 0)

ATT.SprintAng = Angle(2, -3, 0)
ATT.SprintPos = Vector(-0.7, -12.5, -1)

ATT.NearWallAng = Angle(0, 55, 0)
ATT.NearWallPos = Vector(0, -8, -16)

ATT.CrouchPos = Vector(-0.7, -12.8, .35)
ATT.CrouchAng = Angle(0, -8, -1)

ATT.CustomizeAng = Angle(90, 0, 0)
ATT.CustomizePos = Vector(19, 22, 3)
ATT.CustomizeSnapshotFOV = 50
ATT.CustomizeRotateAnchor = Vector(19, -4.28, -4.23)
ATT.VisualRecoilCenter = Vector(2, 20, 2)

ATT.LHIK_Priority = 1
ATT.LHIK = true
ATT.RHIK_Priority = 10000000000000000000000000000000
ATT.RHIK = true

ATT.EFTErgoAdd = -10
ATT.CustomPros = { Ergonomics = "-10" }
ATT.RecoilMult = 0.67
ATT.VisualRecoilMult = 0.67
ATT.Attachments = {

    {
        PrintName = "Grip",
        Category = "eft_ak_grip",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 4.5, 1.62),
        Ang = Angle(0, 0, 2),
        Installed = "eft_grip_ak_6p1sb8",
    },

    {
        PrintName = "Optic",
        Category = {"eft_tactical_top", "eft_tactical_top_big", "eft_backupmount", "eft_optic_medium", "eft_optic_small"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0, 5, -1.6),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 0
    },
    {
        PrintName = "Foregrip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, 8.9, 1.50),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(1.15, 9, 0.55),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-1.15, 9, 0.55),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 1),
    },

}

ARC9.LoadAttachment(ATT, "eft_kochevnik_hg")

ATT = {}

ATT.PrintName = "(AK)C-CLAMP"
ATT.CompactName = "(AK)C-CLAMP"
ATT.Icon = nil
ATT.Description = [[A Method Of Gripping A Weapon. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_moe.mdl"
ATT.ModelAngleOffset = Angle(0,0, 0)
ATT.ModelOffset = Vector(0, 0, 0)

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.Category = {"eft_ak_handguard", "eft_vityaz_handguard"}
ATT.Attachments = {
    {
        PrintName = "actual handguard",
        Pos = Vector(0, 0, 0),
        IconOffset = Vector(1, 1, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_ak_handguard", "eft_vityaz_handguard"}
    },
}

ARC9.LoadAttachment(ATT, "eft_akforegrip_c_clamp")

ATT = {}

ATT.PrintName = "(AK)C-CLAMP"
ATT.CompactName = "(AK)C-CLAMP"
ATT.Icon = nil
ATT.Description = [[A Method Of Gripping A Weapon. 
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_moe.mdl"
ATT.ModelAngleOffset = Angle(0,0, 0)
ATT.ModelOffset = Vector(0, 0, 0)

ATT.LHIK = true 
ATT.LHIK_Priority = 2

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.Category = {"eft_aksu_handguard"}
ATT.Attachments = {
    {
        PrintName = "actual handguard",
        Pos = Vector(0, 0, 0),
        IconOffset = Vector(1, 1, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_aksu_handguard"}
    },
}

ARC9.LoadAttachment(ATT, "eft_aksuforegrip_c_clamp")

ATT = {}

ATT.PrintName = "magwell grip"
ATT.CompactName = "magwell grip"
ATT.Icon = nil
ATT.Description = [[makes you hold the magwell.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_dd_ris_ii_9,5.mdl"
ATT.LHIK = true 
-- ATT.LHIK_Priority = -22 -- needs lower hg
ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.Category = {"eft_ar15_hguard"}

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.LHIK_Priority = 2

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"eft_ar15_hguard"},
        IconOffset = Vector(0, 0, 1),
    },
}
ARC9.LoadAttachment(ATT, "eft_hg_ar15_hold_magwell")
ATT = {}

ATT.PrintName = "Bulgarian AKS-74U Polymer handguard"
ATT.CompactName = "Bulgaria"
ATT.Icon = Material("entities/eft_ak_attachments/su/hg.png", "mips smooth")
ATT.Description = [[A Bulgarian standard-issue Polymer handguard for AKS-74U, AKS-74UN, and AKS-74UB, manufactured by Arsenal.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_slr106u_hg.mdl"
ATT.LHIK = true

ATT.EFTErgoAdd = 2.5
ATT.CustomPros = { Ergonomics = "+2.5" }
ATT.HeatCapacityMult = 1.02567051


ATT.Category = {"eft_aksu_Lhandguard"}


ARC9.LoadAttachment(ATT, "eft_slr106u_Lhg_ak_std")
///////////////////////////////////////      eft_aksu_hg_ak_std
ATT = {}

ATT.PrintName = "handguard grip"
ATT.CompactName = "handguard grip"
ATT.Icon = nil
ATT.Description = [[makes you hold the handguard(if you arent already for some reason???).]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_precision_reflex_carbon_fiber_delta_gen_3.mdl"
ATT.LHIK = true 
-- ATT.LHIK_Priority = -22 -- needs lower hg
ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.Category = {"eft_ar15_hguard"}

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.LHIK_Priority = 2

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"eft_ar15_hguard"},
        IconOffset = Vector(0, 0, 1),
    },
}
ARC9.LoadAttachment(ATT, "eft_hg_ar15_hold_hg_a")
ATT = {}

ATT.PrintName = "(AR) C-CLAMP"
ATT.CompactName = "(AR) C-CLAMP"
ATT.Icon = nil
ATT.Description = [[idk]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_unique_ars_wing_and_skull_12_inch.mdl"
ATT.LHIK = true 
-- ATT.LHIK_Priority = -22 -- needs lower hg
ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.Category = {"eft_ar15_hguard"}

ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.LHIK_Priority = 2

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"eft_ar15_hguard"},
        IconOffset = Vector(0, 0, 1),
    },
}
ARC9.LoadAttachment(ATT, "eft_hg_ar15_hold_hg_b")


ATT = {}

ATT.PrintName = "Bulgarian AKS-74U Polymer gas tube cover"
ATT.CompactName = "Bulgaria"
ATT.Icon = Material("entities/eft_ak_attachments/su/hg.png", "mips smooth")
ATT.Description = [[A Bulgarian standard-issue Polymer handguard for AKS-74U, AKS-74UN, and AKS-74UB, manufactured by Arsenal.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_slr106u_gb.mdl"

ATT.EFTErgoAdd = 2.5
ATT.CustomPros = { Ergonomics = "+2.5" }
ATT.HeatCapacityMult = 1.02567051


ATT.Category = {"eft_aksu_gascover"}


ARC9.LoadAttachment(ATT, "eft_slr106u_gc_ak_std")

ATT = {}

ATT.PrintName = "AKMSU wooden handguard"
ATT.CompactName = "AKMSU"
ATT.Icon = Material("entities/eft_ak_attachments/su/hg.png", "mips smooth")
ATT.Description = [[Custom thumbhole grip handguard imitating the AKMSU handguard.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_akmsu.mdl"
ATT.LHIK = true
ATT.ModelOffset = Vector(0, 0,0)

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.HeatCapacityMult = 1.02167051
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99


ATT.Category = {"eft_aksu_Lhandguard"}


ARC9.LoadAttachment(ATT, "eft_akmsu_Lhg_ak_std")

ATT = {}

ATT.PrintName = "AK Magpul Zhukov  handguard (Black)"
ATT.CompactName = "Zh(B)"
ATT.Icon = Material("entities/eft_ak_attachments/hg/zhu.png", "mips smooth")
ATT.Description = [[The Magpul Zhukov handguard is installed on AKM/AK-74-compatible weapon systems.
Equipped with licensed M-LOK mounts for installation of additional devices or rails.

Black version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Folder = "MAGPUL"

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.072

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_zhukov.mdl"
ATT.ModelSkin = 0
ATT.LHIK = true


ATT.ActivateElements = {"nogp34"}
ATT.Category = {"eft_ak_handguard"}
ATT.Attachments = {
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 1.56),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok"},
        Pos = Vector(0.85, 8.5, -0.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok"},
        Pos = Vector(-0.85, 8.5, -0.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_hg_ak_zh")


///////////////////////////////////////      eft_hg_ak_zh_fde


ATT = {}

ATT.PrintName = "AK Magpul Zhukov  handguard (FDE)"
ATT.CompactName = "Zh(FDE)"
ATT.Icon = Material("entities/eft_ak_attachments/hg/zhuf.png", "mips smooth")
ATT.Description = [[The Magpul Zhukov handguard is installed on AKM/AK-74-compatible weapon systems. 
Equipped with licensed M-LOK mounts for installation of additional devices or rails.

Flat Dark Earth version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Folder = "MAGPUL"

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.072

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_zhukov.mdl"
ATT.ModelSkin = 1
ATT.LHIK = true


ATT.ActivateElements = {"nogp34"}
ATT.Category = {"eft_ak_handguard"}
ATT.Attachments = {
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 1.56),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok"},
        Pos = Vector(0.85, 8.5, -0.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok"},
        Pos = Vector(-0.85, 8.5, -0.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_hg_ak_zh_fde")


///////////////////////////////////////      eft_hg_ak_zh_plm


ATT = {}

ATT.PrintName = "AK Magpul Zhukov  handguard (Plum)"
ATT.CompactName = "Zh(Plum)"
ATT.Icon = Material("entities/eft_ak_attachments/hg/zhup.png", "mips smooth")
ATT.Description = [[The Magpul Zhukov-U handguard is installed on AKM/AK-74-compatible weapon systems. 
Equipped with licensed M-LOK mounts for installation of additional devices or rails.

Plum-colored polymer version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Folder = "MAGPUL"

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.072

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_magpul_zhukov.mdl"
ATT.ModelSkin = 2
ATT.LHIK = true


ATT.ActivateElements = {"nogp34"}
ATT.Category = {"eft_ak_handguard"}
ATT.Attachments = {
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 1.56),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok"},
        Pos = Vector(0.85, 8.5, -0.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok"},
        Pos = Vector(-0.85, 8.5, -0.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_hg_ak_zh_plm")

ATT = {}

ATT.PrintName = "Saiga-12 Magpul Zhukov  handguard (Black)"
ATT.CompactName = "Zh(B)"
ATT.Icon = Material("entities/eft_ak_attachments/hg/zhu.png", "mips smooth")
ATT.Description = [[The Magpul Zhukov handguard is installed on Saiga-12-compatible weapon systems.
Equipped with licensed M-LOK mounts for installation of additional devices or rails.
Modified to fit the saiga-12 by 4shooters.

Black version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Folder = "MAGPUL"

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.072

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/sg12_hg_zhukov.mdl"
ATT.ModelSkin = 0
ATT.LHIK = true
ATT.BoneMerge = true


ATT.ActivateElements = {"nogp34"}
ATT.Category = {"eft_saiga12_handguard"}
ATT.Attachments = {
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 1.56),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok"},
        Pos = Vector(0.85, 8.5, -0.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok"},
        Pos = Vector(-0.85, 8.5, -0.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_sg12_ak_zh")


///////////////////////////////////////      eft_hg_sg12_zh_fde


ATT = {}

ATT.PrintName = "Saiga-12 Magpul Zhukov  handguard (FDE)"
ATT.CompactName = "Zh(FDE)"
ATT.Icon = Material("entities/eft_ak_attachments/hg/zhuf.png", "mips smooth")
ATT.Description = [[The Magpul Zhukov handguard is installed on Saiga-12-compatible weapon systems. 
Equipped with licensed M-LOK mounts for installation of additional devices or rails.
Modified to fit the saiga-12 by 4shooters.

Flat Dark Earth version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Folder = "MAGPUL"

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.072

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/sg12_hg_zhukov.mdl"
ATT.ModelSkin = 1
ATT.LHIK = true
ATT.BoneMerge = true


ATT.ActivateElements = {"nogp34"}
ATT.Category = {"eft_saiga12_handguard"}
ATT.Attachments = {
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 1.56),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok"},
        Pos = Vector(0.85, 8.5, -0.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok"},
        Pos = Vector(-0.85, 8.5, -0.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_hg_sg12_zh_fde")


///////////////////////////////////////      eft_hg_sg12_zh_plm


ATT = {}

ATT.PrintName = "Saiga-12 Magpul Zhukov  handguard (Plum)"
ATT.CompactName = "Zh(Plum)"
ATT.Icon = Material("entities/eft_ak_attachments/hg/zhup.png", "mips smooth")
ATT.Description = [[The Magpul Zhukov-U handguard is installed on Saiga-12-compatible weapon systems. 
Equipped with licensed M-LOK mounts for installation of additional devices or rails.
 Modified to fit the saiga-12 by 4shooters

Plum-colored polymer version.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Folder = "MAGPUL"

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.072
ATT.BoneMerge = true
ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/sg12_hg_zhukov.mdl"
ATT.ModelSkin = 2
ATT.LHIK = true
ATT.BoneMerge = true

ATT.ActivateElements = {"nogp34"}
ATT.Category = {"eft_saiga12_handguard"}
ATT.Attachments = {
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 3.5, 1.56),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok"},
        Pos = Vector(0.85, 8.5, -0.05),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok"},
        Pos = Vector(-0.85, 8.5, -0.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_hg_sg12_zh_plm")



ATT = {}

ATT.PrintName = "RPKT Handguard"
ATT.CompactName = "RPKT"
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_daniel_defense_ris_ii_1225_lower_handguard_(coyote_brown).png", "mips smooth")
ATT.Description = [[Standard handguardfor the rpkt.


(mounts foregrip on the side)]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.ActivateElements = {"hg_rpkt"}
ATT.Category = {"eft_rpkt_hg"}
ATT.Model = "models/weapons/arc9/darsu_eft/mods/fg_b25u.mdl"
ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.ModelOffset = Vector(1, 0, 0)
ATT.ModelAngleOffset = Angle(0, -90, 15)

ATT.LHIK = false

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }


ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(0, 1.5, 2.25),
        Ang = Angle(0, -90, 0),
        Bone = "weapon",
        Icon_Offset = Vector(-1, 0, 0.5),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(1.05, 1, 1),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
	{
        PrintName = "R Tactical",
        Category = {"eft_tactical"},
        Pos = Vector(-1.05, 1, 1),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },


}


ARC9.LoadAttachment(ATT, "eft_hg_rpkt")

ATT = {}

ATT.PrintName = "RPKT Handguard(SIDE GRIP)"
ATT.CompactName = "RPKT(SIDE)"
ATT.Icon = Material("entities/eft_ar15_attachments/hg/ar15_daniel_defense_ris_ii_1225_lower_handguard_(coyote_brown).png", "mips smooth")
ATT.Description = [[Standard handguardfor the rpkt.


(mounts foregrip on the side)]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.ActivateElements = {"hg_rpkt"}
ATT.Category = {"eft_rpkt_hg"}
ATT.Model = "models/weapons/arc9/darsu_eft/mods/fg_b25u.mdl"
ATT.ModelMaterial = "models/weapons/saa/shared/unlit_transparent"
ATT.ModelOffset = Vector(1, 0, 0)
ATT.ModelAngleOffset = Angle(0, -90, 15)

ATT.LHIK_Priority = 2
ATT.LHIK = true

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }


ATT.Attachments = {
    {
        PrintName = "B Tactical",
        Category = {"eft_tactical"},
        Pos = Vector(0, 4.5, 2.25),
        Ang = Angle(0, -90, 0),
        Bone = "weapon",
        Icon_Offset = Vector(-1, 0, 0.5),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(1.05, 1, 1),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0.5),
    },
	{
        PrintName = "R Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(-1.05, 1, 1),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 0.5),
	   Integral = true,
         Installed = "eft_foregrip_kac"
    },


}


ARC9.LoadAttachment(ATT, "eft_hg_rpkt_side")

ATT = {}

ATT.PrintName = "AK Zenit Sport-1 handguard rail"
ATT.CompactName = "Sport-1"
ATT.Icon = nil
ATT.Description = [[The all-milled Sport-1 handguard set is made of D16T aluminum alloy with a black coating, it is intended for installing on the AK assault rifle series 103, 104, 105, 74S, 74M, AKM, AKMS in the standard place of the handguard. 
The Sport-1 kit contains the B10L handguard, the DL-1 handguard extension and the B31N upper handguard. 
© «Zenit»]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
-- ATT.Folder = "ZENIT"

ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.846

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_hg_sport1.mdl"
ATT.ModelBodygroups = "0"
ATT.LHIK = true
ATT.RequireElements = {"gasblock", "gasblock_vdmcs"}
ATT.ExcludeElements = {"eft_vityaz_gas_std"}
ATT.ActivateElements = {"nogp34","eft_hg_ak_b30b31s"}

ATT.Category = {"eft_ak_handguard", "eft_ak_handguard_custom"}
ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_tactical_top", "eft_tactical_top_big", "eft_backupmount", "eft_optic_medium", "eft_optic_small"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0, 4, -1.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Grip",
        Category = {"eft_zenitb","eft_mount_mlok41"},
        Pos = Vector(0, 4, 1.65),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_zenitr","eft_mount_mlok"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(1.15, 9, 0.45),
        Ang = Angle(0, -90, 90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_zenitl","eft_mount_mlok"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(-1.15, 9, 0.45),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 1),
    },
    {
        PrintName = "B Tactical",
        Category = {"eft_mount_mlok"},
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Pos = Vector(0, 9, 1.45),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 1),
    },
}
ARC9.LoadAttachment(ATT, "eft_hg_ak_sport1")

ATT = {}

ATT.PrintName = "AKS-74U Hexagon tubular handguard"
ATT.CompactName = "Hexagon"
ATT.Icon = Material("entities/eft_ak_attachments/hg/hexa.png", "mips smooth")
ATT.Description = [[A tubular handguard for AK family automatic rifles, manufactured by Hexagon.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_hex_hg.mdl"
ATT.LHIK = true

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.96912214

ATT.Category = {"eft_aksu_Lhandguard"}
ATT.Attachments = {
{
        PrintName = "L Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(-1.1, 3.1, 0.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0.2, 0)
    },
    {
        PrintName = "R Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(1.1, 3.1, 0.5),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0.2, 0)
    },
    {
        PrintName = "B Hex. mount",
        Category = {"eft_mount_hexagon_m"},
        Pos = Vector(0, 3, 1.65),
        Ang = Angle(0, -90, -90)
    }
}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_hex")

ATT = {}

ATT.PrintName = "AKS-74U Hexagon tubular handguard (Anodized Red)"
ATT.CompactName = "Hexagon (AR)"
ATT.Icon = Material("entities/eft_ak_attachments/hg/hexar.png", "mips smooth")
ATT.Description = [[A tubular handguard for AK family automatic rifles, manufactured by Hexagon.

DA RED GOEZ FASTA!]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasHG = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_hex_hg.mdl"
ATT.LHIK = true
ATT.ModelSkin = "1"

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 0.96912214

ATT.Category = {"eft_aksu_Lhandguard"}
ATT.Attachments = {
{
        PrintName = "L Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(-1.1, 3.1, 0.5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0.2, 0)
    },
    {
        PrintName = "R Hex. mount",
        Category = {"eft_mount_hexagon"},
        Pos = Vector(1.1, 3.1, 0.5),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0.2, 0)
    },
    {
        PrintName = "B Hex. mount",
        Category = {"eft_mount_hexagon_m"},
        Pos = Vector(0, 3, 1.65),
        Ang = Angle(0, -90, -90)
    }
}


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_hex_r")

ATT = {}

ATT.PrintName = "AR-15 BCM KMR 17\" handguard"
ATT.CompactName = "BCM KMR 17\" "
ATT.Icon = nil
ATT.Description = [[Lightweight handguard BCM KMR 17\" for use with sport rifles based on AR-15.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_bcm_km_17.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 11
ATT.CustomPros = { Ergonomics = "+11" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.SpreadMult = 0.99
ATT.HeatCapacityMult = 0.961
ATT.Category = {"eft_ar15_hguard"}

ATT.ExcludeElements = {"barrel_260mm","barrel_370mm","barrel_406mm", "eft_gas_ar15_rg", "eft_gas_ar15_jp", "eft_gas_ar15_m4fs"}
ATT.Folder = "BCM"
	
ATT.Attachments = {
    {
        PrintName = "Backup",
        Category = {"eft_backupmount"},
        Pos = Vector(0, 3.3, -1.15),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 14.8+1.2, -1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top", "eft_tactical_top_big"},
        Pos = Vector(0, 11.5, -1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokoffset"}, -- no canti
        Pos = Vector(0.85, 10.5, 0.12),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.85, 10.5, 0.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B Tac",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0, 10.5, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 5.5, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.5, 14, 0.5),
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.5, 14, 0.5),
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_hg_ar15_bcm_kmr_17")
ATT = {}

ATT.PrintName = "AR-15 BCM KMR 10\" handguard"
ATT.CompactName = "BCM KMR 10\" "
ATT.Icon = nil
ATT.Description = [[Lightweight handguard BCM KMR 7\" for use with sport rifles based on AR-15.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasHG = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/handguard_ar15_bcm_km_10.mdl"
ATT.LHIK = true 
ATT.EFTErgoAdd = 11
ATT.CustomPros = { Ergonomics = "+11" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.SpreadMult = 0.99
ATT.HeatCapacityMult = 0.961
ATT.Category = {"eft_ar15_hguard"}

ATT.Folder = "BCM"
	
ATT.Attachments = {
    {
        PrintName = "Backup",
        Category = {"eft_backupmount"},
        Pos = Vector(0, 3.3, -1.15),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Front sight",
        Category = {"eft_frontsight"},
        Pos = Vector(0, 14.8+1.2, -1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top", "eft_tactical_top_big"},
        Pos = Vector(0, 11.5, -1.1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R",
        Category = {"eft_mount_mlok", "eft_mount_mlokoffset"}, -- no canti
        Pos = Vector(0.85, 10.5, 0.12),
        Ang = Angle(180, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.85, 10.5, 0.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B Tac",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0, 10.5, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK B",
        Category = {"eft_mount_mlok41", "eft_foregrip_mlok"},
        Pos = Vector(0, 5.5, 0.85),
        Ang = Angle(0, -90, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK R2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(0.5, 14, 0.5),
        Ang = Angle(180, 90, 45),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "M-LOK L2",
        Category = {"eft_mount_mlok", "eft_mount_mlokcanti", "eft_mount_mlokoffset"},
        Pos = Vector(-0.5, 14, 0.5),
        Ang = Angle(0, -90, -45),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_hg_ar15_bcm_kmr_10")
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
ATT.ModelSkin = "1"

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


ARC9.LoadAttachment(ATT, "eft_Lhg_ak_goliaf_b")
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
ATT.ModelSkin = "1"

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


ARC9.LoadAttachment(ATT, "eft_gc_ak_goliaf_b")
