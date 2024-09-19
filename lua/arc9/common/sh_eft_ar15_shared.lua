ARC9EFT = ARC9EFT or {}

ARC9EFT.AR15_AnimsHook = function(swep, anim)
    local elements = swep:GetElements()
    local class = swep:GetClass()

    local ending = ""

    local nomag = false

    if elements["30rnd"] then ending = "0"
    elseif elements["20rnd"] then ending = "2"
    elseif elements["100rnd"] or elements["40rnd"] then ending = "4"
    elseif elements["drum"] then ending = "5"
    elseif elements["10rnd"] then ending = "6"
    else nomag = true end
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
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
            if nomag then ending = math.max(rand, 2) end
            ending = rand
        end
    elseif anim == "inspect_ubgl" then -- m203 lhik
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
        local rand = math.Truncate(util.SharedRandom("hi", 0, 4.99))

        -- swep.EFTInspectnum = swep.EFTInspectnum or 0
        -- if IsFirstTimePredicted() then
        --     swep.EFTInspectnum = swep.EFTInspectnum + 1
        -- end
        -- local rand = swep.EFTInspectnum
        -- if rand == 5 then swep.EFTInspectnum = 0 rand = 0 end


        if ARC9EFTBASE and SERVER then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        if swep:GetValue("EFTAR15NoFwdAssist") and (rand == 1 or rand == 2) then
            rand = rand .. "_nofwd"
        end
        
        return "jam_" .. rand
    end
    
    if anim == "ready" then return anim end -- fcudfjhgfioudhmfiojm
    return anim .. ending
    -- return anim .. 3
end


local path = "weapons/darsu_eft/m4a1/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rik_single = {
    { t = 0, lhik = 1 },
    { t = 0.075, lhik = 0 },
    { t = 0.25, lhik = 0 },
    { t = 0.42, lhik = 1 },
    { t = 0.74, lhik = 1 },
    { t = 0.85, lhik = 0 },
    { t = 0.9, lhik = 0 },
    { t = 1, lhik = 1 },
}

local rik_def = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.82, lhik = 0 },
    { t = 1, lhik = 1 },
}

local rik_empty = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.82, lhik = 0 },
    { t = 1, lhik = 1 },
}

