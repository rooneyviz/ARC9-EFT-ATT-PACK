local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

local ATT = {}





ATT = {}

ATT.PrintName = "Full Auto"
ATT.CompactName = "Auto"
ATT.Icon = nil
ATT.Description = [[allows you to use full auto on weapons you preciously couldnt, this is select fire]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }

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

ATT.PrintName = "Minigun Firerate"
ATT.CompactName = "Minigun"
ATT.Icon = nil
ATT.Description = [[converts your gun to the maximum firerate of the minigun(though most applications use less firerate)]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_custom_slot", }

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

ARC9.LoadAttachment(ATT, "eft_minigun_fullauto")

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

