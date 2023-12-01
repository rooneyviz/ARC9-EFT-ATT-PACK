local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local dmgrangesg = (GetConVar("arc9_eft_mindmgrange_sg"):GetInt() or 1000)/1000
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

///////////////////////////////////////      double aksu hg

ATT = {}

ATT.PrintName = "Cut Buckshot Shell"
ATT.CompactName = "Cut"
ATT.Icon = Material("entities/eft_m3s90_attachments/13.png", "mips smooth")
ATT.Description = [[These are shotgun shells which have been cut around the circumference of the outer hull. When these sliced shells are fired, they turn the shotgun shell itself (typically filled with birdshot) into a de facto "slugs".]]
ATT.ShellModel = "models/weapons/arc9/darsu_eft/shells/patron_12x70_shell.mdl"
ATT.ActivateElements = {"eft_ammo_12x70_std"}


ATT.SortOrder = 5
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_ammo_12x70"}

ATT.EFTRoundName = "Cut Buckshot"

ATT.DamageMax = 39 * mult1270
ATT.DamageMin = 24.57 * mult1270
ATT.PhysBulletMuzzleVelocity = 415 /0.0254

ATT.RangeMin = 10
ATT.RangeMax = 250 /0.0254 * dmgrangesg

ATT.Penetration =      4 *2.54/100/0.0254
ATT.PenetrationDelta = 16/100
ATT.ArmorPiercing =    16/100
ATT.RicochetChance =   0

ATT.Num = 8
ATT.RecoilMult = 1.15
ATT.VisualRecoilMult = 1.15
ATT.SpreadMult = 0.2
ATT.HeatPerShotMult = 1.2

ATT.HasMag = true 
ATT.HasAmmoooooooo = true 

ATT.ChamberSizeOverride = 0 -- no mag
ATT.ClipSizeOverride = 1 -- actual chamber (no mag)



