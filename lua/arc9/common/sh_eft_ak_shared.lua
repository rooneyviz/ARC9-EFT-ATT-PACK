ARC9EFT = ARC9EFT or {}

ARC9EFT.AK_AnimsHook = function(swep, anim)
    local elements = swep:GetElements()
    local class = swep:GetClass()
    -- if !IsFirstTimePredicted() then return end

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 3.99)) -- 0, 1, 2, 3      FUCK RANDOM
    -- local rand = 4
    local nomag = false

    -- 0 - ak74
    -- --1 - akm
    -- 1 - rpk
    -- 2 - chamber
    -- 3 - mag

    if elements["545"] then ending = "545"
    elseif elements["556"] then ending = "556"
    elseif elements["762"] then ending = "762"
    elseif elements["60rnd"] then ending = "60rnd"
    elseif elements["10rnd"] then ending = "10rnd"
    elseif elements["long545"] then ending = "long545"
    elseif elements["long762"] then ending = "long762"
    elseif elements["smalldrum"] then ending = "smalldrum"
    elseif elements["bigdrum"] then ending = "bigdrum"
    else nomag = true end
    
    if anim == "inspect" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        if rand == 1 then
            if class == "arc9_eft_rpk16" or class == "arc9_eft_ak12" or class == "arc9_eft_ak15" then
                return "look_rpk"
            elseif class == "arc9_eft_akm" or class == "arc9_eft_akms" or class == "arc9_eft_vpo136" or class == "arc9_eft_vpo209" then
                return "look_akm"
            elseif class == "arc9_eft_aks74u" then
                return "look_aksu"
            end
        end
        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
    
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(!!swep:GetValue("EFTImprovedMagCheck")) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then ending = math.max(rand, 2) end
            ending = rand
        end
    elseif anim == "firemode_1" or anim == "firemode_2" then
        if class == "arc9_eft_rpk16" or class == "arc9_eft_ak12" or class == "arc9_eft_ak15" then
            ending = "_rpk"
        end
    elseif anim == "inspect_ubgl" then -- gp25 lhik
        swep.EFTInspectBool = swep.EFTInspectBool or false
        if IsFirstTimePredicted() then
            swep.EFTInspectBool = !swep.EFTInspectBool
        end
        local inspect = swep.EFTInspectBool

        if !inspect and swep:Clip2() > 0 then
            return "inspect_check_ubgl"
        else
            return "inspect_ubgl"
        end
    end


    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 0, 4.99))

        if ARC9EFTBASE and SERVER then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end
    
    return anim .. ending
    -- return anim .. 3
end

local rik_single = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.2, lhik = 1, rhik = 1 },
    { t = 0.4, lhik = 0, rhik = 1 },
    { t = 0.6, lhik = 0, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}

local rik_def = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.2, lhik = 0, rhik = 1 },
    { t = 0.91, lhik = 0, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}

local rik_drop = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.1, lhik = 1, rhik = 1 },
    { t = 0.25, lhik = 0, rhik = 1 },
    { t = 0.9, lhik = 0, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}

local rik_long = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.15, lhik = 0, rhik = 1 },
    { t = 0.61, lhik = 0, rhik = 1 },
    { t = 0.75, lhik = 1, rhik = 0 },
}

local rik_empty = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.1, lhik = 1, rhik = 1 },
    { t = 0.25, lhik = 0, rhik = 1 },
    { t = 0.61, lhik = 0, rhik = 1 },
    { t = 0.75, lhik = 1, rhik = 1 },
}

local rik_empty10rnd = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.1, lhik = 1, rhik = 1 },
    { t = 0.25, lhik = 0, rhik = 1 },
    { t = 0.9, lhik = 0, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}

local rik_magcheck = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.05, lhik = 1, rhik = 1 },
    { t = 0.22, lhik = 0, rhik = 1 },
    { t = 0.81, lhik = 0, rhik = 1 },
    { t = 0.95, lhik = 1, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}

