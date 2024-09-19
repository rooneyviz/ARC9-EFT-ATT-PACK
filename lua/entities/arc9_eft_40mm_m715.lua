AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

-- if CLIENT then killicon.Add("arc9_eft_grenade_rgn", "vgui/killicons/arc9_eft_rgn", Color(255, 255, 255)) end

ENT.PrintName  = "M715 smoke projectile"
ENT.Model = "models/weapons/arc9/darsu_eft/40x46_m386.mdl"
ENT.StartTime = 1
ENT.LifeTime = 266
ENT.EmitTime = 90
ENT.Drag = false
ENT.DragCoefficient = 2
ENT.dmg = 199
ENT.dmgradiusminM = 0
ENT.dmgradiusmaxM = 0
ENT.shakeradiusM = 0
ENT.contusionLength = 0

ENT.shrapnelcount = 0
ENT.shrapneldmg = 0
ENT.particle = "grenade_thick_smoke"
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

ENT.ExplodeOnImpact = false
local alreadydonea = 0
local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_smoke_impact1.ogg", path .. "grenade_smoke_impact2.ogg", path .. "grenade_smoke_impact3.ogg" }

ENT.closeSound = path .. "grenade_smoke_start.ogg"
ENT.loopSound = path .. "grenade_smoke_loop.ogg"
ENT.loopendSound = path .. "grenade_smoke_end.ogg"

ENT.nextloopsound = 999999999999

function ENT:Think()
    if SERVER and self.SpawnTime + self.LifeTime < CurTime() then 
        SafeRemoveEntity(self) 
    end
    
    if SERVER and self.nextloopsound < CurTime() then 
        if (self.SpawnTime + self.EmitTime - CurTime()) > 0 then
            self:EmitSound(self.loopSound, 60, 100, 1, nil, nil, 0)
            self.nextloopsound = CurTime() + 1.15
        else
            self:EmitSound(self.loopendSound, 60, 100, 1, nil, nil, 0)
            self.nextloopsound = 9999999999
        end
    end

    if self.Defused then return end

    if self.StartTime > 0 and self.SpawnTime + self.StartTime < CurTime() then
        self:StartSmoke()

        return
    end

end

if SERVER then
    function ENT:PhysicsCollide(data, phys)
        timer.Simple(0, function()
            if IsValid(self) then
				if self.alreadydonea == 0 then
                    self:FireBullets({Attacker = self:GetOwner(), Damage = self.dmg, Force = 16, HullSize = 16, Tracer = false, Dir = self:GetAngles():Forward(), Src = self:GetPos(), IgnoreEntity = self, AmmoType = 9})
					self.Drag = true
					self.alreadydonea = 1
				end

        	

			end
        end)
	    local delta = math.Clamp(((CurTime() + 60) - CurTime()) / 60, 0.1, 1)
		if data.HitEntity:IsPlayer() then
           	// data.HitEntity:Ignite( delta * 5 )
           	 data.HitEntity:TakeDamage( 25*   3 * mult1270)
		else
			//data.HitEntity:Ignite( delta * 2.5 )
           	 data.HitEntity:TakeDamage( 50*  3 * mult1270)
			end
    end
end

PrecacheParticleSystem( "smoke_exhaust_01" )

function ENT:StartSmoke()
    self.Defused = true

    if CLIENT then
        table.insert(ARC9EFT.Smokeslist, self)

        ParticleEffectAttach( "smoke_exhaust_01", PATTACH_ABSORIGIN_FOLLOW, self, 1 )
        timer.Simple(self.EmitTime, function()
            if IsValid(self) then self:StopParticles() end
        end)
    else
        self:EmitSound(self.closeSound, 60, 100, 1, nil, nil, 0)
        self.nextloopsound = CurTime() + 0.9

        local fear = ents.Create("ai_sound")
        fear:SetKeyValue("soundtype", 8)
        fear:SetKeyValue("volume", 256)
        fear:SetKeyValue("duration", 80)
        fear:SetOwner(self.Owner)
        fear:SetPos(self:GetPos())
        fear:Fire("EmitAISound" , "", 0.82)
        fear:Fire("kill", "", 6)

        local exp = ents.Create("env_smoketrail")
        exp:SetKeyValue("startsize", "11100")
        exp:SetKeyValue("endsize", "100000")
        exp:SetKeyValue("spawnradius", "128")
        exp:SetKeyValue("opacity", "1")
        exp:SetKeyValue("lifetime", "" .. self.EmitTime)
        exp:SetKeyValue("spawnrate", "4")
        exp:SetKeyValue("emittime", "" .. self.EmitTime)
        exp:SetKeyValue("maxspeed", "1")
        exp:SetKeyValue("maxdirectedspeed", "5")
        exp:SetKeyValue("startcolor", "0 130 0")
        exp:SetKeyValue("endcolor", "30 255 30")
        exp:SetPos(self:GetPos())
        exp:SetParent(self)
        exp:Spawn()
        exp:Fire("kill", "", self.EmitTime + 1)
    end
end

if CLIENT then
    function ENT:Initialize()
        self.SpawnTime = CurTime()
        self.alreadydone = 0

        ParticleEffectAttach("port_smoke_heavy", PATTACH_ABSORIGIN_FOLLOW, self, 1) -- flash
    end
end