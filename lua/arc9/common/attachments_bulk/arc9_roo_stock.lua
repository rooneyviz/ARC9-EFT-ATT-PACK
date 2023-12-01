local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}




///////////////////////////////////////      double ak hg



///////////////////////////////////////      eft_rec_ak_dogleg


///////////////////////////////////////      eft_aksu_hg_ak_std




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

ATT.PrintName = "other 5.5mm stocks"
ATT.CompactName = "other 5.5mm stocks"
ATT.Icon = nil
ATT.Description = [[use other 5.5mm stocks.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"



ATT.Category = {"eft_rpk16_stock","eft_ak74m_stock","eft_vityaz_stock","eft_saiga12_stock"}


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = {"eft_rpk16_stock","eft_ak74m_stock","eft_vityaz_stock"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -2.125, -1),
    },
}


ARC9.LoadAttachment(ATT, "eft_stock_ak74m_for_ak12")
ATT = {}


ATT.PrintName = "AK100/AK74M SAG buffer tube"
ATT.CompactName = "SAG tube"
ATT.Icon = Material("entities/eft_ak_attachments/sag/tube.png", "mips smooth")
ATT.Description = [[Sureshot Armament Group Receiver Extension Buffer Tube, 6-position, Mil-Spec diameter, designed specifically for AK100 series rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ak74m_stock","eft_vityaz_stock","eft_rpk16_stock","eft_saiga12_stock"}
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_sag_buffer_tube.mdl"
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.Attachments = {
    {
        PrintName = "AR Stock",
        Category = "eft_ar_stock",
        Pos = Vector(0.6, -3.1, 0.5),
        Ang = Angle(-3, -90, 0),
        Icon_Offset = Vector(-1, 0, 0.5),
    },
}


ARC9.LoadAttachment(ATT, "eft_sag_ak74m_buffertube")

ATT = {}


ATT.PrintName = "AK100/AK74M SAG ACR stock adaptor"
ATT.CompactName = "SAG ACR"
ATT.Icon = Material("entities/eft_ak_attachments/sag/tube.png", "mips smooth")
ATT.Description = [[Sureshot Armament Group ACR stock adapter, lets you use the ACR stock,designed specifically for AK100 series rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ak74m_stock","eft_vityaz_stock","eft_rpk16_stock","eft_saiga12_stock"}
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_acr_adaptor.mdl"
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98

ATT.Attachments = {
    {
        PrintName = "Acr Stock",
        Category = "eft_acr_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, -1, .5),
    },
}


ARC9.LoadAttachment(ATT, "eft_sag_ak74m_acr")


ATT = {}

ATT.PrintName = "UC ACR stock"
ATT.CompactName = "UC ACR"
ATT.Icon = nil
ATT.Description = [[A Custom stock for the ACR by UC Firearms]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_acr_stock"}
ATT.RecoilMult = 0.7
ATT.VisualRecoilMult = 0.7

ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }
ATT.Model = "models/weapons/arc9/darsu_eft/mods/acr_stock_custom.mdl"

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        ModelBodygroups = "0",

    },
    {
        PrintName = "Folded",
        ModelBodygroups = "1",

    },
}


ARC9.LoadAttachment(ATT, "eft_stock_acr_custom")
