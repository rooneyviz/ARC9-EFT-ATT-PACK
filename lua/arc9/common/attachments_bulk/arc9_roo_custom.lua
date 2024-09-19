local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local path = "weapons/darsu_eft/glock/"

local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}





ATT = {}

ATT.PrintName = "Alternative viewmodel position thing"
ATT.CompactName = "Pistol hold rooney"
ATT.Icon = Material("entities/eft_extras_attachments/pistol15pose.png", "mips smooth")
ATT.Description = [[tactical 

this is meant for pistol-izing non-pistol guns, not for pistols
eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 70
ATT.ActivePos = Vector(-3.6, 0, 0.3)
ATT.ActiveAng = Angle(0, 0, -5)
ATT.SprintAng = Angle(-2, 30, -7)
ATT.SprintPos = Vector(-3, 1, -8)
ATT.CrouchPos = Vector(-4.6, -2, -0.92)
ATT.CrouchAng = Angle(0, 0, -20)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ARC9.LoadAttachment(ATT, "eft_extras_alt_pistol_hold151000200")

ATT = {}

ATT.PrintName = "no shells"
ATT.CompactName = "noshells"
ATT.Icon = nil
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 
ATT.ShellScale = 0.01
ATT.ShellModel = nil
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_noshells")


ATT = {}

ATT.PrintName = "HasAmmoooooooo = true"
ATT.CompactName = "has ammo"
ATT.Icon = nil
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 
ATT.HasAmmoooooooo = true 

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ARC9.LoadAttachment(ATT, "eft_extras_hasammo")
ATT = {}

ATT.PrintName = "Airsoft 6mm BB"
ATT.CompactName = "6mm BB"
ATT.Icon = Material("entities/eft_attachments/ammo/556/bb.png", "mips smooth")
ATT.Description = [[Airsoft 6mm 0.2g BBs.

This ammo type really exists in tarkov but not used! because there is no fucking airsoft rifles in tarkov!
https://tarkov-changes.com/item/Airsoft%206mm%20BB ]]
ATT.SortOrder = 99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "Airsoft 6mm BBs"

ATT.DamageMaxOverride = 1 
ATT.DamageMinOverride = 0.63 
ATT.PhysBulletMuzzleVelocity = 100 /0.0254
ATT.TracerNum = 1
ATT.TracerColor = Color(255, 255, 255)
-- ATT.SpreadMult = 1.05
-- ATT.RecoilMult = 1.05
-- ATT.VisualRecoilMult = 1.05
ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 100 /0.0254

ATT.Penetration =      1 *2.54/100/0.0254
ATT.PenetrationDelta = 1/100
ATT.ArmorPiercing =    1/100
ATT.RicochetChance =   100/100
ATT.RecoilMult = 0
ATT.VisualRecoilMult = 0

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    1 },

    {   100 /0.0254 * dmgrange, 
    0.63 },
}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 


ARC9.LoadAttachment(ATT, "eft_ammo_blobal_bb")
ATT = {}

ATT.PrintName = "Standard Nerf darts"
ATT.CompactName = "Nerf dart"
ATT.Icon = Material("entities/eft_attachments/ammo/556/bb.png", "mips smooth")
ATT.Description = [[Standard Nerf darts]]
ATT.SortOrder = 99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "Standard Nerf darts"

ATT.DamageMaxOverride = 1 
ATT.DamageMinOverride = 0.63 
ATT.PhysBulletMuzzleVelocity = 70 /0.0254
ATT.TracerNum = 1
ATT.TracerColor = Color(0, 0, 255)
-- ATT.SpreadMult = 1.05
-- ATT.RecoilMult = 1.05
-- ATT.VisualRecoilMult = 1.05
ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 100 /0.0254

ATT.Penetration =      1 *2.54/100/0.0254
ATT.PenetrationDelta = 1/100
ATT.ArmorPiercing =    1/100
ATT.RicochetChance =   100/100
ATT.RecoilMult = 0
ATT.VisualRecoilMult = 0

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    1 },

    {   100 /0.0254 * dmgrange, 
    0.63 },
}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 


