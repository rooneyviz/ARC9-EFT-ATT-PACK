
local ATT = {}
ATT = {}

ATT.PrintName = "AKSU12 dust cover"
ATT.CompactName = "AKSU12"
ATT.Icon = Material("entities/eft_ak_attachments/su/dc.png", "mips smooth")
ATT.Description = [[Custom dust cover for the AKSU12 which consists of a shortened saiga 12 dust cover with an AKS-74U dust cover hinge and rear sight.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ExcludeElements = {"nolongrear", "eft_mount_dovetail_b13v", "eft_mount_dovetail_b13", "eft_scope_dovetail_pso1", "eft_scope_dovetail_pso1m2", "eft_scope_dovetail_okp7","eft_aksu12_ambi"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Category = {"eft_aksu12_dustcover"}

ATT.Attachments = {
    {
        PrintName = "Mount",
        Category = "eft_b18",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_aksu12_dc")
ATT = {}

ATT.PrintName = "AKSU12 Competition dust cover"
ATT.CompactName = "Competition"
ATT.Icon = Material("entities/eft_ak_attachments/su/dc.png", "mips smooth")
ATT.Description = [[Custom dust cover for the AKSU12 which consists of a shortened saiga 12 dust cover with an AKS-74U dust cover hinge and rear sight and a cut out on the side for competition style ambidextrous charging handles.
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ExcludeElements = {"nolongrear", "eft_mount_dovetail_b13v", "eft_mount_dovetail_b13", "eft_scope_dovetail_pso1", "eft_scope_dovetail_pso1m2", "eft_scope_dovetail_okp7"}

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.Category = {"eft_aksu12_dustcover"}

ATT.Attachments = {
    {
        PrintName = "Mount",
        Category = "eft_b18",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, -1, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_aksu12_dc_m")
ATT = {}

ATT.PrintName = "Arsenal AKSU12 dust cover"
ATT.CompactName = "AKSU12(A)"
ATT.Icon = Material("entities/eft_ak_attachments/su/dc.png", "mips smooth")
ATT.Description = [[Custom dust cover for the AKSU12 which consists of a shortened saiga 12 dust cover with an Arsenal Krinkov dust cover hinge and rear sight.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ExcludeElements = {"nolongrear", "eft_mount_dovetail_b13v", "eft_mount_dovetail_b13", "eft_scope_dovetail_pso1", "eft_scope_dovetail_pso1m2","eft_mount_dovetail_sagbit","eft_aksu12_ambi"}

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Category = {"eft_aksu12_dustcover"}

ARC9.LoadAttachment(ATT, "eft_aksu12_dc_a")
ATT = {}

ATT.PrintName = "Arsenal AKSU12 Competition dust cover"
ATT.CompactName = "Competition(A)"
ATT.Icon = Material("entities/eft_ak_attachments/su/dc.png", "mips smooth")
ATT.Description = [[Custom dust cover for the AKSU12 which consists of a shortened saiga 12 dust cover with an Arsenal Krinkov dust cover hinge and rear sight and a cut out on the side for competition style ambidextrous charging handles.
]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ExcludeElements = {"nolongrear", "eft_mount_dovetail_b13v", "eft_mount_dovetail_b13", "eft_scope_dovetail_pso1", "eft_scope_dovetail_pso1m2","eft_mount_dovetail_sagbit"}

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.Category = {"eft_aksu12_dustcover"}


ARC9.LoadAttachment(ATT, "eft_aksu12_dc_a_m")

ATT = {}

ATT.PrintName = "AKSU12 gas tube"
ATT.CompactName = "AKSU12"
ATT.Icon = Material("entities/eft_ak_attachments/su/gas.png", "mips smooth")
ATT.Description = [[Custom Widened gas tube made for the AKSU12.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGas = true
ATT.Category = {"eft_aksu12_gasblock"}
ATT.ActivateElements = {"gasblock"}

ATT.HeatCapacityMult = 0.995

ATT.Attachments = {
    {
        PrintName = "Handguard",
        Category = "eft_aksu_handguard",
        Pos = Vector(0, -0.475, 0.45),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 3.8, -0.5),
    },
}



ARC9.LoadAttachment(ATT, "eft_aksu12_gas")
ATT = {}

ATT.PrintName = "AKSU12 Competition Conversion"
ATT.CompactName = "Competition"
ATT.Icon = nil
ATT.Description = [[Conversion for the AKSU12 that makes it more competition oriented with modifications including ambidextrous charging handle,extended fire selector, better trigger, and an extended mag release.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_aksu12_conversions"}

ATT.EFTErgoAdd = 14
ATT.CustomPros = { Ergonomics = "+14" }




ARC9.LoadAttachment(ATT, "eft_aksu12_ambi")
