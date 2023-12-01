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

eft extras attachment]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.AttNotForNPCs = true 

ATT.ViewModelFOVBase = 70
ATT.ActivePos = Vector(-3.6, -3, 0.3)
ATT.ActiveAng = Angle(0, 0, -5)
ATT.SprintAng = Angle(-2, 30, -7)
ATT.SprintPos = Vector(-3, -2, -8)
ATT.CrouchPos = Vector(-4.6, -5, -0.92)
ATT.CrouchAng = Angle(0, 0, -20)

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}

ATT.Category = {"eft_custom_slot"}
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

ATT.Category = {"eft_custom_slot"}
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

ATT.Category = {"eft_custom_slot"}
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

ATT.Category = {"eft_custom_slot"}


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

ATT.Category = {"eft_custom_slot"}


ARC9.LoadAttachment(ATT, "eft_ammo_blobal_nerf")

ATT = {}

ATT.PrintName = "Full Auto"
ATT.CompactName = "Auto"
ATT.Icon = nil
ATT.Description = [[allows you to use full auto on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
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
ATT.Category = {"eft_custom_slot", }
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
ATT.Category = {"eft_custom_slot", }
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
ATT.Category = {"eft_custom_slot", }
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

ATT.Category = {"eft_custom_slot"}

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

ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_alt_rifle2_sprint_hold")

ATT = {}

ATT.PrintName = "Hyper Burst"
ATT.CompactName = "an94 Burst"
ATT.Icon = nil
ATT.Description = [[allows you to use the an-94s hyper-Burst on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }
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
ATT.Category = {"eft_custom_slot", }
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
ATT.Category = {"eft_custom_slot", }
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

ATT.Category = {"eft_custom_slot"}
ARC9.LoadAttachment(ATT, "eft_extras_alt_rifle_sprint_hold")


ATT = {}

ATT.PrintName = "Enable bash"
ATT.CompactName = "bash"
ATT.Icon = nil
ATT.Description = [[allows you to use bash on weapons you preciously couldnt]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }

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
ATT.Category = {"eft_custom_slot", }

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
ATT.Category = {"eft_custom_slot", }

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
ATT.Category = {"eft_custom_slot", }

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
ATT.Category = {"eft_custom_slot", }

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
ATT.Category = {"eft_custom_slot", }
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
ATT.Category = {"eft_custom_slot", }

ATT.RecoilMult = 1.3

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

ATT.PrintName = "g18 recoil"
ATT.CompactName = "g18 recoil"
ATT.Icon = Material("entities/eft_attachments/scopes/lt101.png", "mips smooth")
ATT.Description = [[g18 recoil]]


ATT.Category = {"eft_custom_slot"}
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.RecoilUp = 44

ATT.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
    if recamount > 2 then
        recamount = math.Clamp((recamount - 2) / 20, 0, 1)
        return springconstant * math.max(1, 1 * recamount), VisualRecoilSpringMagnitude * 10, PUNCH_DAMPING * 0.74
    end
    return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
end


ATT.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount)
    if recamount > 1 then
        recamount = 1.25 - math.Clamp((recamount - 1) / 7, 0, 1)
        
        return up * math.max(0.45, recamount), side * 2.5, roll, punch * 3
    end
    return up, side, roll, punch
end
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


ATT.Category = {"eft_custom_slot"}
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


ATT.Category = {"eft_custom_slot"}
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

ATT.RangeMinMult = 999999
ATT.RangeMaxMult = 999999
ATT.RangeMinAdd = 999999
ATT.RangeMaxAdd = 999999
ATT.SwayMult = 0
ATT.VisualRecoilMult = 0
ATT.RecoilMult = 0
ATT.PhysBulletMuzzleVelocityMult = 9999999


ATT.Category = {"eft_custom_slot"}
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