ARC9.LoadAttachment(ATT, "eft_12g_cutshell")
ATT = {}
ATT.PrintName = "40x46mm M715 (smoke) grenade"
ATT.CompactName = "M715"
ATT.Icon = Material("entities/eft_attachments/ammo/40x46/40x46mm_m381.png", "mips smooth")
ATT.Description = [[A 40-mm M715 (smoke) shot with a smoke grenade equipped with an instantaneous fuse, which is cocked after the shot, at a distance of 8-10 feet from the muzzle.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.CustomPros = {
    ["Damage"] = "direct hit only", 
    ["Fuse time"] = "0.04 s"
}

ATT.UBGLClipSize = 1
ATT.ShootEntUBGL = "arc9_eft_40mm_smoke"

ATT.Category = {"eft_ammo_40x46"}

ARC9.LoadAttachment(ATT, "eft_ammo_40x46_m715")
ATT = {}

ATT.PrintName = "12/70 6.5mm Express buckshot Dragons Breath"
ATT.CompactName = "Dragons Breath Buck"
ATT.Icon = Material("entities/eft_attachments/ammo/12x70/def.png", "mips smooth")
ATT.Description = [[A 12/70 shell loaded with 9 6.5mm buckshot pellets and  for 12 gauge shotguns.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.ShellModel = "models/weapons/arc9/darsu_eft/shells/patron_12x70_shell.mdl"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "12/70 6.5mm Express buckshot"

ATT.DamageMax = 35 * mult1270
ATT.DamageMin = 25 * mult1270
ATT.PhysBulletMuzzleVelocity = 1450 /0.0254

ATT.RangeMin = 10
ATT.RangeMax = 100 /0.0254 * dmgrangesg

ATT.Penetration =      3 *2.54/100/0.0254
ATT.PenetrationDelta = 26/100
ATT.ArmorPiercing =    26/100
ATT.RicochetChance =   0

ATT.Num = 9
-- ATT.RecoilMult = 1.15
-- ATT.VisualRecoilMult = 1.25
-- ATT.SpreadMult = 0.85
 ATT.SpreadMult = 1

ATT.ActivateElements = {"eft_ammo_12x70_std"}
ATT.Category = {"eft_ammo_12x70"}

ATT.DamageTypeOverride = DMG_BURN + DMG_BULLET + DMG_BLAST
ATT.DamageType = DMG_BURN + DMG_BULLET + DMG_BLAST
ATT.Override_DamageType = DMG_BURN + DMG_BULLET + DMG_BLAST

ATT.ImpactDecal = "FadingScorch"

local cov = 1 -- ??
ATT.ExplosionDamage = 6.25*5
ATT.ExplosionRadius = 5
 ATT.TracerNum = 1
ATT.TracerColor = Color(255, 127, 0)
ATT.ExplosionEffect = "eft_explosion_round"

local badblood = { -- it's actually the good type
    [-1] = true,
    [3] = true,
}

ATT.Hook_BulletImpact = function(wep,data)
    local ent = data.tr.Entity
    
    local test1 = !(ent:IsNPC() or ent:IsPlayer() or ent:IsNextBot()) and true or false
    local test2 = (!ent:GetBloodColor() or badblood[ent:GetBloodColor()]) and true or false

    if IsValid(ent) and !test1 then
        if vFireInstalled then
            CreateVFire(ent, data.tr.HitPos, data.tr.HitNormal, data.dmg:GetDamage() * 0.02)
        else
            ent:Ignite(1, 0)
        end
    end

    if IsValid(ent) and (test1 or test2) then
        data.dmg:SetDamage(data.dmg:GetDamage() * cov)
        local eff = EffectData()
        eff:SetOrigin(data.tr.HitPos)
        util.Effect("cball_bounce", eff)
    end
end

ARC9.LoadAttachment(ATT, "eft_ammo_12x70_dragons")


ATT = {}

ATT.PrintName = "Signal Flare"
ATT.CompactName = "Flare"
ATT.Icon = Material("entities/eft_attachments/ammo/40x46/40x46mm_m441.png", "mips smooth")
ATT.Description = [[Low pressure shell containing an illuminating flare burning at a high temperature.
Usually used for signalling, but can also light things up in a pinch, Be careful at close ranges as it can and probably will ricochet]]
ATT.SortOrder = 0
ATT.CustomPros = {
    ["Damage"] = 39
}

ATT.Category = {"eft_ammo_40x46"}

ATT.Num = 1
ATT.HasGranataAmmo = true 


ATT.ShootEntUBGL = "roo_flare"
ATT.ShootEntForceUBGL = 1000000
ATT.UBGLClipSize = 1


ARC9.LoadAttachment(ATT, "eft_40x46_ammo_flame")
ATT = {}
ATT.PrintName = "40x46mm M651 (CS) grenade"
ATT.CompactName = "M651"
ATT.Icon = Material("entities/eft_attachments/ammo/40x46/40x46mm_m381.png", "mips smooth")
ATT.Description = [[A 40-mm M651 (CS) shot with a CS Gas grenade equipped with an instantaneous fuse, which is cocked after the shot, at a distance of 8-10 feet from the muzzle, used for riot control.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.CustomPros = {
    ["Damage"] = "direct hit only", 
    ["Fuse time"] = "0.04 s"
}
ATT.HasGranataAmmo = true 


ATT.UBGLClipSize = 1
ATT.ShootEntUBGL = "arc9_eft_40mm_tear"

ATT.Category = {"eft_ammo_40x46"}

ARC9.LoadAttachment(ATT, "eft_ammo_40x46_m651")
ATT = {}
ATT.PrintName = "40x46mm M1029(CRWD-DSPRSL) grenade"
ATT.CompactName = "M1029"
ATT.Icon = Material("entities/eft_attachments/ammo/40x46/40x46mm_m576.png", "mips smooth")
ATT.Description = [[M1029 is a 40mm Rubber ball shot shell. CRWD-DSPRSL stands for CRoWD DiSPeRseL ]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.DamageMaxUBGL = .1875 * mult1270
ATT.DamageMinUBGL = 1 * mult1270
ATT.PhysBulletMuzzleVelocityUBGL = 215 /0.0254

ATT.RangeMinUBGL = 10
ATT.RangeMaxUBGL = 300 /0.0254 * dmgrangesg

ATT.PenetrationUBGL =      .005 *2.54/100/0.0254
ATT.PenetrationDeltaUBGL = 50/100
ATT.ArmorPiercingUBGL =    1/100
ATT.RicochetChanceUBGL =   0

ATT.NumUBGL = 48
ATT.SpreadUBGL = 0

ATT.UBGLClipSize = 1
ATT.ShootEntUBGL = false
ATT.HasGranataAmmo = true 

ATT.Category = {"eft_ammo_40x46"}

ARC9.LoadAttachment(ATT, "eft_ammo_40x46_m1029")
ATT = {}
ATT.PrintName = "40x46mm 12x70 adapter"
ATT.CompactName = "12x70"
ATT.Icon = Material("entities/eft_attachments/ammo/40x46/40x46mm_m381.png", "mips smooth")
ATT.Description = [[A 40-mm shell That has a hole to place A single 12 gauge round.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.ShootEnt = false

ATT.CustomPros = {
}
ATT.HasGranataAmmo = true 

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_ammo_12x70"},
        Integral = true
    },
}

ATT.UBGLClipSize = 1

ATT.Category = {"eft_ammo_40x46_nonubgl"}

ARC9.LoadAttachment(ATT, "eft_ammo_40x46_12x70")