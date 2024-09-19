AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}
 
SWEP.PrintName = "AR9"

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_ar")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "RV Arms",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x19mm Parabellum",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_blow"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_usa"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2019"
}

SWEP.Description = [[A PCC carbine Based off the AR15, manufactured by RV Arms. Compatible with Glock 9x19 magazines.]]

-- SWEP.StandardPresets = {
--     "[FDE]XQAAAQDhAgAAAAAAAAA9iIIiM7tuo1AtT00OeFDsU2rlYJ15CM1C4md+X5XeE7okicXf5Qdptd/zIVoENlkZu2XZaV/pXptKi0Lj2AHHZO5ea09FzOG7slK+pggac8H90loZ/OGoiJ7PQyEYm88KlTQ2CeT5jXro0FrNh4Xe6x2+OeIfq7qQHJgGbEpO1FPYqZHAMw65lej94+H/19icYzqknsnluo8Sqpr+Q9SprxpgJl39hKFaYvbwJ2aJe+T6GciUqwtnD6qA1sutptVlSjNOLlIFCibbLgqQaz6y6bbja09gJr13vg5GfrtyQMc8mBZxjQ59pd0wEKLjJYAwEdieAA==",
--     "[Contract Wars]XQAAAQBvAwAAAAAAAAA9iIIiM7tuo1AtT00OeFDsU2rlYJ15CM1Dihw28Mos9j6S+eNXQqbhluZUMaQFnoWxX2DSWlvyxHQ9RHghLn+cBSCRN0MoWii2V92rKucm7RP16bDP8cRtpnDdND3TemRPGsASbqY52BecVRyODIhr7VY/iydRCWli1N4rHMvYTA/A7zGXXTQofYpnVVpY1P94DaY38k3oIl42dXuMRnvKPswP1tYdNbIoOg6hKBwuDGmgI7o/+ceW01LhXo9P8GKzS4zgxAEESChfiT+RPXAL3FDvWyD7WcxAa4wLCbWeK7IulE2HDEW/8Ax5IKRvz8WsMKKbadCAhHS/3b74tGRsh21YrOa71ItVhJrPiLgAjFKWuQBruYWuTAA="
-- }
    
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_ar9.mdl"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "0000000000000"

SWEP.BarrelLength = 50
------------------------- [[[           STATS            ]]] -------------------------

-- default pst ghz

SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}



--          Spread
SWEP.Spread = 2.61 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 0.33 -- general multiplier of main recoil

SWEP.RecoilUp   = 3   -- up recoil
SWEP.RecoilSide = 1.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.75 -- random up/down
SWEP.RecoilRandomSide = 0.65   -- random left/right

SWEP.RecoilAutoControl = 4 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.13   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 7 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.25 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10

--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 1.5 * 450
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 170
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

-- SWEP.RPM = 800
-- SWEP.Firemodes = {
--     { Mode = -1, PoseParam = 2 },
--     { Mode = 1, PoseParam = 1 },
-- }
SWEP.RPM = 450
SWEP.Firemodes = {
    { Mode = 1 },
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"


--          Generic stats

SWEP.Ammo = "pistol"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 1 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = { }
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.5
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 90, 0)
SWEP.DropMagazineVelocity = Vector(0, -12, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.3, -7, 1.09 ),
    Ang = Angle(0, 0.1, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -3.1, -.35)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16.5, 24, 5.3)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(22, -4.3, -3.7)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-4, 4, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_smg"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellVelocity = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",
}

-- SWEP.HideBones = { -- please do it later
--     "vm_mag2",
--     "tag_mag2"
-- }

-- SWEP.ReloadHideBoneTables = {
--     [1] = {
--         "vm_mag",
--         "tag_mag"
--     },
--     [2] = {
--         "vm_mag2",
--         "tag_mag2"
--     }
-- }




------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/stm9/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05


SWEP.ShootSound = path .. "stm9_fire_outdoor_close.ogg"
SWEP.ShootSoundIndoor = path .. "stm9_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "stm9_fire_outdoor_distant.ogg"
SWEP.DistantShootSoundIndoor = path .. "stm9_fire_indoor_distant.ogg"