local rik_magcheck = {
    { t = 0, lhik = 1 },
    { t = 0.13, lhik = 0 },
    { t = 0.78, lhik = 0 },
    { t = 0.95, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rst_single = {
    { s = randspin, t = 0.3 },
    { s = path .. "mcx_bolt_out.ogg", t = 0.75 },
    { s = path .. "mcx_bolt_in.ogg", t = 1.2 },
    { s = randspin, t = 1.96 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 2.52 },
    { s = randspin, t = 2.7 },
    { s = path .. "ak74_round_in_chamber.ogg", t = 3.22 },
    { s = path .. "mcx_bolt_catchrelease.ogg", t = 4.92 },
    { s = randspin, t = 5.27 },
}

local rik_look = {
    { t = 0, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_chamber = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.675, lhik = 0 },
    { t = 0.95, lhik = 1 },
    { t = 1, lhik = 1 },
}

local magin = {path .. "mcx_mag_in1.ogg", path .. "mcx_mag_in2.ogg", path .. "mcx_mag_in3.ogg"}
local magout = {path .. "mcx_mag_out1.ogg", path .. "mcx_mag_out2.ogg", path .. "mcx_mag_out3.ogg"}

local rst_def = {
    { s = randspin, t = 0.1 },
    { s = path .. "mcx_magrelease_button.ogg", t = 0.49 },
    { s = magout, t = 0.61 },
    { s = pouchin, t = 1.08 },
    { s = pouchout, t = 1.42 },
    { s = magin, t = 2.04 },
    { s = randspin, t = 2.57 }
}
local rst_empty = {
    { s = randspin, t = 0.04 },
    { s = path .. "mcx_magrelease_button.ogg", t = 0.3 },
    { s = magout, t = 0.38 },
    { s = pouchout, t = 0.96 },
    { s = magin, t = 1.6 },
    { s = path .. "mcx_bolt_catch_handhit.ogg", t = 2.2 },
    { s = path .. "mcx_bolt_catchrelease.ogg", t = 2.25 },
    { s = randspin, t = 2.27 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.6},
    {hide = 0, t = 1.1}
}


local rst_def40 = {
    { s = randspin, t = 0.1 },
    { s = path .. "mcx_magrelease_button.ogg", t = 0.49 },
    { s = magout, t = 0.61 },
    { s = pouchin, t = 1.08 },
    { s = pouchout, t = 1.42+0.12 },
    { s = magin, t = 2.04+0.12 },
    { s = randspin, t = 2.57+0.12 }
}
local rst_empty40 = {
    { s = randspin, t = 0.04 },
    { s = path .. "mcx_magrelease_button.ogg", t = 0.3 },
    { s = magout, t = 0.38 },
    { s = pouchout, t = 0.96+0.12 },
    { s = magin, t = 1.6+0.12 },
    { s = path .. "mcx_bolt_catch_handhit.ogg", t = 2.2+0.12 },
    { s = path .. "mcx_bolt_catchrelease.ogg", t = 2.25+0.12 },
    { s = randspin, t = 2.27+0.12 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.6},
    {hide = 0, t = 1.12}
}

local rst_def50 = {
    { s = randspin, t = 0.1 },
    { s = path .. "mcx_magrelease_button.ogg", t = 0.49 },
    { s = magout, t = 0.61 },
    { s = pouchin, t = 1.08 },
    { s = pouchout, t = 1.42+0.2 },
    { s = magin, t = 2.04+0.2 },
    { s = randspin, t = 2.57+0.2 }
}
local rst_empty50 = {
    { s = randspin, t = 0.04 },
    { s = path .. "mcx_magrelease_button.ogg", t = 0.3 },
    { s = magout, t = 0.38 },
    { s = pouchout, t = 0.96+0.2 },
    { s = magin, t = 1.6+0.2 },
    { s = path .. "mcx_bolt_catch_handhit.ogg", t = 2.2+0.2 },
    { s = path .. "mcx_bolt_catchrelease.ogg", t = 2.25+0.2 },
    { s = randspin, t = 2.27+0.2 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.6},
    {hide = 0, t = 1.12}
}

local rst_magcheck = {
    { s = randspin, t = 5/24 },
    { s = path .. "mcx_magrelease_button.ogg", t = 0.46 },
    { s = magout, t = 0.63 },
    { s = randspin, t = 0.91 },
    { s = randspin, t = 1.41 },
    { s = magin, t = 1.76 },
    { s = randspin, t = 2.39 },
}

local rst_look = {
    { s = randspin, t = 9/28 },
    { s = randspin, t = 38/28 },
    { s = randspin, t = 73/28 },
}

local rst_chamber = {
    { s = randspin, t = 9/24 },
    { s = "arc9_eft_shared/weap_bolt_handle_out.ogg", t = 21/24},
    { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 37/24},
    { s = randspin, t = 53/24 },
}

ARC9EFT.AR15_Anims = {
    ["idle"] = {
        Source = "idle",
        RareSource = {"tooidle0", "tooidle1", "tooidle2"},
        RareSourceChance = 0.0001,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
        RareSource = {"tooidle0_empty", "tooidle1_empty", "tooidle2_empty"},
        RareSourceChance = 0.0001,
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        IKTimeLine = {
            { t = 0, lhik = 0 },
            { t = 0.6, lhik = 0 },
            { t = 1, lhik = 1 },
        },
        EventTable = {
            { s = "arc9_eft_shared/weap_in.ogg", t = 0 },
            { s = path .. "mcx_bolt_out.ogg", t = 0.33 },
            { s = path .. "mcx_bolt_in.ogg", t = 0.63 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {{ s = "arc9_eft_shared/weap_in.ogg", t = 0 },}
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {{ s = "arc9_eft_shared/weap_out.ogg", t = 0 }}
    },

    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {{ s = "arc9_eft_shared/weap_in.ogg", t = 0 },}
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {{ s = "arc9_eft_shared/weap_out.ogg", t = 0 }}
    },

    ["fire"] = {
        Source = "fire", 
        EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 } }
    },
    ["fire_empty"] = {
        Source = "fire_empty",
    },


    ["dryfire"] = { Source = "fire_dry", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 }, } },
    ["dryfire_empty"] = { Source = "fire_dry_empty", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 }, } },

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


    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_def,
    },
    ["reload_empty0"] = {
        Source = {"reload_empty0", "reload_empty0_1"},
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_empty,
    },
    ["reload2"] = {
        Source = "reload2",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_def,
    },
    ["reload_empty2"] = {
        Source = {"reload_empty2", "reload_empty2_1"},
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_empty,
    },
    ["reload4"] = {
        Source = "reload4",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_def40,
    },
    ["reload_empty4"] = {
        Source = {"reload_empty4", "reload_empty4_1"},
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_empty40,
    },
    ["reload5"] = {
        Source = "reload5",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_def50,
    },
    ["reload_empty5"] = {
        Source = {"reload_empty5", "reload_empty5_1"},
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_empty50,
    },
    ["reload6"] = {
        Source = "reload6",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_def,
        EventTable = rst_def,
    },
    ["reload_empty6"] = {
        Source = {"reload_empty6", "reload_empty6_1"},
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = rik_empty,
        EventTable = rst_empty,
    },

    ["inspect"] = { -- shutup arc9 we have inspect
        Source = "idle",
        Time = 0.05,
    },
    ["inspect_empty"] = { -- shutup arc9 we have inspect
        Source = "idle_empty",
        Time = 0.05,
    },

    ["inspect1"] = {
        Source = "look0",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_look,
        EventTable = rst_look
    },
    ["inspect_empty1"] = {
        Source = "look0_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_look,
        EventTable = rst_look
    },
    ["inspect0"] = {
        Source = "look1",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_chamber,
        EventTable = rst_chamber
    },
    ["inspect_empty0"] = {
        Source = "look1_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_chamber,
        EventTable = rst_chamber
    },

    ["inspect_mag_0"] = {
        Source = "magcheck0",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_empty_mag_0"] = {
        Source = "magcheck0_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_2"] = {
        Source = "magcheck2",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_empty_mag_2"] = {
        Source = "magcheck2_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_4"] = {
        Source = "magcheck4",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_empty_mag_4"] = {
        Source = "magcheck4_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_5"] = {
        Source = "magcheck5",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_empty_mag_5"] = {
        Source = "magcheck5_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_mag_6"] = {
        Source = "magcheck6",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },
    ["inspect_empty_mag_6"] = {
        Source = "magcheck6_empty",
        MinProgress = 0.85,
        FireASAP = true,
        IKTimeLine = rik_magcheck,
        EventTable = rst_magcheck
    },

    ["firemode_1"] = {
        Source = "firemode_1",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },
    ["firemode_2"] = {
        Source = "firemode_0",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },
    ["firemode_1_empty"] = {
        Source = "firemode_1_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },
    ["firemode_2_empty"] = {
        Source = "firemode_0_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 }}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 }}
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 }}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 }}
    },



    ["jam_0"] = {
        Source = "jam_misfire", -- misfire
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = randspin, t = 0.49 },
            { s = path .. "mcx_bolt_out.ogg", t = 1.17 },
            { s = path .. "mcx_bolt_in.ogg", t = 1.55 },
            { s = randspin, t = 1.89 },
            
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.3, lhik = 1 },
            { t = 0.41, lhik = 0 },
            { t = 0.8, lhik = 0 },
            { t = 0.95, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 1.3
    },
    ["jam_2"] = {
        Source = "jam_feed", -- jam feed
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = randspin, t = 0.49 },
            { s = randspin, t = 0.81 },
            { s = path .. "mcx_bolt_out.ogg", t = 1.04 },
            { s = randspin, t = 1.3 },
            { s = randspin, t = 1.61 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 1.66 },
            { s = randspin, t = 1.91 },
            { s = path .. "mcx_bolt_in.ogg", t = 2.38 },
            { s = path .. "generic_jam_slidelock_hit1.ogg", t = 2.66 },
            { s = path .. "generic_jam_slidelock_hit2.ogg", t = 3.02 },
            { s = randspin, t = 3.38 },
        },
        EjectAt = 1.66
    },
    ["jam_2_nofwd"] = {
        Source = "jam_feed_nofwd", -- jam feed
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = randspin, t = 0.49 },
            { s = randspin, t = 0.81 },
            { s = path .. "mcx_bolt_out.ogg", t = 1.04 },
            { s = randspin, t = 1.3 },
            { s = randspin, t = 1.61 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 1.66 },
            { s = randspin, t = 1.91 },
            { s = path .. "mcx_bolt_in.ogg", t = 2.38 },
            { s = randspin, t = 2.73 },
        },
        EjectAt = 1.66
    },

    ["jam_3"] = {
        Source = "jam_hard_slide", -- jam hard
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = randspin, t = 0.49 },
            { s = path .. "ar_jam_boltlock_grab1.ogg", t = 0.98 },
            { s = path .. "ar_jam_boltlock_try1.ogg", t = 1.04 },
            { s = path .. "ar_jam_boltlock_grab2.ogg", t = 1.57 },
            { s = path .. "ar_jam_boltlock_try2.ogg", t = 1.72 },
            { s = randspin, t = 1.94 },
            { s = path .. "ar_jam_boltlock_grab3.ogg", t = 2.37 },
            { s = path .. "ar_jam_boltlock_try3.ogg", t = 2.44 },
            { s = path .. "mcx_bolt_out.ogg", t = 2.88 },
            { s = path .. "ak_jam_feedfault_extraction_nohand.ogg", t = 2.97 },
            { s = path .. "mcx_bolt_in.ogg", t = 3 },
            { s = randspin, t = 3.18 },
            
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.15, lhik = 1 },
            { t = 0.24, lhik = 0 },
            { t = 0.56, lhik = 0 },
            { t = 0.67, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.97
    },
    ["jam_4"] = {
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
    ["jam_1"] = {
        Source = "jam_shell", -- jam shell
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = randspin, t = 0.49 },
            { s = path .. "ak_jam_shell_grab.ogg", t = 0.94 },
            { s = path .. "ak_jam_shell_remove.ogg", t = 1.3 },
            { s = "arc9_eft_shared/weap_bolt_handle_out.ogg", t = 1.71},
            { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 2},
            { s = path .. "generic_jam_slidelock_hit1.ogg", t = 2.25 },
            { s = randspin, t = 2.43 },
        },
    },
    ["jam_1_nofwd"] = {
        Source = "jam_shell_nofwd", -- jam shell
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = randspin, t = 0.49 },
            { s = path .. "ak_jam_shell_grab.ogg", t = 0.94 },
            { s = path .. "ak_jam_shell_remove.ogg", t = 1.3 },
            { s = "arc9_eft_shared/weap_bolt_handle_out.ogg", t = 1.71},
            { s = "arc9_eft_shared/weap_bolt_handle_in.ogg", t = 2},
            -- { s = path .. "generic_jam_slidelock_hit1.ogg", t = 2.25 },
            { s = randspin, t = 2.3 },
        },
    },