ARC9.LoadAttachment(ATT, "eft_ammo_blobal_nerf")

ATT = {}

ATT.PrintName = "Full Auto"
ATT.CompactName = "Auto"
ATT.Icon = nil
ATT.Description = [[allows you to use full auto on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.Folder = "rpm + firemode"

ATT.RPM = 770
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_ar15_fullauto")

ATT = {}

ATT.PrintName = "3-Round Burst"
ATT.CompactName = "Burst"
ATT.Icon = nil
ATT.Description = [[allows you to use 3-Roud Burst on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.Folder = "rpm + firemode"

ATT.RPM = 770
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 3, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_ar15_3round")

ATT = {}

ATT.PrintName = "Minigun Burst"
ATT.CompactName = "10 Round Burst"
ATT.Icon = nil
ATT.Description = [[converts your gun to the maximum firerate of the minigun(though most applications use less firerate)]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.Folder = "rpm + firemode"

ATT.RPM = 6000
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 10, PoseParam = 1},
    { Mode = 3, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_minigun_fullauto")

ATT = {}

ATT.PrintName = "Minigun Firerate"
ATT.CompactName = "Minigun"
ATT.Icon = nil
ATT.Description = [[converts your gun to the maximum firerate of the minigun(though most applications use less firerate)]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.Folder = "rpm + firemode"

ATT.RPM = 6000
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_minigun_burst")

ATT = {}

ATT.PrintName = "More custom slots"
ATT.CompactName = "More slots"
ATT.Icon = Material("arc9/seasonal/birthday3.png", "mips smooth")
ATT.Description = [[3 more custom slots :3]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - Unlameifier"
ATT.Free = true

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 

 ATT.Attachments = {
    {
         PrintName = "Custom slot",
         Pos = Vector(0, 0, 1), 
		 Ang = Angle(0, 0, 0),   
		 Category = {"eft_custom_slot"},  
		 },
     {
         PrintName = "Custom slot",
        Pos = Vector(0, 0, 2),
         Ang = Angle(0, 0, 0),
         Category = {"eft_custom_slot"},
    },
     {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 3),
         Ang = Angle(0, 0, 0),
         Category = {"eft_custom_slot"},
   },
 }

 ARC9.LoadAttachment(ATT, "eft_extras_slots")


ATT = {}

ATT.PrintName = "Alternative SPRINT viewmodel position (For rifles 2)"
ATT.CompactName = "Rifle SPRINT hold 2"
ATT.Icon = Material("entities/eft_extras_attachments/rif2pose.png", "mips smooth")
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 65

ATT.SprintPos = Vector(-1.8, -2, -0.5)
ATT.SprintAng = Vector(0, 0, 2)


ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ARC9.LoadAttachment(ATT, "eft_extras_alt_rifle2_sprint_hold")

ATT = {}

ATT.PrintName = "Hyper Burst"
ATT.CompactName = "an94 Burst"
ATT.Icon = nil
ATT.Description = [[allows you to use the an-94s hyper-Burst on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.VisualRecoilMultFirstShot = .125
ATT.RecoilMultFirstShot = .125
ATT.RecoilMult =2
ATT.VisualRecoilMult =2

ATT.RPM = 1800
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = 2, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_ar15_2round")
ATT = {}

ATT.PrintName = "NO MAG"
ATT.CompactName = "NO MAG"
ATT.Icon = nil
ATT.Description = [[idk why youwould want this]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.HasMag = false

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_NOMAG")



ATT = {}

ATT.PrintName = "Full Auto"
ATT.CompactName = "Auto"
ATT.Icon = nil
ATT.Description = [[allows you to use full auto on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.Folder = "rpm + firemode"

ATT.RPM = 600
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_ak_fullauto")
ATT = {}

ATT.PrintName = "Alternative SPRINT viewmodel position (For rifles 1)"
ATT.CompactName = "Rifle SPRINT hold "
ATT.Icon = Material("entities/eft_extras_attachments/rifpose.png", "mips smooth")
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 69

ATT.SprintPos = Vector(-1.8, -3.5, 0.2)
ATT.SprintAng = Vector(0, 0, -1.75)


ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ARC9.LoadAttachment(ATT, "eft_extras_alt_rifle_sprint_hold")


ATT = {}

ATT.PrintName = "Enable bash"
ATT.CompactName = "bash"
ATT.Icon = nil
ATT.Description = [[allows you to use bash on weapons you preciously couldnt]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }

ATT.Bash = true
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_bash")



ATT = {}

ATT.PrintName = "nerf"
ATT.CompactName = "nerf"
ATT.Icon = nil
ATT.Description = [[changes muzzle velocity to be the same as a nerf gun]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }

ATT.PhysBulletMuzzleVelocity = 70 /0.0254

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_slow")
ATT = {}

ATT.PrintName = "nerf(high)"
ATT.CompactName = "nerf(high)"
ATT.Icon = nil
ATT.Description = [[changes muzzle velocity to be the same as a nerf gun]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }

ATT.PhysBulletMuzzleVelocity = 150 /0.0254

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_slowasdadsdasdas")



ATT = {}

ATT.PrintName = "airsoft(HIGH)"
ATT.CompactName = "airsoft(HIGH)"
ATT.Icon = nil
ATT.Description = [[changes muzzle velocity to be the same as an airsoft gun]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }

ATT.PhysBulletMuzzleVelocity = 700 /0.0254

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_slowerish")


ATT = {}

ATT.PrintName = "airsoft"
ATT.CompactName = "airsoft"
ATT.Icon = nil
ATT.Description = [[changes muzzle velocity to be the same as an airsoft gun]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }

ATT.PhysBulletMuzzleVelocity = 400 /0.0254

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_slower")

ATT = {}

ATT.PrintName = "Full Auto"
ATT.CompactName = "Auto"
ATT.Icon = nil
ATT.Description = [[allows you to use full auto on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }
ATT.Folder = "rpm + firemode"

ATT.RPM = 300
-- ATT.firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
ATT.Firemodes = {
    { Mode = -1, PoseParam = 1},
    { Mode = 1, PoseParam = 2 }
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_nerf_fullauto")

ATT = {}

ATT.PrintName = "more recoil"
ATT.CompactName = "more recoil"
ATT.Icon = nil
ATT.Description = [[more recoil]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }

ATT.RecoilMult = 1.3
ATT.VisualRecoilMult = 1.3

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_more_recoil")
ATT = {}

ATT.PrintName = "alt recoil"
ATT.CompactName = "alt recoil"
ATT.Icon = Material("entities/eft_attachments/scopes/lt101.png", "mips smooth")
ATT.Description = [[alt. recoil]]
ATT.VisualRecoilRollMult = 10
ATT.VisualRecoilMultSights = 2
ATT.VisualRecoilMult = 2.5
ATT.RecoilMultSights = 2
ATT.RecoilMult = 2.5

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_g18_recoil")


ATT = {}

ATT.PrintName = "g18 sound"
ATT.CompactName = "g18 sound"
ATT.Icon = Material("entities/eft_attachments/scopes/lt101.png", "mips smooth")
ATT.Description = [[g18 sound]]


ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ShootSound = { path .. "glock18_outdoor_close_1.ogg", path .. "glock18_outdoor_close_2.ogg"}

ATT.ShootSoundIndoor = { path .. "glock18_indoor_close_1.ogg", path .. "glock18_indoor_close_2.ogg"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}


ARC9.LoadAttachment(ATT, "eft_g18_sound")

ATT = {}

ATT.PrintName = "unfold sights"
ATT.CompactName = "unfold sights"
ATT.Icon = clear
ATT.Description = [[unfold sights]]


ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.FoldSights = false
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}


ARC9.LoadAttachment(ATT, "eft_dont_fold_sights")
ATT = {}

ATT.PrintName = "calibrate sights"
ATT.CompactName = "calibrate sights"
ATT.Icon = clear
ATT.Description = [[for developers]]

ATT.SpreadMult = 0
ATT.DamageMaxMult = 0
ATT.DamageMinMult = 0
ATT.DamageMaxOverride = 0
ATT.DamageMinOverride = 0

ATT.RecoilMult = 0
ATT.VisualRecoilMult = 0
ATT.DamageLookupTable = false
ATT.RangeMinMult = 999999
ATT.RangeMaxMult = 999999
ATT.RangeMinAdd = 999999
ATT.RangeMaxAdd = 999999
ATT.SwayMult = 0
ATT.VisualRecoilMult = 0
ATT.RecoilMult = 0
ATT.PhysBulletMuzzleVelocityMult = 9999999


ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}


ARC9.LoadAttachment(ATT, "eft_sight_calibration")


ATT = {}

ATT.PrintName = "Alternative SPRINT viewmodel position"
ATT.CompactName = "Alt SPRINT hold "
ATT.Icon = nil
ATT.Description = [[tactical 2

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.SprintAng = Angle(-2, 30, -7)
ATT.SprintPos = Vector(-1, -4, -10)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ARC9.LoadAttachment(ATT, "eft_extras_alt_pistol2_holdADSASDDASDASSPRINT")


ATT = {}

ATT.PrintName = "long545 reload"
ATT.CompactName = "long545 reload"
ATT.Icon = clear
ATT.Description = [[uses the reload of the long 5.45x39 magazines]]


ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot_ak"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.ExcludeElements = {"bigdrum","smalldrum"}
ATT.ActivateElements = {"long545"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot_ak","eft_custom_slot"},
    },
}


ARC9.LoadAttachment(ATT, "eft_545_reload")


ATT = {}

ATT.PrintName = "insurgency sprint"
ATT.CompactName = "INS:S"
ATT.Icon = Material("entities/eft_extras_attachments/rif2pose.png", "mips smooth")
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 65

ATT.SprintPos = Vector(0, -5, -3)
ATT.SprintAng = Vector(30, 10, -40)


ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ARC9.LoadAttachment(ATT, "eft_iwtrw30000fita")

ATT = {}

ATT.PrintName = "heatwave effect"
ATT.CompactName = "heat effect"
ATT.Icon = nil
ATT.Description = [[makes a heat effect, copied from poly arms]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot", }

local fuckthis = 0 -- OVERHEAT GAS EFFECT
ATT.Hook_Think = function(swep)
    if CLIENT then 
        if fuckthis < CurTime() then
            fuckthis = CurTime() + 0.3
            
            local hot = swep:GetHeatAmount()
            if hot > 15 and swep:GetProcessedValue("Overheat", true) then
                local att = 2
                local vm = LocalPlayer():GetViewModel()
                local wm = false
                if (LocalPlayer():ShouldDrawLocalPlayer() or swep.Owner != LocalPlayer()) then
                    wm = true
                    att = 1
                end
                local parent = swep
                if !wm then parent = vm
                else parent = (swep.WModel or {})[1] or swep end

                local pcf = CreateParticleSystem(parent, "muzzle_heatwave_long", PATTACH_POINT_FOLLOW, att)

                if IsValid(pcf) then
                    pcf:StartEmission()

                    swep.ActiveAfterShotPCF = pcf
                    if (muz or parent) != vm then
                        pcf:SetShouldDraw(false)
                        table.insert(swep.PCFs, pcf)
                    end
                end
            end
        end
    end
end
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ARC9.LoadAttachment(ATT, "eft_heatwave_effect")
ATT = {}

ATT.PrintName = "bolt action ar15"
ATT.CompactName = "bolt action ar15"
ATT.Icon = nil
ATT.Description = [[bolt action ar15]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot_m4a1", }

ATT.Firemodes = {
    { Mode = 1, PrintName = "Pump-action" },
}
ATT.Model = "models/weapons/arc9/darsu_eft/ar15_anims.mdl"
local path = "weapons/darsu_eft/m4a1/"

ATT.SlamFire = true
ATT.ManualAction = true
ATT.IKAnimationProxy = {
["cycle"] = {
        Source = "jam_soft_slide", -- jam soft
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = randspin, t = 0.49 },
            { s = path .. "ar_jam_boltlock_grab1.ogg", t = 1.03 },
            { s = path .. "ar_jam_boltlock_try1.ogg", t = 1.22 },
            { s = path .. "ar_jam_boltlock_grab2.ogg", t = 1.56 },
            { s = path .. "mcx_bolt_out.ogg", t = 1.67 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 1.75 },
            { s = path .. "mcx_bolt_in.ogg", t = 1.87 },
            { s = randspin, t = 2.1 },
            
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.28, lhik = 1 },
            { t = 0.4, lhik = 0 },
            { t = 0.82, lhik = 0 },
            { t = 0.9, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 1.75
    },
}

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}
ATT.IKGunMotionQCA = 2

ARC9.LoadAttachment(ATT, "eft_bolt_action_ar15")

ATT = {}

ATT.PrintName = "R870 sound"
ATT.CompactName = "R870 sound"
ATT.Icon = Material("entities/eft_attachments/scopes/lt101.png", "mips smooth")
ATT.Description = [[R870 sound]]


ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"} ATT.AttNotForNPCs = true 
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ShootSound = { "weapons/darsu_eft/m870/rem870_fire_close1.ogg","weapons/darsu_eft/m870/rem870_fire_close2.ogg"}

ATT.ShootSoundIndoor = { "weapons/darsu_eft/m870/rem870_fire_indoor_close.ogg",}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}


ARC9.LoadAttachment(ATT, "eft_R870_sound")
ATT = {}

ATT.PrintName = "Alternative viewmodel position (For rifles Roo)"
ATT.CompactName = "Rifle hold roo"
ATT.Icon = nil
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 65
ATT.ActivePos = Vector(-2.4, -1, -0.8)
ATT.ActiveAng = Angle(0, 0, -2)
ATT.SprintAng = Angle(35, -10, -20)
ATT.SprintPos = Vector(4, -4, 2)
ATT.CrouchPos = Vector(0, -2, -0.2)
ATT.CrouchAng = Angle(0, 0, -4)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_alt_rifleroo_hold")
ATT = {}

ATT.PrintName = "Alternative viewmodel position 2 (For rifles Roo)"
ATT.CompactName = "Rifle hold roo 2"
ATT.Icon = nil
ATT.Description = [[tactical 

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 55
ATT.ActivePos = Vector(-3, -3, -0.8)
ATT.ActiveAng = Angle(0, 0, -2)
ATT.SprintAng = Angle(35, -10, -20)
ATT.SprintPos = Vector(4, -5, 2)
ATT.CrouchPos = Vector(0, -4, -0.2)
ATT.CrouchAng = Angle(0, 0, -4)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_alt_rifleroo_hold2")
ATT = {}

ATT.PrintName = "TEST"
ATT.CompactName = "TEST"
ATT.Icon = nil
ATT.Description = [[test.]]
ATT.AttNotForNPCs = true ATT.AttNotForNPCs = true ATT.Category = {"eft_custom_slot_m4a1","eft_custom_slot_mcx"}
ATT.SortOrder = -99


ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot","eft_custom_slot_m4a1"},
    },
}
ARC9.LoadAttachment(ATT, "eft_ar15_idekasdas")