local path = "weapons/darsu_eft/ak/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s = randspin, t = 0.05 },
    { s = path .. "ak74_slider_up.ogg", t = 14/26 },
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 23/26 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 32/26 },
    { s = path .. "ak74_round_in_chamber.ogg", t = 46/26 },
    { s = path .. "ak74_slider_down.ogg", t = 63/26 },
    { s = "arc9_eft_shared/weap_in.ogg", t = 73/26 },
}

local rst_10 = {
    { s = randspin, t = 5/27 },
    { s = path .. "ak74_magrelease_button.ogg", t = 9/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 18/27 },
    { s = randspin, t = 32/27 },
    { s = pouchin, t = 33/27 },
    { s = pouchout, t = 44/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 60/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 69/27 },
    { s = randspin, t = 81/27 },
}

local rst_10e = {
    { s = randspin, t = 0.05 },
    { s = path .. "ak74_magrelease_button.ogg", t = 6/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 8/27 },
    { s = pouchout, t = 28/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 44/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 53/27 },
    { s = randspin, t = 63/27 },
    { s = path .. "ak74_slider_up.ogg", t = 75/27 },
    { s = path .. "ak74_slider_down.ogg", t = 85/27 },
    { s = randspin, t = 91/27 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.7},
    {hide = 0, t = 1.02}
}

local rst_545 = {
    { s = randspin, t = 5/27 },
    { s = path .. "ak74_magrelease_button.ogg", t = 11/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 18/27 },
    { s = randspin, t = 32/27 },
    { s = pouchin, t = 33/27 },
    { s = pouchout, t = 42/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 57/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 68/27 },
    { s = randspin, t = 81/27 },
}

local rst_545e = {
    { s = randspin, t = 0.05 },
    { s = path .. "ak74_magrelease_button.ogg", t = 6/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 8/27 },
    { s = pouchout, t = 28/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 46/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 53/27 },
    { s = randspin, t = 63/27 },
    { s = path .. "ak74_slider_up.ogg", t = 83/27 },
    { s = path .. "ak74_slider_down.ogg", t = 90/27 },
    { s = randspin, t = 96/27 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.7},
    {hide = 0, t = 1.02}
}

local rst_60 = {
    { s = randspin, t = 5/27 },
    { s = path .. "ak74_magrelease_button.ogg", t = 11/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 18/27 },
    { s = randspin, t = 32/27 },
    { s = pouchin, t = 40/27 },
    { s = pouchout, t = 46/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 64/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 70/27 },
    { s = randspin, t = 83/27 },
}

local rst_60e = {
    { s = randspin, t = 0.05 },
    { s = path .. "ak74_magrelease_button.ogg", t = 6/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 8/27 },
    { s = pouchout, t = 29/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 47/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 53/27 },
    { s = randspin, t = 64/27 },
    { s = path .. "ak74_slider_up.ogg", t = 84/27 },
    { s = path .. "ak74_slider_down.ogg", t = 91/27 },
    { s = randspin, t = 97/27 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.7},
    {hide = 0, t = 1.02}
}

local rst_drum = {
    { s = randspin, t = 5/27 },
    { s = path .. "ak74_magrelease_button.ogg", t = 13/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 18/27 },
    { s = randspin, t = 32/27 },
    { s = pouchin, t = 36/27 },
    { s = pouchout, t = 48/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 64/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 72/27 },
    { s = randspin, t = 85/27 },
}

local rst_drume = {
    { s = randspin, t = 0.05 },
    { s = path .. "ak74_magrelease_button.ogg", t = 6/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 8/27 },
    { s = pouchout, t = 32/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 49/27 },
    -- { s = path .. "ak74_magrelease_button.ogg", t = 56/27 },
    { s = randspin, t = 69/27 },
    { s = path .. "ak74_slider_up.ogg", t = 86/27 },
    { s = path .. "ak74_slider_down.ogg", t = 94/27 },
    { s = randspin, t = 100/27 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.7},
    {hide = 0, t = 1.1}
}