SWEP.ShootSoundSilenced = path .. "stm9_fire_outdoor_silenced_close.ogg"
SWEP.ShootSoundSilencedIndoor = path .. "stm9_fire_indoor_silenced_close.ogg"
SWEP.DistantShootSoundSilenced = path .. "stm9_fire_outdoor_silenced_distant.ogg"
SWEP.DistantShootSoundSilencedIndoor = path .. "stm9_fire_indoor_silenced_distant.ogg"

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG


SWEP.SuppressEmptySuffix = true 
------------------------- [[[           Hooks & functions            ]]] -------------------------

-- -- Anti integrated zeroing
-- local sposoffset, sangoffset = Vector(0, 0, -0.05), Angle(0, 0.5, 0)

-- function SWEP:GetSightPositions()
--     local s = self:GetSight()

--     if self:GetValue("FoldSights") then
--         return s.Pos, s.Ang
--     else
--         return s.Pos + sposoffset, s.Ang + sangoffset
--     end
-- end

------------------------- [[[           Animations            ]]] -------------------------

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""
    local mag = ""
    local nomag = false 

    if elements["eft_mag_g17_std_17"] or elements["eft_mag_g19x_std_21"] or elements["eft_mag_slickers"] then mag = "_0"
    elseif elements["eft_mag_g17_gl9_21"] or elements["eft_mag_g19x"] then mag = "_1"
    elseif elements["eft_mag_g17_bigstick_33"] or elements["eft_mag_bigstick24"] or elements["eft_mag_bigstick31"]  then mag = "_2"
    elseif elements["eft_mag_g17_sgmt_50"] then mag = "_3"
    else nomag = true end
    
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 mag check  (!nomag)
    -- 2 slide checking  (!empty)
    
    if anim == "inspect" then
        if empty then anim = "inspect_empty" end

        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        
        if rand == 2 and nomag then rand = 0 swep.EFTInspectnum = 0 end
        
        if rand == 2 and ARC9EFTBASE and SERVER then
            net.Start("arc9eftmagcheck")
            net.WriteBool(!elements["eft_mag_g17_sgmt_50"] and !elements["eft_mag_g17_gl9_21"]) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
            rand = rand .. mag
        end

        return anim .. rand
    end
    
    if anim == "reload" or anim == "reload_empty" then
        if nomag then return "reload_single" end
        if empty then return "reload_empty" .. mag end
        return anim .. mag
    end

    if anim == "fix" then
        local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- 0 = misfire, 1 = eject, 2 = feed, 3 = bolt, 4 = bolt 
        if ARC9EFTBASE and SERVER then
            timer.Simple(0.25, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end
        
        return "jam" .. rand
    end
end

-- function SWEP:ShotgunReloadHook()
--     local elements = self:GetElements()
--     local nomag = !(elements["eft_axmc_mag308"] or elements["eft_axmc_mag338"])

--     if self:Clip1() == self:GetMaxClip1() or nomag then return false end

--     return true
-- end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
        "patron_in_mag4"
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_magcheck = {
    { s = randspin, t = 0.05 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.47 },
    { s = path .. "mp7_mag_out.ogg", t = 0.55 },
    { s = randspin, t = 1.05 },
    { s = randspin, t = 1.76 },
    { s = path .. "mp7_mag_in.ogg", t = 2.34 - 0.15 },
    { s = randspin, t = 2.98 },
}

local rst_chamber = {
    { s = randspin, t = 0.23 },
    -- { s = path .. "stm9_charge_ottebya_slow.ogg", t = 0.63 },
    { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.63 },
    { s = path .. "mp7_bolt_ot_tebya.ogg", t = 1.47 },
    { s = randspin, t = 1.87 },
}
local rst_reload = {
    { s = randspin, t = 0.05 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.41 },
    { s = path .. "mp7_mag_out.ogg", t = 0.47 },
    { s = pouchin, t = 1.05 },
    { s = pouchout, t = 1.33 },
    { s = path .. "mp7_mag_in.ogg", t = 1.92 - 0.15 },
    { s = randspin, t = 2.34 },
}

local rst_reloadempty = {
    { s = randspin, t = 0.13 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.29 },
    { s = path .. "mp7_mag_out.ogg", t = 0.4 },
    { s = randspin, t = 0.75 },
    { s = pouchout, t = 0.9 },
    { s = path .. "mp7_mag_in.ogg", t = 1.33 - 0.15 },
    { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.14 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.16 },
    { s = randspin, t = 2.54 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 0.9}
}

local rst_reload1 = {
    { s = randspin, t = 0.05 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.41 },
    { s = path .. "mp7_mag_out.ogg", t = 0.47 },
    { s = pouchin, t = 1.07 },
    { s = pouchout, t = 1.38 },
    { s = path .. "mp7_mag_in.ogg", t = 1.92 - 0.25 },
    { s = randspin, t = 2.34 + 0.05 },
}

local rst_reloadempty1 = {
    { s = randspin, t = 0.13 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.29 },
    { s = path .. "mp7_mag_out.ogg", t = 0.4 },
    { s = randspin, t = 0.75 },
    { s = pouchout, t = 1 },
    { s = path .. "mp7_mag_in.ogg", t = 1.33 - 0.15 + 0.1 },
    { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.44 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.45 },
    { s = randspin, t = 2.7 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 1}
}

local rst_reload2 = {
    { s = randspin, t = 0.05 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.41 },
    { s = path .. "mp7_mag_out.ogg", t = 0.47 },
    { s = pouchin, t = 1.08 },
    { s = pouchout, t = 1.45 },
    { s = path .. "mp7_mag_in.ogg", t = 1.92 - 0.15 + 0.07 },
    { s = randspin, t = 2.34 + 0.07 },
}

local rst_reloadempty2 = {
    { s = randspin, t = 0.13 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.29 },
    { s = path .. "mp7_mag_out.ogg", t = 0.4 },
    { s = randspin, t = 0.75 },
    { s = pouchout, t = 1.1 },
    { s = path .. "mp7_mag_in.ogg", t = 1.56 - 0.15 },
    { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.45 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.46 },
    { s = randspin, t = 2.7 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 1}
}

local rst_reload3 = {
    { s = randspin, t = 0.05 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.41 },
    { s = path .. "mp7_mag_out.ogg", t = 0.47 },
    { s = pouchin, t = 1.15 },
    { s = pouchout, t = 1.55 },
    { s = path .. "mp7_mag_in.ogg", t = 2.42 - 0.25 },
    { s = randspin, t = 2.87 },
}

local rst_reloadempty3 = {
    { s = randspin, t = 0.13 },
    { s = path .. "ar_jam_boltlock_try2.ogg", t = 0.29 },
    { s = path .. "mp7_mag_out.ogg", t = 0.4 },
    { s = randspin, t = 0.75 },
    { s = pouchout, t = 1.1 },
    { s = path .. "mp7_mag_in.ogg", t = 1.94 - 0.25 },
    { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 2.6 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.62 },
    { s = randspin, t = 2.91 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.5},
    {hide = 0, t = 1.3}
}


local rst_look = {
    { s = randspin, t = 0.29 },
    { s = randspin, t = 1.63 },
    { s = randspin, t = 2.75 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 0.12, lhik = 0 },
    { t = 0.83, lhik = 0 },
    { t = 0.96, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_cham = {
    { t = 0, lhik = 1 },
    { t = 0.2, lhik = 0 },
    { t = 0.8, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_mag = {
    { t = 0, lhik = 1 },
    { t = 0.14, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 0.97, lhik = 1 },
    { t = 1, lhik = 1 },
}

local rik_reload = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.87, lhik = 0 },
    { t = 1, lhik = 1 },
}

local rik_reloadempty = {
    { t = 0, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 0.96, lhik = 1 },
    { t = 1, lhik = 1 },
}

local rik_reload3 = {
    { t = 0, lhik = 1 },
    { t = 0.14, lhik = 0 },
    { t = 0.9, lhik = 0 },
    { t = 0.98, lhik = 1 },
    { t = 1, lhik = 1 },
}

local rik_reloadempty3 = {
    { t = 0, lhik = 1 },
    { t = 0.12, lhik = 0 },
    { t = 0.87, lhik = 0 },
    { t = 0.97, lhik = 1 },
    { t = 1, lhik = 1 },
}

SWEP.Animations = {
    ["idle"] = { 
        Source = "idle", 
        Time = 100,       -- REMOVE TIME !!!!!!!!   
    },

    ["idle_empty"] = { 
        Source = "idle_empty", 
    },

    ["ready"] = {
        Source = "ready0",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.86 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 1.13 },
            { s = randspin, t = 1.5 },   
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        }
    },
    ["1_ready"] = { -- seperate cuz differeitn lhik
        Source = "ready1",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.86 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 1.13 },
            { s = randspin, t = 1.5 },   
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.7, lhik = 0 },
            { t = 0.88, lhik = 1 },
            { t = 1, lhik = 1 },
        }
    },

    ["draw"] = { Source = "draw", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 } } },
    ["holster"] = { Source = "holster", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0.05 } } },
    ["draw_empty"] = { Source = "draw_empty", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 } } },
    ["holster_empty"] = { Source = "holster_empty", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0.05 } } },


    ["fire"] = { Source = "fire", NoIdle = true, EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    ["fire_dry"] = { Source = "fire_dry", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    ["fire_empty"] = { Source = "fire_empty", NoIdle = true, EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },
    ["fire_dry_empty"] = { Source = "fire_dry_empty", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } } },

    ["reload_0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload,
        IKTimeLine = rik_reload
    },
    ["reload_empty_0"] = {
        Source = "reload_empty0",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty,
        IKTimeLine = rik_reloadempty
    },
    ["reload_1"] = {
        Source = "reload1",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload1,
        IKTimeLine = rik_reload
    },
    ["reload_empty_1"] = {
        Source = "reload_empty1",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty1,
        IKTimeLine = rik_reloadempty
    },
    ["reload_2"] = {
        Source = "reload2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload2,
        IKTimeLine = rik_reload
    },
    ["reload_empty_2"] = {
        Source = "reload_empty2",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty2,
        IKTimeLine = rik_reloadempty
    },
    ["reload_3"] = {
        Source = "reload3",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reload3,
        IKTimeLine = rik_reload3
    },
    ["reload_empty_3"] = {
        Source = "reload_empty3",
        MinProgress = 0.85,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = rst_reloadempty3,
        IKTimeLine = rik_reloadempty3
    },

    
    ["reload_single"] = {
        Source = "reload_single",
        MinProgress = 0.95,
        FireASAP = true,
        MagSwapTime = 1.5,
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 1.06 },
            { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 1.55 },
            { s = path .. "stm9_charge_ottebya_slow.ogg", t = 1.64 },
            { s = randspin, t = 2.5 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 2},
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 3.44 },
            { s = randspin, t = 4.19 },
            { s = "arc9_eft_shared/weap_bolt_catch_button.ogg", t = 4.95 },
            { s = path .. "mp7_bolt_release_from_catch.ogg", t = 4.98 },
            { s = randspin, t = 5.33 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.08, lhik = 0 },
            { t = 0.92, lhik = 0 },
            { t = 0.98, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },    
    


    ["inspect1"] = {
        Source = "look0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_look,
        IKTimeLine = rik_look
    },
    ["inspect_empty1"] = {
        Source = "look0_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_look,
        IKTimeLine = rik_look
    },

    ["inspect2_0"] = {
        Source = "magcheck0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_0"] = {
        Source = "magcheck0_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_1"] = {
        Source = "magcheck1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_1"] = {
        Source = "magcheck1_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_2"] = {
        Source = "magcheck2",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_2"] = {
        Source = "magcheck2_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect2_3"] = {
        Source = "magcheck3",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },
    ["inspect_empty2_3"] = {
        Source = "magcheck3_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_magcheck,
        IKTimeLine = rik_mag
    },

    ["inspect0"] = {
        Source = "look1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_chamber,
        IKTimeLine = rik_cham
    },

    ["inspect_empty0"] = {
        Source = "look1_empty",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.65 },
        },
    },

    ["toggle"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },
    ["switchsights"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },

    ["toggle_empty"] = { Source = "mod_switch_empty", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },
    ["switchsights_empty"] = { Source = "mod_switch_empty", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },


    ["jam1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.73 },
            
            { s = path .. "ak_jam_shell_grab.ogg", t = 1.56 },
            { s = path .. "ak_jam_shell_remove.ogg", t = 2.3 },
            { s = randspin, t = 3.04 },
            { s = ARC9EFT.Shells9mm, t = 3.1 },
        },
        -- EjectAt = 4.7,        
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["jam2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.73 },
            
            { s = path .. "ar_jam_boltlock_try3.ogg", t = 1.74 },
            { s = path .. "ar_jam_boltlock_try2.ogg", t = 2.08 },
            { s = randspin, t = 2.4 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 2.5 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 2.8 },
            { s = randspin, t = 3.08 },
            { s = ARC9EFT.Shells9mm, t = 3.15 },
        },
        -- EjectAt = 2.55,
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.3, lhik = 1 },
                { t = 0.48, lhik = 0 },
                { t = 0.88, lhik = 0 },
                { t = 0.94, lhik = 1 },
                { t = 1, lhik = 1 },
            },
    },
    ["jam3"] = {
        Source = "jam_hard_slide", -- jam hard
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.73 },

            { s = path .. "ar_jam_boltlock_try1.ogg", t = 1.93 },
            { s = path .. "ar_jam_boltlock_try2.ogg", t = 2.22 },
            { s = path .. "ar_jam_boltlock_try3.ogg", t = 2.68 },
            { s = randspin, t = 3.11 },
            { s = path .. "ar_jam_boltlock_try2.ogg", t = 4.09 },
            { s = path .. "ar_jam_boltlock_try1.ogg", t = 4.52 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 4.87 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 4.94 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 5.13 },
            { s = randspin, t = 5.46 },
        },
        EjectAt = 4.95,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.18, lhik = 1 },
            { t = 0.27, lhik = 0 },
            { t = 0.52, lhik = 0 },
            { t = 0.58, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["jam4"] = {
        Source = "jam_soft_slide", -- jam soft
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = randspin, t = 0.73 },
            
            { s = path .. "ar_jam_boltlock_try1.ogg", t = 1.88 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 2.2 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 2.3 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 2.5 },
            { s = randspin, t = 2.84 },
        },
        EjectAt = 2.3,
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.33, lhik = 1 },
            { t = 0.48, lhik = 0 },
            { t = 0.83, lhik = 0 },
            { t = 0.94, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
}


