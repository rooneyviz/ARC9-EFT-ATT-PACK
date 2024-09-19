local ATT = {}


ATT = {}

ATT.PrintName = "AR-15 Colt A1 pistol grip"
ATT.CompactName = "Colt A1"
ATT.Description = [[Colt A1 polymer pistol grip can be installed on any weapon compatible with AR-15 grips. Standard service grip for all AR-15-based weapons of US Army and USMC.]]
ATT.Icon = Material("entities/eft_attachments/pgrips/ar15grips/a2.png", "mips smooth")
ATT.ModelMaterial = "models/weapons/arc9/darsu_eft/mods/car15_2"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_colt_a1.mdl"

ATT.HasGrip = true

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_colta1")


ATT = {}

ATT.PrintName = "AR-15 BCM GUNFIGHTER MOD 3 Beavertail pistol grip"
ATT.CompactName = "MOD3"
ATT.Description = [[BCM MOD3 pistol grip with Beavertail can be installed on any weapon compatible with AR-15 "beavertail" style grips ,produced by BCM.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_bcm_mod3.mdl"

ATT.HasGrip = true

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip_m4"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_bcm3")


ATT = {}

ATT.PrintName = "AR-15 Zenit RK-9 pistol grip"
ATT.CompactName = "RK-9"
ATT.Description = [[The RK-9 anatomic pistol grip features a built-in hermetically sealed battery storage compartment and can be installed on any weapon compatible with AR-15 grips.
]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_rk9.mdl"

ATT.HasGrip = true

ATT.EFTErgoAdd = 9
ATT.CustomPros = { Ergonomics = "+9" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_rk9")

ATT = {}

ATT.PrintName = "Custom wood pistol grip"
ATT.CompactName = "wood"
ATT.Icon = nil
ATT.Description = [[A custom pistol grip made out of wood.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }

ATT.HasGrip = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_pgrip_custom_wood.mdl"

ATT.Category = {"eft_ak_grip"}


ARC9.LoadAttachment(ATT, "ak_pgrip_custom_wood")


ATT = {}

ATT.PrintName = "AR-15 Magpul MOE K pistol grip (Black)"
ATT.CompactName = "MOE K"
ATT.Description = [[The polymer Magpul MOE K(Magpul Original Equipment Kompact ) pistol grip can be installed on any weapon compatible with AR-15 pistol grips. Thanks to the ergonomic shape and anti-slip texture, it makes the weapon grip and control more comfortably. The inside of the grip contains free space for spare parts, tools, batteries, and an accessories kit.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_moe_k.mdl"
-- ATT.ModelSkin = 0

ATT.HasGrip = true

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_moe_k")


ATT = {}

ATT.PrintName = "AR-15 Magpul MOE K2 pistol grip (Black)"
ATT.CompactName = "MOE K2"
ATT.Description = [[The polymer Magpul MOE K2(Magpul Original Equipment Kompact 2) pistol grip can be installed on any weapon compatible with AR-15 pistol grips. Thanks to the ergonomic shape and anti-slip texture, it makes the weapon grip and control more comfortably. The inside of the grip contains free space for spare parts, tools, batteries, and an accessories kit.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_moe_k2.mdl"
-- ATT.ModelSkin = 0

ATT.HasGrip = true

ATT.EFTErgoAdd = 10
ATT.CustomPros = { Ergonomics = "+10" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip_m4"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_moe_k2")
ATT = {}

ATT.PrintName = "AR-15 Daniel Defense Enhanced AR Pistol Grip"
ATT.CompactName = "DD EAPG"
ATT.Description = [[Enhanced AR Pistol grip.
Manufactured by Daniel Defense.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_dd.mdl"
-- ATT.ModelSkin = 0

ATT.HasGrip = true

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_dd")
ATT = {}

ATT.PrintName = "AR-15 Daniel Defense Enhanced AR Pistol Grip(FDE)"
ATT.CompactName = "DD EAPG(FDE)"
ATT.Description = [[Enhanced AR Pistol grip.
Manufactured by Daniel Defense.
FDE version.]]
ATT.Icon = nil

ATT.Model = "models/weapons/arc9/darsu_eft/mods/pistolgrip_ar15_dd.mdl"
ATT.ModelSkin = 1

ATT.HasGrip = true

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }

ATT.SortOrder = 0
ATT.Category = "eft_ar15_pgrip"
ATT.MenuCategory = "ARC9 - EFT Attachments"


ARC9.LoadAttachment(ATT, "eft_ar_pgrip_dd_fde")

ATT = {}

ATT.PrintName = "AK white galil grip"
ATT.CompactName = "white galil"
ATT.Icon = nil
ATT.Description = [[A polymer pistol grip in white from the galil, used on a khyber pass made ak.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.HasGrip = true
ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak_pgrip_galil.mdl"

ATT.Category = {"eft_ak_grip"}


ARC9.LoadAttachment(ATT, "eft_grip_ak_dak")