local rst_magcheck = {
    { s = randspin, t = 5/27 },
    { s = path .. "ak74_magrelease_button.ogg", t = 17/27 },
    { s = path .. "ak74_magout_plastic.ogg", t = 24/27 },
    { s = randspin, t = 36/27 },
    -- { s = randspin, t = 65/27 },
    { s = path .. "ak74_magin_plastic.ogg", t = 77/27 },
    { s = path .. "ak74_magrelease_button.ogg", t = 83/27 },
    { s = randspin, t = 95/27 },
}

local rst_look = {
    { s = randspin, t = 9/27 },
    { s = randspin, t = 38/27 },
    { s = randspin, t = 73/27 },
}

ARC9EFT.AK_Anims = {
    ["idle"] = {
        Source = "idle",
        RareSource = {"tooidle0", "tooidle1", "tooidle2"},
        RareSourceChance = 0.0001,
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 0 },
            { t = 0.75, lhik = 0, rhik = 0 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            { s = path .. "ak74_slider_up.ogg", t = 12/24 },
            { s = path .. "ak74_slider_down.ogg", t = 18/24 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
        }
    },

    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s = "arc9_eft_shared/weap_out.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",        
        EventTable = {
            { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0},
        },
    },

    ["fire_dry"] = {
        Source = "fire_dry",    
        EventTable = {
            { s = "arc9_eft_shared/weap_trigger_empty.ogg", t = 0},
        },
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_single,
        EventTable = rst_single,
        MagSwapTime = 1.5,
    },
    ["reload_empty"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_single,
        EventTable = rst_single,
        MagSwapTime = 1.5,
    },


    ["reload545"] = {
        Source = "reload545",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_545,
        MagSwapTime = 1.5,
    },
    ["reload_empty545"] = {
        Source = "reload545_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_drop,
        EventTable = rst_545e,
        MagSwapTime = 1.5,
    },

    ["reloadlong545"] = {
        Source = "reloadlong545",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_drum,
        MagSwapTime = 1.5,
    },
    ["reload_emptylong545"] = {
        Source = "reloadlong545_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_long,
        EventTable = rst_drume,
        MagSwapTime = 1.5,
    },

    ["reloadlong762"] = {
        Source = "reloadlong762",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_drum,
        MagSwapTime = 1.5,
    },
    ["reload_emptylong762"] = {
        Source = "reloadlong762_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_long,
        EventTable = rst_drume,
        MagSwapTime = 1.5,
    },

    ["reload762"] = {
        Source = "reload762",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_545,
        MagSwapTime = 1.5,
    },
    ["reload_empty762"] = {
        Source = "reload762_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_drop,
        EventTable = rst_545e,
        MagSwapTime = 1.5,
    },

    ["reload556"] = {
        Source = "reload556",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_545,
        MagSwapTime = 1.5,
    },
    ["reload_empty556"] = {
        Source = "reload556_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_drop,
        EventTable = rst_545e,
        MagSwapTime = 1.5,
    },


    ["reload10rnd"] = {
        Source = "reload10rnd",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_10,
        MagSwapTime = 1.5,
    },
    ["reload_empty10rnd"] = {
        Source = "reload10rnd_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty10rnd,
        EventTable = rst_10e,
        MagSwapTime = 1.5,
    },


    ["reload60rnd"] = {
        Source = "reload60rnd",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_60,
        MagSwapTime = 1.5,
    },
    ["reload_empty60rnd"] = {
        Source = "reload60rnd_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_60e,
        MagSwapTime = 1.5,
    },



    ["reloadsmalldrum"] = {
        Source = "reloadsmalldrum",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_drum,
        MagSwapTime = 1.5,
    },
    ["reload_emptysmalldrum"] = {
        Source = "reloadsmalldrum_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_drume,
        MagSwapTime = 1.5,
    },


    ["reloadbigdrum"] = {
        Source = "reloadbigdrum",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_drum,
        MagSwapTime = 1.5,
    },
    ["reload_emptybigdrum"] = {
        Source = "reloadbigdrum_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_drume,
        MagSwapTime = 1.5,
    },

    ["inspect"] = { -- shutup arc9 we have inspect
        Source = "idle",
        Time = 0.05,
    },
    
    ["inspect1"] = { -- 74
        Source = "look0",
        MinProgress = 0.95,
        FireASAP = true,
        -- IKTimeLine = rik_def,
        EventTable = rst_look
    },
    ["look_akm"] = { -- akm
        Source = "look1",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 0.6, lhik = 0, rhik = 1 },
            { t = 0.8, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = rst_look
    },
    ["look_rpk"] = { -- rpk
        Source = "look2",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 1, rhik = 1 },
            { t = 0.6, lhik = 0, rhik = 1 },
            { t = 0.8, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = rst_look
    },

    ["look_aksu"] = { -- aksu
        Source = "look3",
        MinProgress = 0.95,
        FireASAP = true,
        -- IKTimeLine = rik_def,
        EventTable = rst_look
    },

    ["inspect0"] = {
        Source = "checkchamber",
        MinProgress = 0.95,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 9/27 },
            { s = path.."akms_slider_up.ogg", t = 21/27},
            { s = path.."akms_slider_down.ogg", t = 37/27},
            { s = randspin, t = 53/27 },
        },
    },
    ["inspect_mag_545"] = {
        Source = "magcheck545",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_long545"] = {
        Source = "magchecklong545",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_long762"] = {
        Source = "magchecklong762",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_762"] = {
        Source = "magcheck762",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_556"] = {
        Source = "magcheck556",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_60rnd"] = {
        Source = "magcheck60rnd",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_10rnd"] = {
        Source = "magcheck10rnd",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_smalldrum"] = {
        Source = "magchecksmalldrum",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_bigdrum"] = {
        Source = "magcheckbigdrum",
        MinProgress = 0.95,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },






    ["jam0"] = {
        Source = "jam_misfire", -- misfire
        EventTable = {
            { s = randspin, t = 0.22 + 0.75 },            
            { s = path.."ak74_slider_up.ogg", t = 0.68 + 0.75 },
            { s = path.."ak74_slider_down.ogg", t = 0.88 + 0.75 },
            { s = randspin, t = 1.41 + 0.75 },        
        },
        EjectAt = 0.74 + 0.8
    },
    ["jam2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = randspin, t = 2/24 + 0.75 },
            { s = randspin, t = 12/24 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 16/24 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 22/24 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in_moving.ogg", t = 36/24  + 0.75 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 40/24 + 0.75 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 46/24 + 0.75 },
            { s = randspin, t = 50/24  + 0.75 },
            { s = path .. "ak74_slider_down.ogg", t = 61/24  + 0.75 },
            { s = randspin, t = 72/24  + 0.75 },
        },
    },
    ["jam3"] = {
        Source = "jam_hard_slide", -- jam hard
        EventTable = {
            { s = randspin, t = 0.2 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 0.89 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 0.99 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 1.5 + 0.75 },
            { s = randspin, t = 1.94  + 0.75 },
            { s = path .. "ak_jam_stuckbolt_out_hit3.ogg", t = 2.25 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_out_hit2.ogg", t = 2.62 + 0.75 },
            { s = randspin, t = 3.13  + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 3.35 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 3.66 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 3.97 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in_moving.ogg", t = 4.3 + 0.75 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 4.45 + 0.75 },
            { s = path .. "ak74_slider_down.ogg", t = 4.54 + 0.75 },
            { s = randspin, t = 4.85  + 0.75 },
        },
        EjectAt = 4.45 + 0.8
    },
    ["jam4"] = {
        Source = "jam_soft_slide", -- jam soft
        EventTable = {
            { s = randspin, t = 0.14 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 0.65 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 0.95 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 1.62 + 0.75 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 1.89 },
            { s = path .. "ak_jam_stuckbolt_in_moving.ogg", t = 2.14 + 0.75 },
            { s = path .. "ak74_slider_down.ogg", t = 2.38 + 0.75 },
            { s = randspin, t = 2.9  + 0.75 },
        }
    },
    ["jam1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = randspin, t = 0.07  + 0.75 },
            { s = path .. "ak_jam_shell_grab.ogg", t = 0.59 + 0.75 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 0.75  + 0.75 },
            { s = path .. "ak_jam_shell_remove.ogg", t = 0.91 + 0.75 },
            { s = randspin, t = 1.59 + 0.75 },
        },
    },







    ["firemode_1"] = {
        Source = "firemode_1",
        EventTable = { 
            -- {pp = "firemode", ppv = 0, t = 0 },
            {s = path .. "ak74_fireselector_down.ogg", t = 0.25 },
            -- {pp = "firemode", ppv = 1, t = 0.5 },
        },        
        PoseParamChanges = {
            ["firemode"] = 0
        },
    },
    ["firemode_2"] = {
        Source = "firemode_0",
        EventTable = { 
            -- {pp = "firemode", ppv = 1, t = 0 },
            {s = path .. "ak74_fireselector_up.ogg", t = 0.25 },
            -- {pp = "firemode", ppv = 0, t = 0.5 },
        },    
        -- PoseParamChanges = {
        --     ["firemode"] = 1 
        -- },
    },

    ["firemode_1_rpk"] = {
        Source = "firemode_1_rpk",
        EventTable = { { s = path .. "ak74_fireselector_down.ogg", t = 0.2 } }
    },
    ["firemode_2_rpk"] = {
        Source = "firemode_0_rpk",
        EventTable = { { s = path .. "ak74_fireselector_up.ogg", t = 0.2 } }
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },
    ["fix"] = {
        Source = {"jam1"},
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = "arc9_eft_shared/weap_bolt_handle_out.ogg", t = 0.4 },
            { s = randspin, t = 0.95 },
            { s = path .. "ak74_slider_jam.ogg", t = 1.8 },
            { s = randspin, t = 2.4 },
            { s = path .. "ak74_slider_up.ogg", t = 2.7 },
            { s = path .. "ak74_slider_down.ogg", t = 2.9 },
            { s = randspin, t = 3.1 },
        }
    },

    ["enter_ubgl"] = {
        Source = "gp34_switch",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["idle_ubgl"] = {
        Source = "gp34_idle",
    },
    ["reload_ubgl"] = {
        Source = "gp34_reload",        
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = path .. "gp34/gp34_grenade_in.ogg", t = 1 },
            { s = randspin, t = 1.7 },
        }
    },
    ["fire_ubgl"] = {
        Source = "gp34_fire",
    },
    ["exit_ubgl"] = {
        Source = "gp34_switch",
        Reverse = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    
}