["cycle"] = { Source = {"pump"}, EventTable = {
    { s = randspin, t = 0.3 },
    { s = path .. "mcx_bolt_out.ogg", t = 0.75 },
    { s = path .. "mcx_bolt_in.ogg", t = 1.2 },
    { s = randspin, t = 1.96 },
    { s = "weapons/darsu_eft/fn40/fn40gl_grenade_insert.ogg", t = 3 }

        },
        IKTimeLine = rik_single 
 },

}

-- SWEP.missingpartsnotifsent = 0

ARC9EFT.AR15_MissingParts = function(swep)
    if swep:GetValue("FuckingAirsoft") then 
        if SERVER and swep.missingpartsnotifsent < CurTime() then
            swep.missingpartsnotifsent = CurTime() + 2
            net.Start("arc9eftquestionnotif")
            net.Send(swep:GetOwner())
        end
        return true
    elseif !swep:GetValue("HasGas") or 
        !swep:GetValue("HasAmmoooooooo") or 
        !swep:GetValue("HasGrip") or 
        !swep:GetValue("HasBolt") or 
        !swep:GetValue("HasReceiver") or 
        !swep:GetValue("HasBarrel") or 
        !swep:GetValue("HasBufferTube") or 
        !swep:GetValue("HasHG") then
            if SERVER and swep.missingpartsnotifsent < CurTime() then
                swep.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(swep:GetOwner())
            end
            return true
    end    
end

ARC9EFT.AR15_RedName = function(swep)
    if !swep:GetValue("HasGas") or 
        !swep:GetValue("HasAmmoooooooo") or 
        !swep:GetValue("HasGrip") or 
        !swep:GetValue("HasBolt") or 
        !swep:GetValue("HasReceiver") or 
        !swep:GetValue("HasBarrel") or 
        !swep:GetValue("HasBufferTube") or 
        !swep:GetValue("HasHG") then
            return true
    end    
end