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