----- vityz

ARC9EFT.VITYAZ_AnimsHook = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    local nomag = false

    -- 0 - look
    -- 1 - chamber
    -- 2 - mag

    if elements["9mmmag"] then ending = "9mmmag"
    else nomag = true end
    
    if anim == "inspect" then
        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(!!swep:GetValue("EFTImprovedMagCheck")) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then ending = math.max(rand, 1) end
            ending = rand
        end
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 0, 4.99))

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end

    return anim .. ending
    -- return anim .. 3
end

local rik_single = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.3, lhik = 1, rhik = 1 },
    { t = 0.5, lhik = 0, rhik = 1 },
    { t = 0.6, lhik = 0, rhik = 1 },
    { t = 0.9, lhik = 1, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}

local rik_def = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.2, lhik = 0, rhik = .5 },
    { t = 0.91, lhik = 0, rhik = 0 },
    { t = 1, lhik = 1, rhik = 1 },
}

local rik_empty = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.15, lhik = 0, rhik = 1 },
    { t = 0.85, lhik = 0, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}

local rik_magcheck = {
    { t = 0, lhik = 1, rhik = 1 },
    { t = 0.05, lhik = 1, rhik = 1 },
    { t = 0.22, lhik = 0, rhik = 1 },
    { t = 0.81, lhik = 0, rhik = 1 },
    { t = 0.95, lhik = 1, rhik = 1 },
    { t = 1, lhik = 1, rhik = 1 },
}
local rst_single = {
    { s = randspin, t = 7/26 },
    { s = path .. "ak74_slider_up.ogg", t = 19/26 },
    { s = randspin, t = 33/26 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 35/26 },
    { s = path .. "ak74_round_in_chamber.ogg", t = 53/26 },
    { s = randspin, t = 60/26 },
    { s = randspin, t = 68/26 },
    { s = path .. "ak74_slider_down.ogg", t = 73/26 },
    { s = randspin, t = 83/26 },
}

