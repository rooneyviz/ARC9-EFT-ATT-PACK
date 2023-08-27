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
    },
}


ARC9.LoadAttachment(ATT, "eft_roo_gas_ak_vs24vs33_w")
