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
ATT.HasStock = true

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
ATT.CompactName = "Kochevnik"
ATT.Icon = nil
ATT.Description = [[Stock for the Kochevnik Bullpup kit, Mil-Spec diameter will fit any modern AK-based rifles with side-folding stock.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_kochevnik.mdl"

ATT.Category = {"eft_ak74m_stock", "eft_vityaz_stock"}

ATT.EFTErgoAdd = 3
ATT.CustomCons = { Ergonomics = "+3" }



ARC9.LoadAttachment(ATT, "eft_stock_ak74m_kochevnik")

ATT = {}

ATT.PrintName = "AKM to AK100 adapter"
ATT.CompactName = "AK100"
ATT.Icon = nil
ATT.Description = [[An adapter for the installation of AK100 folding AK stocks on AKs with non-folding stocks.]]
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
ATT.Icon = nil
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
        Pos = Vector(0, -.5, 0),
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


ATT = {}

ATT.PrintName = "AK-100 \"Plum\" polymer stock"
ATT.CompactName = "Plum"
ATT.Icon = Material("entities/eft_ak_attachments/stock/74m.png", "mips smooth")
ATT.Description = [[A polymer stock for AK-74M automatic rifles, manufactured by Izhmash. Made out of plum-colored polymer, for which has earned the nickname "Sliva" ("Plum").]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_ak74m_std_plum.mdl"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68

ATT.Category = {"eft_ak74m_stock"}

ATT.Attachments = {
    {
        PrintName = "Recoil pad",
        Category = {"eft_stock_ak_pad"},
        Pos = Vector(0, 0, -0.15),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -9.7, -1),
    },
}


ARC9.LoadAttachment(ATT, "eft_stock_ak74m_plum_std")

ATT = {}

ATT.PrintName = "AK-100 Wood stock"
ATT.CompactName = "Wood"
ATT.Icon = Material("entities/eft_ak_attachments/stock/74m.png", "mips smooth")
ATT.Description = [[A custom made wooden stock for AK-74M automatic rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_ak74m_std_wood.mdl"ATT.ModelBodygroups = "01"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68

ATT.Category = {"eft_ak74m_stock"}

ATT.Attachments = {
    {
        PrintName = "Recoil pad",
        Category = {"eft_stock_ak_pad"},
        Pos = Vector(0, 0, -0.15),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -9.7, -1),
    },
}


ARC9.LoadAttachment(ATT, "eft_stock_ak74m_wood_std")

ATT = {}

ATT.PrintName = "AKS-74 Wood stock"
ATT.CompactName = "Wood"
ATT.Icon = Material("entities/eft_ak_attachments/stock/74m.png", "mips smooth")
ATT.Description = [[A custom made wooden stock for AKS-74 automatic rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_ak74m_std_wood.mdl"ATT.ModelBodygroups = "00"

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }
ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68

ATT.Category = {"eft_aks_stock"}

ATT.Attachments = {
    {
        PrintName = "Recoil pad",
        Category = {"eft_stock_ak_pad"},
        Pos = Vector(0, 0, -0.15),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -9.7, -1),
    },
}


ARC9.LoadAttachment(ATT, "eft_stock_aks74_wood_std")


ATT = {}

ATT.PrintName = "Q Honey Badger Receiver Extension buffer tube"
ATT.CompactName = "Q HB"
ATT.Description = [[Standard buffer tube for the Q honey badger. Manufactured by Q.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 0
ATT.ModelBodygroups = "10000"

ATT.HasBufferTube = true

ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.Category = {"eft_ar15_buffertube", "eft_hk416_buffertube"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_qhb_stockmech",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


ARC9.LoadAttachment(ATT, "eft_ar_buffertube_honeybadger")


ATT = {}

ATT.PrintName = "Q Honey Badger Stock Assembly"
ATT.CompactName = "Q HB"
ATT.Description = [[Standard Stock Assembly for the Q honey badger. Manufactured by Q.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 0
ATT.ModelBodygroups = "01000"


ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99
ATT.ActivateElements = {"noar15plate","eft_ar_buffertube_a2"}
ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.Category = "eft_qhb_stockmech"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_qhb_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-2, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


ARC9.LoadAttachment(ATT, "eft_ar_stockmech_honeybadger")

ATT = {}

ATT.PrintName = "Q Honey Badger Stock"
ATT.CompactName = "Q HB"
ATT.Description = [[Standard Stock for the Q honey badger. Manufactured by Q.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 0
ATT.ModelBodygroups = "00200"
ATT.HasStock = true


ATT.RecoilMult = 0.76
ATT.VisualRecoilMult = 0.76

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.Category = "eft_qhb_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        ModelOffset = Vector(0, 0, 0)

    },
    {
        PrintName = "Folded",
        ModelOffset = Vector(4.71, 0, 0)


    },
}

ARC9.LoadAttachment(ATT, "eft_ar_stock_honeybadger")

ATT = {}

ATT.PrintName = "Q Honey Badger Brace"
ATT.CompactName = "Q HB Brace"
ATT.Description = [[Standard Brace for the Q honey badger. Manufactured by Q.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 0
ATT.ModelBodygroups = "00100"

ATT.HasStock = true

ATT.RecoilMult = 0.83
ATT.VisualRecoilMult = 0.83

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.SortOrder = 0
ATT.Category = "eft_qhb_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        ModelOffset = Vector(0, 0, 0)

    },
    {
        PrintName = "Folded",
        ModelOffset = Vector(4.71, 0, 0)


    },
}


ARC9.LoadAttachment(ATT, "eft_ar_BRACe_honeybadger")
ATT = {}

ATT.PrintName = "Q Honey Badger Receiver Extension buffer tube(BLACK)"
ATT.CompactName = "Q HB(B)"
ATT.Description = [[Standard buffer tube for the Q honey badger. Manufactured by Q.(BLACK)]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 1
ATT.ModelBodygroups = "10000"

ATT.HasBufferTube = true

ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.Category = {"eft_ar15_buffertube", "eft_hk416_buffertube"}
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_qhb_stockmech",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


ARC9.LoadAttachment(ATT, "eft_ar_buffertube_honeybadger_BLK")


ATT = {}

ATT.PrintName = "Q Honey Badger Stock Assembly(BLACK)"
ATT.CompactName = "Q HB(B)"
ATT.Description = [[Standard Stock Assembly for the Q honey badger. Manufactured by Q.(BLACK)]]
ATT.Icon = nil
ATT.ActivateElements = {"noar15plate","eft_ar_buffertube_a2"}
ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 1
ATT.ModelBodygroups = "01000"


ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.Category = "eft_qhb_stockmech"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_qhb_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-2, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


ARC9.LoadAttachment(ATT, "eft_ar_stockmech_honeybadger_BLK")

ATT = {}

ATT.PrintName = "Q Honey Badger Stock(BLACK)"
ATT.CompactName = "Q HB(B)"
ATT.Description = [[Standard Stock for the Q honey badger. Manufactured by Q.(BLACK)]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 1
ATT.ModelBodygroups = "00200"

ATT.HasStock = true

ATT.RecoilMult = 0.76
ATT.VisualRecoilMult = 0.76

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.Category = "eft_qhb_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        ModelOffset = Vector(0, 0, 0)

    },
    {
        PrintName = "Folded",
        ModelOffset = Vector(4.71, 0, 0)


    },
}

ARC9.LoadAttachment(ATT, "eft_ar_stock_honeybadger_BLK")

ATT = {}

ATT.PrintName = "Q Honey Badger Brace(BLACK)"
ATT.CompactName = "Q HB Brace(B)"
ATT.Description = [[Standard Brace for the Q honey badger. Manufactured by Q(BLACK).]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_hb.mdl"
ATT.ModelSkin = 1
ATT.ModelBodygroups = "00100"

ATT.HasStock = true

ATT.RecoilMult = 0.83
ATT.VisualRecoilMult = 0.83

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.SortOrder = 0
ATT.Category = "eft_qhb_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        ModelOffset = Vector(0, 0, 0)

    },
    {
        PrintName = "Folded",
        ModelOffset = Vector(4.71, 0, 0)


    },
}


ARC9.LoadAttachment(ATT, "eft_ar_BRACe_honeybadger_blk")

ATT = {}

ATT.PrintName = " M4 GEN1 STOCK"
ATT.CompactName = "M4 GEN1"
ATT.Description = [[The Original 1st generation stock on M4 carbines.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_m4_gen1.mdl"
ATT.ModelOffset = Vector(-.5, 0, 0)

ATT.HasStock = true

ATT.RecoilMult = 0.83
ATT.VisualRecoilMult = 0.83

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_stock_m4a1_gen1")

ATT = {}

ATT.PrintName = "AR-15 BCM GUNFIGHTER MOD 0 stock"
ATT.CompactName = "BCM MOD0"
ATT.Description = [[A drop-in replacement buttstock for AR-15/M16 carbines. It uses mil-spec sized receiver extension tubes. Designed for the modern battlefield, the sleek profile, dual-side release latches, rolled toe, and angled rubber butt-pad are optimized for use with body armor or modular gear and provides for efficient shoulder transitions.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_bcm_butrealthistime.mdl"
ATT.HasStock = true
ATT.ModelOffset = Vector(-.5, 0, 0)
ATT.ModelSkin = 1
ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_stock_bcm_mod0")

ATT = {}

ATT.PrintName = "AR-15 BCM GUNFIGHTER MOD 0 stock(FDE)"
ATT.CompactName = "BCM MOD0(FDE)"
ATT.Description = [[A drop-in replacement buttstock for AR-15/M16 carbines. It uses mil-spec sized receiver extension tubes. Designed for the modern battlefield, the sleek profile, dual-side release latches, rolled toe, and angled rubber butt-pad are optimized for use with body armor or modular gear and provides for efficient shoulder transitions.
FDE versiom.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_bcm_butrealthistime.mdl"
ATT.HasStock = true
ATT.ModelOffset = Vector(-.5, 0, 0)
ATT.ModelSkin = 0
ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_stock_bcm_mod0_fde")

ATT = {}

ATT.PrintName = "khyber pass folding stock"
ATT.CompactName = "folding"
ATT.Icon = nil
ATT.Description = [[A folding stock for non-folding akm style trunnions, made for a khyber pass krinkov .]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }
ATT.RecoilMult = 0.67
ATT.VisualRecoilMult = 0.67

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_stock_fold_akm.mdl"

ATT.Category = {"eft_akm_stock"}

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        ModelBodygroups = "0",
        Attachments = {
 	     {
 	         PrintName = "Recoil pad",
 	         Category = {"eft_stock_ak_pad"},
  	         Pos = Vector(0, -2, 0),
      	    Ang = Angle(0, 0, 0),
  	         Icon_Offset = Vector(0, -10.7, -1),
   	   },
	  }

    },
    {
        PrintName = "Folded",
        ModelBodygroups = "1",
        Attachments = {
 	     {
 	         PrintName = "Recoil pad",
 	         Category = {"eft_stock_ak_pad"},
  	         Pos = Vector(0, 2, 0),
      	    Ang = Angle(0, 90, 0),
  	         Icon_Offset = Vector(0, -10.7, -1),
   	   },
	  }


    },
}




ARC9.LoadAttachment(ATT, "eft_stock_fold")
ATT = {}

ATT.PrintName = "Magpul MOE SL Carbine stock"
ATT.CompactName = "MOE SL"
ATT.Description = [[A drop-in replacement buttstock for AR-15/M16 carbines. It uses mil-spec sized receiver extension tubes. Designed for the modern battlefield, the sleek profile, dual-side release latches, rolled toe, and angled rubber butt-pad are optimized for use with body armor or modular gear and provides for efficient shoulder transitions.]]
ATT.Icon = Material("entities/eft_attachments/stocks/ds150.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_bcm_mod1.mdl"
// i know its not bcm 
ATT.HasStock = true

ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68
ATT.Folder = "Magpul"

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_stock_moe_sl")

ATT = {}

ATT.PrintName = "AR-15 BCM SOPMOD MOD 2 stock"
ATT.CompactName = "BCM MOD2"
ATT.Description = [[A drop-in replacement buttstock for AR-15/M16 carbines. It uses mil-spec sized receiver extension tubes. Designed for the modern battlefield, the sleek profile, dual-side release latches, rolled toe, and angled rubber butt-pad are optimized for use with body armor or modular gear and provides for efficient shoulder transitions.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_bcm_mod2.mdl"
ATT.HasStock = true
ATT.ModelOffset = Vector(-.5, 0, 0)
ATT.ModelSkin = 1
ATT.RecoilMult = 0.68
ATT.VisualRecoilMult = 0.68

ATT.EFTErgoAdd = 12
ATT.CustomPros = { Ergonomics = "+12" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_stock_bcm_mod2")

ATT = {}

ATT.PrintName = "Q Sugar Weasel buffer tube"
ATT.CompactName = "Q SW"
ATT.Description = [[Buffer Tube  included with the Q Sugar Weasel, 4-position, Mil-Spec diameter will fit any AR-15-based carbine.]]
ATT.Icon = Material("entities/eft_attachments/stocks/colttube.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_colt_stock_tube_std.mdl"

ATT.HasBufferTube = true

ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

-- ATT.EFTErgoAdd = 4
-- ATT.CustomPros = { Ergonomics = "+4" }
ATT.ModelMaterial = "models/weapons/arc9/darsu_eft/mods/sweaseltube_d"

ATT.SortOrder = 0
ATT.Category = "eft_ar15_buffertube"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_ar_stock",
        Pos = Vector(3, 0, 0.9),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


ARC9.LoadAttachment(ATT, "eft_ar_buffertube_sweasel")

ATT = {}

ATT.PrintName = "Five-0 buffer tube"
ATT.CompactName = "Five-0"
ATT.Description = [[Buffer Tube  included with the Five-0 PCC, 4-position, Mil-Spec diameter will fit any AR-15-based carbine.]]
ATT.Icon = Material("entities/eft_attachments/stocks/colttube.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_colt_stock_tube_std.mdl"

ATT.HasBufferTube = true

ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

-- ATT.EFTErgoAdd = 4
-- ATT.CustomPros = { Ergonomics = "+4" }
ATT.ModelMaterial = "models/weapons/arc9/darsu_eft/mods/five0tube"

ATT.SortOrder = 0
ATT.Category = "eft_ar15_buffertube"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_ar_stock",
        Pos = Vector(3, 0, 0.9),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}


ARC9.LoadAttachment(ATT, "eft_ar_buffertube_five0")

ATT = {}

ATT.PrintName = "KAC backplate"
ATT.CompactName = "KAC"
ATT.Description = [[An extended backplate for the AR15 and AR10 with a sling attachment point. Made by KAC.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/bp_ar15_kac.mdl"
ATT.ModelSkin = 0
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.ModelOffset = Vector(0, 0, -.07)

ATT.SortOrder = 0
ATT.Category = {"eft_ar15_buffertube", "eft_hk416_buffertube"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ActivateElements = {"noar15plate"}

ATT.Attachments = {
    {
        PrintName = "Stock",
        Category = "eft_ar15_buffertube",
        RejectAttachments = { -- wawa
            ["eft_ar_buffertube_a2"] = true,
            ["eft_ar_buffertube_m7a1"] = true,
            ["eft_ar_buffertube_m7a1f"] = true,
            ["eft_ar_buffertube_ubrgen2"] = true,
            ["eft_ar_buffertube_ubrgen2f"] = true,
            ["eft_ar_buffertube_viperpdw"] = true,
         },
        Pos = Vector(0.17, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, 0, 0),
        ExcludeElements = {"pgrip_stock"},
    },
}
ATT.Max = 1


ARC9.LoadAttachment(ATT, "eft_ar_backplate_kac")
ATT = {}

ATT.PrintName = "AR-15 KAC M110 stock"
ATT.CompactName = "m110"
ATT.Description = [[Stock designed for the M110.]]
ATT.Icon = Material("entities/eft_attachments/stocks/a2.png", "mips smooth")

ATT.Model = "models/weapons/arc9/darsu_eft/mods/stock_ar15_m110.mdl"
ATT.ModelOffset = Vector(2.75, 0, 0.9)
ATT.HasStock = true

ATT.RecoilMult = 0.7
ATT.VisualRecoilMult = 0.7

ATT.ExcludeElements = {"pgrip_stock"}

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_ar_stock_a2"
ATT.MenuCategory = "ARC9 - EFT Attachments"
ARC9.LoadAttachment(ATT, "eft_ar_m110_stock")

