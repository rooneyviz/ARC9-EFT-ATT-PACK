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
        Pos = Vector(0, -4.5, 0.08),
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
        PrintName = "Mounts",
        Category = {"eft_scope_trijicon","eft_scope_compact"},
        Pos = Vector(1.75, 0, -3.13),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
        {
        PrintName = "nil",
        Category = {"nothing"},
        Ignore = true,
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(100, 100, 100),
    },

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

}
ATT.Sights = {
    {
        Pos = Vector(0, 12, -3.445),
        Ang = Angle(0, -0, 0),
        Magnification = 1.1,
        ViewModelFOV = 53,
//        IsIronSight = true
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
        IsIronSight = true,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber("1x") end
        end,

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

ATT = {}

ATT.PrintName = "RPKT dust cover"
ATT.CompactName = "RPKT"
ATT.Icon = Material("entities/eft_ak_attachments/dc_dog.png", "mips smooth")
ATT.Description = [[Standard dust cover for the rpkt.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.ActivateElements = {"norearsight", "railedcover","rec_rpkt"}
ATT.Category = {"eft_rpkt_dustcover"}

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }


ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_large", "eft_optic_small"},
        Pos = Vector(0, -4.5, -0.25),
        Ang = Angle(0, -90, 0),
        Bone = "weapon",
        Icon_Offset = Vector(-1, 0, 0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_rpkt")

ATT = {}

ATT.PrintName = "Polymer80 PF940C 9x19 pistol slide "
ATT.CompactName = "P80"
ATT.Icon = Material("entities/eft_glock_attachments/slide.png", "mips smooth")
ATT.Description = [[The PF940C slide for Glock family pistols, manufactured by Polymer80.

Not presents in EFT, custom att.]]

ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_p80_g19.mdl"
ATT.BoneMerge = true
ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g19x_rec"}

ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g19_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, -0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.18, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g19x_p80")

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
ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.RequireElements = {"eft_g47"}

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
        Category = "eft_g19_bp",
        Integral = true,
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

ATT.PrintName = "Glock TTI Cut Gen3 pistol slide Slide cut"
ATT.CompactName = "TTI G17 SC"
ATT.Icon = nil
ATT.Description = [[A Glock 17 slide custom cut by taran tactical innovations for "ultimate competition performance".

slide cut for RMR sights.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_tti.mdl"
ATT.ModelBodygroups = "100"
ATT.BoneMerge = true

ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
ATT.Folder = "TTI"
ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_rec"}
ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

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
        Pos = Vector(0, -0.05, 0),
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
        PrintName = "Optic",
        Category = {"eft_rmr", "eft_g17_zt_cap"},
        Pos = Vector(0, -0.92, -0.15),
        Icon_Offset = Vector(0.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g17_tti_sc")
ATT = {}

ATT.PrintName = "Glock TTI Cut Gen3 pistol slide "
ATT.CompactName = "TTI G17 "
ATT.Icon = nil
ATT.Description = [[A Glock 17 slide custom cut by taran tactical innovations for "ultimate competition performance".

]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_tti.mdl"
ATT.ModelBodygroups = "000"
ATT.BoneMerge = true

ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.Folder = "TTI"
ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_rec"}
ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

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
        Pos = Vector(0, -0.05, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Compensator",
        Category = "eft_g17_g4",
        Pos = Vector(0, 5, 0.6),
        Ang = Angle(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g17_tti")
ATT = {}

ATT.PrintName = "Glock TTI Cut Glock 19 pistol slide Slide cut"
ATT.CompactName = "TTI G19 SC"
ATT.Icon = nil
ATT.Description = [[A Glock 19 slide custom cut by taran tactical innovations for "ultimate competition performance".

slide cut for RMR sights.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_tti.mdl"
ATT.ModelBodygroups = "300"
ATT.BoneMerge = true

ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
ATT.Folder = "TTI"
ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g19x_rec"}
ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g19_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, -0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.18, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Optic",
        Category = {"eft_rmr", "eft_g17_zt_cap"},
        Pos = Vector(0, -1.05, -0.15),
        Icon_Offset = Vector(0.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
},    {
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g19_tti_sc")
ATT = {}

ATT.PrintName = "Glock TTI Cut Glock 19 pistol slide "
ATT.CompactName = "TTI G19 "
ATT.Icon = nil
ATT.Description = [[A Glock 19 slide custom cut by taran tactical innovations for "ultimate competition performance".

]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_tti.mdl"
ATT.ModelBodygroups = "200"
ATT.BoneMerge = true

ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.Folder = "TTI"
ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g19x_rec"}
ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g19_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, -0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.18, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
},    {
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

}


ARC9.LoadAttachment(ATT, "eft_rec_g19_tti")
ATT = {}

ATT.PrintName = "Glock TTI Cut Glock 34 pistol slide Slide cut"
ATT.CompactName = "TTI G34 SC"
ATT.Icon = nil
ATT.Description = [[A Glock 34 slide custom cut by taran tactical innovations for "ultimate competition performance".

slide cut for RMR sights.]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_tti.mdl"
ATT.ModelBodygroups = "500"
ATT.BoneMerge = true

ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96
ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.Folder = "TTI"
ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.RequireElements = {"eft_g34"}
ATT.Category = {"eft_g17_rec"}
ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, 0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.05, 0),
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
        PrintName = "Optic",
        Category = {"eft_rmr", "eft_g17_zt_cap"},
        Pos = Vector(0, -0.92, -0.15),
        Icon_Offset = Vector(0.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g34_tti_sc")
ATT = {}

ATT.PrintName = "Glock TTI Cut Glock 34 pistol slide "
ATT.CompactName = "TTI G34 "
ATT.Icon = nil
ATT.Description = [[A Glock 34 slide custom cut by taran tactical innovations for "ultimate competition performance".

]]
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_tti.mdl"
ATT.ModelBodygroups = "400"
ATT.BoneMerge = true

ATT.VisualRecoilMult = 0.96
ATT.RecoilMult = 0.96
ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.Folder = "TTI"
ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.RequireElements = {"eft_g34"}
ATT.Category = {"eft_g17_rec"}
ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, 0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.05, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Compensator",
        Category = "eft_g17_g4",
        Pos = Vector(0, 5, 0.6),
        Ang = Angle(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g34_tti")



ATT = {}

ATT.PrintName = "Glock 34 9x19 pistol slide"
ATT.CompactName = "Glock 34"
ATT.Icon = Material("entities/eft_glock_attachments/slide.png", "mips smooth")
ATT.Description = [[A standard-issue slide for Glock 34 9x19 pistols.]]

-- ATT.VisualRecoilMult = 0.99
ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.RecoilMult = .99
ATT.VisualRecoilMult = .99
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_34.mdl"
ATT.ModelBodygroups = "000"
ATT.BoneMerge = true
ATT.RequireElements = {"eft_g34"}

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_rec"}
ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, 0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.05, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g34_std")

ATT = {}

ATT.PrintName = "Glock 17l 9x19 pistol slide"
ATT.CompactName = "Glock 17l"
ATT.Icon = Material("entities/eft_glock_attachments/slide.png", "mips smooth")
ATT.Description = [[A standard-issue slide for Glock 17l 9x19 pistols.]]
ATT.RequireElements = {"eft_g17l"}

-- ATT.VisualRecoilMult = 0.99
ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.RecoilMult = .98
ATT.VisualRecoilMult = .98
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_34.mdl"
ATT.ModelBodygroups = "200"
ATT.BoneMerge = true

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g17_rec"}
ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, 0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.05, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g17l_std")

ATT = {}

ATT.PrintName = "Polymer80 PF940C 9x19 pistol slide "
ATT.CompactName = "P80"
ATT.Icon = Material("entities/eft_glock_attachments/slide.png", "mips smooth")
ATT.Description = [[The PF940C slide for Glock family pistols, manufactured by Polymer80.

Not presents in EFT, custom att.
Black colored version.]]
ATT.ModelSkin = 1

ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_p80_g19.mdl"
ATT.BoneMerge = true
ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g19x_rec"}

ATT.Attachments = {
{
        PrintName = "Back Plate",
        Category = "eft_g19_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, -0.6, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.18, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g19x_p80_b")


ATT = {}

ATT.PrintName = "Glock Polymer80 PS9 pistol slide"
ATT.CompactName = "G PS9"
ATT.Icon = Material("entities/eft_glock_attachments/slide_ps9.png", "mips smooth")
ATT.Description = [[The PS9 slide for Glock family pistols, manufactured by Polymer80.

Not presents in EFT, custom att.
Black colored version.]]

ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.ModelBodygroups = "300"

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_p80_g19.mdl"
ATT.BoneMerge = true
ATT.ModelSkin = 1

ATT.Category = {"eft_g17_rec"}
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
        Pos = Vector(0, -0.05, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Compensator",
        Category = "eft_g17_g4",
        Pos = Vector(0, 5, 0.6),
        Ang = Angle(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g17_ps9_b")
ATT = {}

ATT.PrintName = "Glock Polymer80 Pfc19 pistol slide"
ATT.CompactName = "G Pfc19"
ATT.Icon = Material("entities/eft_glock_attachments/slide_ps9.png", "mips smooth")
ATT.Description = [[The Pfc19 slide for Glock family pistols, manufactured by Polymer80.

Not presents in EFT, custom att.
]]

ATT.VisualRecoilMult = 0.98
ATT.RecoilMult = 0.98
ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.ModelBodygroups = "100"

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Model = "models/weapons/arc9/darsu_eft/mods/slide_p80_g19.mdl"
ATT.BoneMerge = true
ATT.ModelSkin = 1

ATT.Category = {"eft_g17_rec"}
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
        Pos = Vector(0, -0.05, 0),
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
        PrintName = "Back Plate",
        Category = "eft_g17_bp",
        Integral = true,
        Pos = Vector(0, 0, 0),
        Icon_Offset = Vector(-4, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },

}


ARC9.LoadAttachment(ATT, "eft_rec_g17_pfc19")

