local ATT = {}

ATT = {}


ATT.PrintName = "ARSENAL 4 Piece Flash Hider"
ATT.CompactName = "4 piece"
ATT.Icon = nil
ATT.Description = [[Bell shaped flash hider intended for M43 and 5.45 usage. Reduces muzzle flash while deeply heavening the barrel.]]
ATT.Category = {"eft_ak74_muzzle", "eft_ak103_muzzle", "eft_ak_ttak", "eft_rpk16_muzzle","eft_ak101_muzzle"}
ATT.SortOrder = 1
ATT.MuzzleParticleOverride = "muzzleflash_mp5"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/ak104_flash.mdl"
ATT.Scale = 1.25
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(0,0, 0)
ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.PhysBulletMuzzleVelocityMult = 1.015
ATT.NoFlash = true

ARC9.LoadAttachment(ATT, "eft_muz_4pc")

ATT = {}

ATT.PrintName = "XM177 5.56x45 flash hider"
ATT.CompactName = "XM177"
ATT.Icon = nil
ATT.Description = [[Flash hider designed for special forces operations at night.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9_eft_shared/atts/muzzle/muzzle_xm177.mdl"
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.EFTErgoAdd = -10
ATT.CustomCons = { Ergonomics = "-10" }
ATT.ShootSound = { "weapons/darsu_eft/ak/fire_new/akm_close_loop_1.ogg", "weapons/darsu_eft/ak/fire_new/akm_close_loop_2.ogg", "weapons/darsu_eft/ak/fire_new/akm_close_loop_3.ogg", "weapons/darsu_eft/ak/fire_new/akm_close_loop_4.ogg" }
ATT.CustomPros = { Changes_sound = True }

ATT.RecoilMult = 0.96
ATT.VisualRecoilMult = 0.96

ATT.Category = {"eft_ar15_muzzle", "eft_ak101_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_xm177")

ATT = {}

ATT.PrintName = "PBS-1 Wolverine sound suppressor"
ATT.CompactName = "PBS-1"
ATT.Icon = Material("entities/eft_ak_attachments/muzzle/pbs1.png", "mips smooth")
ATT.Description = [[PBS-1 (Pribór Besshúmnoy Strel'bý - "Silent Firing Device") Wolverine is a sound suppressor resembling the original Soviet PBS-1, manufactured by SilencerCo for noiseless and flash-free fire with AK family assault rifles.


model is not 100% accurate, i promise it will be fixed soon]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -25
ATT.CustomCons = { Ergonomics = "-25" }
ATT.RecoilMult = 0.88
ATT.VisualRecoilMult = 0.88
ATT.SpreadMult = 1.01
ATT.HeatCapacityMult = 1.14
ATT.PhysBulletMuzzleVelocityMult = 1.0075

ATT.Model = "models/weapons/arc9/darsu_eft/mods/silencer_akm_tochmash_pbs-1_762x39.mdl"

ATT.Category = {"eft_ak74_muzzle", "eft_ak104_muzzle"}

ATT.Silencer = true
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 5
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ARC9.LoadAttachment(ATT, "eft_pbs1_wolverine_roo")
ATT = {}

ATT.PrintName = "Q Cherry Bomb Muzzle Break"
ATT.CompactName = "Cherry Bomb"
ATT.Icon = nil
ATT.Description = [[The Cherry Bomb is a device that reduces recoil and muzzle rise that also serves as a platform for attaching QD muzzle Attachments. It can be Installed on several weapon platforms.
heh.. tyler the creator reference]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/q_cherry_bomb_qd.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5
ATT.ModelOffset = Vector(-.15, 0, 0)


ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.92
ATT.VisualRecoilMult = 0.92
ATT.HeatCapacityMult = 0.99
ATT.SpreadMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 1.01

ATT.Attachments = {
    {
        PrintName = "Silencer",
        Category = "eft_hbadger_qd",
        Pos = Vector(-0.1, 0, 0),
        Icon_Offset = Vector(1, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ATT.Category = {"eft_ar10_muzzle", "eft_mcx_muzzle", "eft_ak101_muzzle", "eft_ar15_muzzle", "eft_pp1901_muzzle", "eft_stm9_muzzle", "eft_glock_muzzle"}

ARC9.LoadAttachment(ATT, "eft_muzzle_ar10_q_qd_cherry_bomb")

ATT = {}

ATT.PrintName = "Q Honey Badger Suppressor"
ATT.CompactName = "Q HB"
ATT.Icon = nil
ATT.Description = [[The Q Honey Badger sound suppressor is designed for use with .300 AAC rounds, but also functions as a superb multi-caliber suppressor for multiple hosts, providing excellent performance on 7.62 NATO, .300, 6.8 SPC, 6.5, and 5.56mm NATO. Can only be installed on compatible muzzle devices made by Q.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/q_trash_panda_qd.mdl"
ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.NoFlash = true
ATT.BarrelLengthAdd = 5
ATT.Silencer = true

ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 5

ATT.EFTErgoAdd = -23
ATT.CustomCons = { Ergonomics = "-23" }
ATT.RecoilMult = 0.87
ATT.VisualRecoilMult = 0.87
ATT.SpreadMult = 1.03
ATT.HeatCapacityMult = 1.135
ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.Category = {"eft_hbadger_qd"}

ARC9.LoadAttachment(ATT, "eft_silencer_honeybadger")


ATT = {}

ATT.PrintName = "AR9 A2 style 9x19 flash hider"
ATT.CompactName = "AR9 A2"
ATT.Icon = Material("entities/eft_mcx_attachments/mpxmuz.png", "mips smooth")
ATT.Description = [[An A2 style Bird Cage flash hider for AR9 PCC's.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_mpx_sig_mpx_a2.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.SpreadMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 1.005

ATT.Category = {"eft_stm9_muzzle"}

ARC9.LoadAttachment(ATT, "eft_ar9_muzzle_a2")
