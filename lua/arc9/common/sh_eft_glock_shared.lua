ARC9EFT = ARC9EFT or {}

//this overrides sg_eft_glock_shared.lua in eft glocks
ARC9EFT.Glock_AnimsHook = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false
    if elements["eft_mag_g17_std_17"] or elements["eft_mag_g19x_std_21"] or elements["eft_mag_slickers"] then ending = 0
    elseif elements["eft_mag_g17_gl9_21"] or elements["eft_mag_g19x"] then ending = 1
    elseif elements["eft_mag_g17_bigstick_33"] or elements["eft_mag_bigstick24"] or elements["eft_mag_bigstick31"]  or
elements["eft_roosys_mag_bigstick24"] or elements["eft_roosys_mag_bigstick31"]  then ending = 2
    elseif elements["eft_mag_g17_sgmt_50"] then ending = 3
    elseif elements["eft_roosys_1"] then ending = 1
    elseif elements["eft_roosys_2"] then ending = 2
    elseif elements["eft_roosys_0"] then ending = 0


    else nomag = true end

    local empty = swep:Clip1() == 0 and !nomag
    
    -- 0 looking
    -- 1 slide check  (!empty)
    -- 2 mag checking  (!nomag)
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(!elements["eft_mag_g17_sgmt_50"] and !elements["eft_mag_g17_gl9_21"]) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag then rand = 0 end
            ending = rand
        end

        return anim .. ending
    elseif anim == "reload" then
        return anim .. (empty and "_empty" or "") .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end

    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
end

local path = "weapons/darsu_eft/glock/"
local pathgenericpistol = "weapons/darsu_eft/generic_pistol/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.45 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 0.6},
    { s = randspin, t = 0.7 },
    { s = pathgenericpistol .. "generic_jam_shell_ remove_medium3.ogg", t = 1.26  },
    { s = randspin, t = 1.72 },
    { s = pathgenericpistol .. "pm_catch_slider.ogg", t = 2.27 },
    { s = randspin, t = 2.76 },
}

local rst_def = {
    { s = randspin, t = 0.1 },    
    { s = pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.28 }, -- eft devs redarded
    { s = pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.38 },
    { s = pouchin, t = 0.9 },
    { s = pouchout, t = 1.32 },
    { s = randspin, t = 1.52 },
    { s = pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 2.1 },
    { s = randspin, t = 2.7 },
}

local rst_empty = {
    { s = randspin, t = 0.1 },    
    { s = pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.23 }, -- eft devs redarded
    { s = pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.27 },
    { s = randspin, t = 0.6 },
    { s = pouchout, t = 0.73 },
    { s = pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 1.27 },
    { s = randspin, t = 1.93 },  
    { s = pathgenericpistol .. "pm_catch_slider.ogg", t = 2.13 },
    { s = randspin, t = 2.4 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.45},
    {hide = 0, t = 0.95}
}

local rst_magcheck = {
    { s = randspin, t = 0.1 },
    { s = pathgenericpistol .. "kedr_fireselector_up.ogg", t = 0.25},
    { s = pathgenericpistol .. "mpx_weap_magout_plastic.ogg", t = 0.34 },
    { s = randspin, t = 0.62 },
    { s = randspin, t = 1.76 },
    { s = randspin, t = 2.49 },
    { s = pathgenericpistol .. "mpx_weap_magin_plastic.ogg", t = 3 },
    { s = randspin, t = 3.45 },
}