local rst_def = {
    { s = randspin, t = 6/28 },
    { s = path .. "ak74_magrelease_button.ogg", t = 8/28 },
    { s = path .. "mpx_weap_magout_plastic.ogg", t = 11/28 },
    { s = pouchin, t = 22/28 },
    { s = pouchout, t = 30/28 },
    { s = path .. "mpx_weap_magin_plastic.ogg", t = 62/28 },
    { s = randspin, t = 75/28 }
}

local rst_empty = {
    { s = randspin, t = 6/28 },
    { s = path .. "ak74_magrelease_button.ogg", t = 8/28 },
    { s = path .. "mpx_weap_magout_plastic.ogg", t = 11/28 },
    { s = pouchout, t = 25/28 },
    { s = path .. "mpx_weap_magin_plastic.ogg", t = 52/28 },
    { s = randspin, t = 65/28 },
    { s = path .. "ak74_slider_up.ogg", t = 82/28 },
    { s = path .. "ak74_slider_down.ogg", t = 89/28 },
    { s = randspin, t = 97/28 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.57},
    {hide = 0, t = 1.02}
}

local rst_magcheck = {
    { s = randspin, t = 5/24 },
    { s = path .. "ak74_magrelease_button.ogg", t = 20/24 },
    { s = path .. "mpx_weap_magout_plastic.ogg", t = 24/24 },
    { s = randspin, t = 35/24 },
    { s = randspin, t = 55/24 },
    { s = path .. "mpx_weap_magin_plastic.ogg", t = 78/24 },
    { s = randspin, t = 90/24 },
}

