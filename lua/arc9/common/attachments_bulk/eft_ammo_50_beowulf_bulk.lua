local ATT = {}

local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local mult556  = GetConVar("arc9_eft_mult_massive"):GetFloat() or 0.5

///////////////////////////////////////      eft_ammo_556_fmj


ATT = {}

ATT.PrintName = "12.7x42mm FMJ"
ATT.CompactName = "FMJ"
ATT.Icon = Material("entities/eft_ak_attachments/grip/495.png", "mips smooth")
ATT.Description = [[A .50 beowulf(12.7x42mm) FMJ cartridge with a 3.6 gram lead core bullet with a bimetallic jacket in a steel case; intended for hunting, home defense, and target practice. Despite its rudimentary design and not having the full energy of an intermediate cartridge, the bullet is capable of piercing through ballistic body protections and vehicle plates.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "12.7x42mm FMJ"

ATT.DamageMax = 115 * mult556 
ATT.DamageMin = 66.4 * mult556 
ATT.PhysBulletMuzzleVelocity = 957 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 0.9
-- ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.HeatPerShotMult = 1
ATT.ClipSizeMult = 0.349
ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      35 *2.54/100/0.0254
ATT.PenetrationDelta = 33/100
ATT.ArmorPiercing =    33/100
ATT.RicochetChance =   26/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    115 * mult556     },

    {   100 /0.0254 * dmgrange, 
    107.2 * mult556     },

    {   200 /0.0254 * dmgrange, 
    97.5 * mult556     },

    {   300 /0.0254 * dmgrange, 
    85.8 * mult556     },

    {   400 /0.0254 * dmgrange, 
    79.2* mult556     },

    {   500 /0.0254 * dmgrange, 
    74 * mult556     },

    {   600 /0.0254 * dmgrange, 
    71.1* mult556     },

    {   700 /0.0254 * dmgrange, 
    69.6* mult556     },

    {   800 /0.0254 * dmgrange, 
    68.2 * mult556     },

    {   900 /0.0254 * dmgrange, 
    67.2* mult556     },

    {   1000 /0.0254 * dmgrange, 
    66.4 * mult556     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 50.26	47.02	43.94	40.65	37.96	36.56	35.7	35.06	34.54	34.09


ATT.Category = {"eft_ammo_12.7x42"}


ARC9.LoadAttachment(ATT, "eft_ammo_beowulf_fmj")

