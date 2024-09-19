local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}



ATT = {}

ATT.PrintName = "AK gasblocks"
ATT.CompactName = "AK gasblocks"
ATT.Icon = nil
ATT.Description = [[use ak gas tubes on the rd704.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Category = {"eft_rd704_gasblock"}

ATT.Attachments = {
    {
        PrintName = "Ak gasblock",
        Category = {"eft_ak_gasblock"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(1, 1, 1),
    }
}


ARC9.LoadAttachment(ATT, "eft_roo_gas_ak_vs24vs33_w")

ATT = {}

ATT.PrintName = "Standard RPKT Gastube"
ATT.CompactName = "RPKT"
ATT.Icon = Material("entities/eft_ak_attachments/m1b.png", "mips smooth")
ATT.Description = [[The standard gas tube for the RPKT.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true
ATT.Category = {"eft_rpkt_gasblock"}

ATT.ActivateElements = {"gasblock_rpkt"}
ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.03

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0, 2.7, -0.57),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(1, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_top"},
        Pos = Vector(0, 6.8, -0.57),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 1, 0),
    },
    {
        PrintName = "handguard",
        Category = {"eft_rpkt_hg"},
        Pos = Vector(0,0,0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, -1, -1),
    },

}


ARC9.LoadAttachment(ATT, "eft_gas_rpkt")

ATT = {}

ATT.PrintName = "RPKT AK handguard gastube"
ATT.CompactName = "AK"
ATT.Icon = Material("entities/eft_ak_attachments/gas_akm.png", "mips smooth")
ATT.Description = [[A custom made gastube that lets you use normal ak handguards on the RPKT.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true

ATT.HeatCapacityMult = 0.995

ATT.Category = {"eft_rpkt_gasblock"}
ATT.ActivateElements = {"gasblock","rpkt_gb_ak"}

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Category = "eft_ak_handguard",
        Pos = Vector(0, -1.8, 0.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_gas_rpkt_ak_hg")

ATT = {}

ATT.PrintName = "AK UltiMAK M13 gas tube"
ATT.CompactName = "M13"
ATT.Icon = Material("entities/eft_ak_attachments/m1b.png", "mips smooth")
ATT.Description = [[The UltiMAK M13 gas tube for AKS-74U automatic rifles sets the gas piston movement direction and, at the same time, serves as a mount for installing reflex sights and tactical devices.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/aksu_hephaestus_gastube.mdl"
ATT.LHIK = false
ATT.Category = {"eft_aksu_gasblock","eft_aksu12_gasblock"}

ATT.ModelOffset = Vector(0,-.5,-.4)

ATT.EFTErgoAdd = 3.5
ATT.CustomPros = { Ergonomics = "+3.5" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.HeatCapacityMult = 1.02

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_small","eft_tactical_top"},
        Pos = Vector(0, 2.7, -0.59),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(1, 0, 0),
        ExtraSightDistance = 8
    },
    {
        PrintName = "Handguard",
        Category = "eft_aksu_Lhandguard",
        Pos = Vector(0, -0.475, 0.45),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, -1.5),
    },

    }


ARC9.LoadAttachment(ATT, "eft_gas_aksu_m1b")

ATT = {}

ATT.PrintName = "PP-19-01 \"Vityaz\" gas tube"
ATT.CompactName = "19-01 gas"
ATT.Icon = Material("entities/eft_ak_attachments/vityaz/gas.png", "mips smooth")
ATT.Description = [[A standard gas tube for PP-19-01 Vityaz submachine guns. Gas tubes channel the travel direction of gas piston.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HeatCapacityMult = 0.985

ATT.HasGas = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_gb_pp1901.mdl"

ATT.Category = {"eft_rd704_gasblock"}
ATT.ActivateElements = {"gasblock"}

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Category = {"eft_vityaz_handguard"},
        Pos = Vector(0, -1.8, 0.5),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, -0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_vityaz_gas_std_rd704")

ATT = {}

ATT.PrintName = "AR-15 Q Honey Badger Gas Block"
ATT.CompactName = "Honey Badger"
ATT.Icon = nil
ATT.Description = [[A Low-profile gas block for AR-15 system barrels, Standard gas block for the Q Honey Badger.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.HasGas = true

ATT.Model = "models/weapons/arc9/darsu_eft/mods/gas_block_ar15_hbadger.mdl"
ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.98
ATT.Category = {"eft_ar15_gasblock"}

ARC9.LoadAttachment(ATT, "eft_gas_ar15_hbadger")