local rst_look = {
    { s = randspin, t = 9/24 },
    { s = randspin, t = 38/24 },
    { s = randspin, t = 73/24 },
}

ARC9EFT.VITYAZ_Anims = {
    ["idle"] = {
        Source = "idle",
        RareSource = {"tooidle0", "tooidle1", "tooidle2"},
        RareSourceChance = 0.0001,
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.6, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            { s = path .. "ak74_slider_up.ogg", t = 18/24 },
            { s = path .. "ak74_slider_down.ogg", t = 24/24 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
        }
    },

    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s = "arc9_eft_shared/weap_out.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
    },


    ["dryfire"] = { Source = "fire_dry", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 }, } },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_single,
        EventTable = rst_single
    },
    ["reload_empty"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_single,
        EventTable = rst_single
    },


    ["reload9mmmag"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_def,
    },
    ["reload_empty9mmmag"] = {
        Source = "reload0_empty",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_empty,
    },

    ["inspect"] = { -- shutup arc9 we have inspect
        Source = "idle",
        Time = 0.05,
    },

    ["inspect1"] = {
        Source = "look0",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.4, lhik = 1, rhik = 1 },
            { t = 0.6, lhik = 0, rhik = 1 },
            { t = 0.8, lhik = 0, rhik = 1 },
            { t = 0.95, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = rst_look
    },
    ["inspect0"] = {
        Source = "look1",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            { s = randspin, t = 9/27 },
            { s = path.."akms_slider_up.ogg", t = 21/27},
            { s = path.."akms_slider_down.ogg", t = 37/27},
            { s = randspin, t = 53/27 },
        },
    },
    ["inspect_mag_9mmmag"] = {
        Source = "look2",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },

    ["firemode_1"] = {
        Source = "firemode_1",
        EventTable = { { s = path .. "ak74_fireselector_down.ogg", t = 0.25 } }
    },
    ["firemode_2"] = {
        Source = "firemode_0",
        EventTable = { { s = path .. "ak74_fireselector_up.ogg", t = 0.25 } }
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {
            { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },
        }
    },



    ["jam0"] = {
        Source = {"misfire_0", "misfire_1"}, -- misfire
        EventTable = {
            { s = randspin, t = 0.2 },            
            { s = path.."ak74_slider_up.ogg", t = 0.8},
            { s = path.."ak74_slider_down.ogg", t = 1.04},
            { s = randspin, t = 1.55 },        
        },
        EjectAt = 0.77
    },
    ["jam2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = randspin, t = 0.4 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 0.6 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 0.72 },
            { s = path .. "ak_jam_stuckbolt_in_moving.ogg", t = 1.18 },
            { s = path .. "ak_jam_feedfault_roundaftercharge.ogg", t = 1.4 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 1.53 },
            { s = path .. "ak74_slider_down.ogg", t = 1.72 },
            { s = randspin, t = 2.05 },
        },
        EjectAt = 1.4
    },
    ["jam3"] = {
        Source = "jam_hard", -- jam hard
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 0.42 },
            { s = path .. "ak_jam_stuckbolt_in1.ogg", t = 0.51 },
            { s = path .. "ak_jam_stuckbolt_in2.ogg", t = 0.96 },
            { s = randspin, t = 1.3 },
            { s = randspin, t = 1.79 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 2.14 },
            { s = path .. "ak_jam_stuckbolt_in_moving.ogg", t = 2.67 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.86 },
            { s = path .. "ak74_slider_down.ogg", t = 2.97 },
            { s = randspin, t = 3.48 },
        },
        EjectAt = 2.86
    },
    ["jam4"] = {
        Source = "jam_soft", -- jam soft
        EventTable = {
            { s = randspin, t = 0.16 },
            { s = path .. "ak_jam_stuckbolt_in_starting.ogg", t = 0.5 },
            { s = path .. "ak_jam_stuckbolt_in3.ogg", t = 0.73 },
            { s = path .. "ak_jam_stuckbolt_in_moving.ogg", t = 1.26 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 1.44 },
            { s = path .. "ak74_slider_down.ogg", t = 1.54 },
            { s = randspin, t = 2 },
        },
        EjectAt = 1.44
    },
    ["jam1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = randspin, t = 0.3 },
            { s = path .. "ak_jam_shell_grab.ogg", t = 0.56 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 1.2 },
            { s = path .. "ak_jam_stuckbolt_out_hit3.ogg", t = 1.44 },
            { s = randspin, t = 1.7 },
        },
    },
}

-- SWEP.missingpartsnotifsent = 0

ARC9EFT.AK_MissingParts = function(swep)
    if  !swep:GetValue("HasGas") or 
        !swep:GetValue("HasAmmoooooooo") or 
        !swep:GetValue("HasGrip") or 
        !swep:GetValue("HasHG") then
            
            if SERVER and swep.missingpartsnotifsent < CurTime() then
                swep.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(swep:GetOwner())
            end
            return true 
    end
end

ARC9EFT.AK_RedName = function(swep)
    if  !swep:GetValue("HasGas") or 
        !swep:GetValue("HasAmmoooooooo") or 
        !swep:GetValue("HasGrip") or 
        !swep:GetValue("HasHG") then
            return true 
    end
end