------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBufferTube") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasReceiver") or
        !self:GetValue("HasAmmoooooooo") then
            
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasGrip") or 
        !self:GetValue("HasBufferTube") or
        !self:GetValue("HasBarrel") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasReceiver") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_stm9_barrel_105"] = { Bodygroups = { {2, 1} } },
    ["eft_stm9_barrel_12"] = { Bodygroups = { {2, 2} } },
    ["eft_stm9_barrel_14"] = { Bodygroups = { {2, 3} } },
    ["eft_stm9_barrel_16"] = { Bodygroups = { {2, 4} } },

    ["eft_stm9_magwel"] = { Bodygroups = { {3, 1} } },
    ["eft_stm9_magwelg"] = { Bodygroups = { {3, 2} } },

    ["eft_rec_ar15_stm9"] = { Bodygroups = { {1, 1} } },

    ["eft_ar15_trigger_q_ltbtem"]    = { Bodygroups = { {5, 3} } }, 
    ["eft_ar15_trigger_gei_sdc"]    = { Bodygroups = { {5, 2} } }, 
    ["eft_ar15_trigger_argold"]    = { Bodygroups = { {5, 1} } },    
    ["eft_ar15_trigger_stm15"]    = { Bodygroups = { {5, 4} } },    
    ["eft_ar15_trigger_kac"]    = { Bodygroups = { {5, 5} } },    

    ["eft_ar15_bolt_catch_q_bbc"]    = { Bodygroups = { {6, 1} } }, 
    ["eft_ar15_bolt_catch_tx15"]    = { Bodygroups = { {6, 2} } }, 
    ["eft_ar15_bolt_catch_stm15"]    = { Bodygroups = { {6, 3} } }, 

    ["eft_ar15_fireselector_radian"]    = { Bodygroups = { {7, 1} } }, 
    ["eft_ar15_fireselector_radian_short"]    = { Bodygroups = { {7, 2} } }, 

    ["eft_ar15_fireselector_stm15"]    = { Bodygroups = { {7, 3} } }, 
    ["eft_ar15_fireselector_kac"]    = { Bodygroups = { {7, 4} } }, 

    ["noar15plate"]    = { Bodygroups = { {8, 1} } }, 
    ["eft_ar15_tg_magpul"]    = { Bodygroups = { {10, 1} } }, 
    ["eft_ar15_tg_magpul_blk"]    = { Bodygroups = { {10, 2} } }, 
    ["ar15_triggerguard_Colt_winter"]    = { Bodygroups = { {10, 3} } }, 
    ["eft_ar15_tg_magpul_five0"]    = { Bodygroups = { {10, 4} } }, 
    ["eft_ar15_tg_kac"]    = { Bodygroups = { {10, 5} } }, 

}