ARC9EFT.Glock_Anims = {
    ["idle"] = {
        Source = "idle",
        Time = 1000
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.58 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 0.79 },
        },
    },

    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        }
    },

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = pathgenericpistol .. "pm_catch_slider.ogg", t = 0.05 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_single
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },
    ["reload2"] = {
        Source = "reload2",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },
    ["reload3"] = {
        Source = "reload3",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1", "reload_empty0_2"}, 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },
    ["reload_empty1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1", "reload_empty1_2"}, 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },
    ["reload_empty2"] = {
        Source = {"reload_empty2_0", "reload_empty2_1", "reload_empty2_2"}, 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },
    ["reload_empty3"] = {
        Source = {"reload_empty3_0", "reload_empty3_1", "reload_empty3_2"}, 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = slidelockgrab, t = 0.45 },
            { s = slidelockgrab, t = 0.61 },
            { s = slidelockgrab, t = 0.87 },
            { s = randspin, t = 1.05 },
            { s = randspin, t = 1.23 },
            { s = randspin, t = 1.55 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.64 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.12 },
            { s = randspin, t = 2.51 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.11 },
            { s = slidelockgrab, t = 0.66 },
            { s = slidelockgrab, t = 0.98 },
            { s = slidelockgrab, t = 1.38 },
            { s = randspin, t = 1.86 },
            { s = randspin, t = 2.31 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 2.68 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.75 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 2.9 },
            { s = randspin, t = 3.27 },
        },
        EjectAt = 2.76
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.04 },
            { s = slidelockgrab, t = 0.43 },
            { s = slidelockgrab, t = 0.87 },
            { s = slidelock, t = 1.15 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 1.25 },
            { s = randspin, t = 1.45 },
            { s = randspin, t = 1.61 },
            { s = randspin, t = 1.9 },
            { s = randspin, t = 2.38 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 2.51 },
            { s = randspin, t = 2.78 },
            { s =  slidelock, t = 3.12 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 3.35 },
            { s = randspin, t = 3.81 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = slidelockgrab, t = 0.41 },
            { s = slidelockgrab, t = 0.67 },
            { s = slidelock, t = 1.04 },
            { s =  pathgenericpistol .. "pm_slider_out.ogg", t = 1.06 },
            { s = "arc9_eft_shared/weap_round_out.ogg", t = 1.16 },
            { s =  pathgenericpistol .. "grach_slider_in.ogg", t = 1.34 },
            { s = randspin, t = 1.66 },
        },
        EjectAt = 1.15
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },
    ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle_empty",
    },

    ["inspect1"] = {
        Source = "inspect",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.39 },
            { s = randspin, t = 1.4 },
            { s = randspin, t = 2.92 },
        }
    },

    ["inspect_empty"] = {
        Source = "inspect_empty",
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.39 },
            { s = randspin, t = 1.4 },
            { s = randspin, t = 2.92 },
        }
    },

    ["inspect_mag_0"] = {
        Source = "magcheck0",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_0"] = {
        Source = "magcheck0_empty",
        EventTable = rst_magcheck,
    },
    ["inspect_mag_1"] = {
        Source = "magcheck1",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_1"] = {
        Source = "magcheck1_empty",
        EventTable = rst_magcheck,
    },
    ["inspect_mag_2"] = {
        Source = "magcheck2",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_2"] = {
        Source = "magcheck2_empty",
        EventTable = rst_magcheck,
    },
    ["inspect_mag_3"] = {
        Source = "magcheck3",
        EventTable = rst_magcheck,
    },
    ["inspect_empty_mag_3"] = {
        Source = "magcheck3_empty",
        EventTable = rst_magcheck,
    },

    ["inspect0"] = {
        Source = "checkchamber",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = pathgenericpistol .. "grach_slider_in.ogg", t = 0.62 },
            { s = pathgenericpistol .. "pm_slider_out.ogg", t = 1.23 },
            { s = randspin, t = 1.46 },
        }
    },
    
    ["firemode_1"] = {
        Source = "firemode1",
        EventTable = { { s = path .. "aps_fireselector.ogg", t = 0.25 } }
    },
    ["firemode_2"] = {
        Source = "firemode0",
        EventTable = { { s = path .. "aps_fireselector.ogg", t = 0.25 } }
    },
    ["firemode_1_empty"] = {
        Source = "firemode1_empty",
        EventTable = { { s = path .. "aps_fireselector.ogg", t = 0.35 } }
    },
    ["firemode_2_empty"] = {
        Source = "firemode0_empty",
        EventTable = { { s = path .. "aps_fireselector.ogg", t = 0.35 } }
    },

}