local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}



ATT = {}

ATT.PrintName = "(Kochevnik)AK-74M dust cover (6P34 0-1)"
ATT.CompactName = "Kochevnik"
ATT.Icon = nil
ATT.Description = [[A standard-issue dust cover for AK-74M automatic rifles But with modifications for the Kochevnik bullpup kit, manufactued by Izhmash.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_dc_kochevnik.mdl"

ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }

ATT.Category = {"eft_ak74_dustcover"}


ARC9.LoadAttachment(ATT, "eft_rec_ak_kochevnik")







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

ATT.PrintName = "AK TWS Dog Leg Rail dust cover"
ATT.CompactName = "TWS Dog Leg"
ATT.Icon = Material("entities/eft_ak_attachments/dc_dog.png", "mips smooth")
ATT.Description = [[The Texas Weapon Systems Dog Leg Rail dust cover with an integrated Picatinny rail is compatible with all models of Kalashnikov automatic rifles and carbines based on the AK platform.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/sg12_dc_tws.mdl"

ATT.ActivateElements = {"norearsight", "railedcover","nolongrear"}
ATT.Category = {"eft_saiga12_dustcover"}
ATT.BoneMerge = true

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }


ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_large", "eft_optic_small"},
        Pos = Vector(0, 1.25, -0.48),
        Ang = Angle(0, -90, 0),
        Bone = "weapon",
        Icon_Offset = Vector(-1, 0, 0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_saiga12_dogleg")