SWEP.Attachments = {
    {
        PrintName = "Reciever",
        Category = "eft_stm9_upper",
        Installed = "eft_rec_ar15_ar9",
        Bone = "mod_reciever",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(-4, 0, 0.5),
        SubAttachments = {
            {},
            {
                Installed = "eft_rearsight_scal"
            },
            {
                Installed = "eft_stm9_barrel_105",
                SubAttachments = {
                    {
                        Installed = "eft_ar9_muzzle_a2"
                    }
                }
            },
            {
                Installed = "eft_hg_ar15_kacris",
                SubAttachments = {
                    {
                         Installed = "eft_hg_ar15_kacris_lower",
                         Installed = "eft_front_sight_tactical",
              	         SubAttachments = {
							{
								Installed = "eft_frontsight_scal"
							}
						}
                    } 	
                }
            }
        }
    },
    {
        PrintName = "Pistol grip",
        Category = {"eft_ar15_pgrip", "eft_ar15_pgripstock", "eft_ar15_pgrip_m4"},
        Installed = "eft_ar_pgrip_colta1",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Charging handle",
        Category = "eft_ar15_charge",
        Installed = "eft_charge_ar15_botl",
        Bone = "mod_charge",
        Icon_Offset = Vector(1, 0, 0),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Buffer tube",
        Category = "eft_ar15_buffertube",
        Bone = "mod_reciever",
        Pos = Vector(0, -7.7, 0.9),
        Ang = Angle(0, -90, 0),
        Installed = "eft_ar_buffertube_std",
        SubAttachments = {
            {
                Installed = "eft_ar_stock_m4a1_gen1"
            }
        }
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -1, -6),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_g17_mag",
        Bone = "mod_magazine",
        Installed = "eft_mag_g17_bigstick_33",
        Icon_Offset = Vector(-1, 0, -1.5),
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
        {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_stm9"},
        Bone = "mod_pistol_grip",
        Pos = Vector(0, -8, -5),
        Ang = Angle(0, 0, 0),
    },
{
        PrintName = "Trigger",
        Category = "eft_roo_ar15_trigger",
        Integral = true,
        Installed = "eft_ar15_trigger_colt",
        Bone = "weapon",
        Pos = Vector(0, 12, -2.5),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Trigger Guard",
        Category = "eft_roo_ar15_triggerguard",
        Integral = true,
        Installed = "eft_ar15_tg_magpul_blk",
        Bone = "weapon",
        Pos = Vector(0, 12.5, -3.2),
        Ang = Angle(0, 0, 0),
    },

{
        PrintName = "Bolt Catch",
        Category = "eft_roo_ar15_bolt_catch",
        Integral = true,
        Installed = "eft_ar15_bolt_catch_colt",
        Bone = "weapon",
        Pos = Vector(1, 13.4, -0.5),
        Ang = Angle(0, 0, 0),
    },

{
        PrintName = "Fire selector",
        Category = "eft_roo_ar15_fireselector",
        Integral = true,
        Installed = "eft_ar15_fireselector_radian_short",
        Bone = "weapon",
        Pos = Vector(1, 11, -1.5),
        Ang = Angle(0, 0, 0),
    },

}


SWEP.EFTErgo = 50
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm