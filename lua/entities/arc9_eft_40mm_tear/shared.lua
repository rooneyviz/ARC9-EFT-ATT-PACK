AddCSLuaFile()



ENT.PrintName  = "40x46 M651 Projectile"

local modela   = "models/weapons/arc9/darsu_eft/40x46_m381.mdl"
local radius   = 3.4 * 2
local damgae   = 199
local fusetime = 0.04


ENT.ExplodeSound = Sound("CSGO.Smoke.Explode")

ENT.Type 				= "anim"
ENT.Base 				= "base_entity"
ENT.Spawnable 			= false
ENT.WithinSmoke = {}

ENT.IsProjectile = true
ENT.SmokeTrail = true
ENT.SmokeTrailMat = "effects/fas_smoke_beam"
ENT.SmokeTrailSize = 2
ENT.SmokeTrailTime = 0.1
function ENT:GetDamageType()
	return DMG_NERVEGAS
end

if CLIENT then    
    function ENT:Draw()
        self:DrawModel()
    end
else
    function ENT:Initialize()
        self:SetModel(modela)

        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)

        local phys = self:GetPhysicsObject()
        -- self:NextThink(CurTime() + 0.1)

        if phys:IsValid() then
            phys:Wake()
            phys:SetMass(1)
            phys:SetDamping(-0.06, 10)
        end

        self.radius = radius
        self.damage = damgae
        self.FuseTime = CurTime() + fusetime

        self.DestroyTime = CurTime() + 20
        

        if self.SmokeTrail then
            util.SpriteTrail(self, 0, Color( 255 , 255 , 255 ), false, self.SmokeTrailSize, 0, self.SmokeTrailTime, 1 / self.SmokeTrailSize * 0.5, self.SmokeTrailMat)
        end
    end

    function ENT:Think()
        self:NextThink(CurTime() + 0.1)
        if CurTime() > self.DestroyTime then
            self:Remove()
        end
    end
	function idkhowtocode()
		local tr = Entity( 1 ):GetEyeTrace()
		if ( bit.band( util.PointContents( tr.Entity:GetPos() ), CONTENTS_WATER ) == CONTENTS_WATER ) then
			self:Remove()
		end 
	end
    function ENT:PhysicsCollide(data, phys)
        timer.Simple(0,function()
            if IsValid(self) then
                if CurTime() > self.FuseTime then
                    self:Explode()
					self:FireBullets({Attacker = self:GetOwner(), Damage = self.damage, Force = 16, HullSize = 16, Tracer = false, Dir = self:GetAngles():Forward(), Src = self:GetPos(), IgnoreEntity = self, AmmoType = 9})

                else
				
                    self:FireBullets({Attacker = self:GetOwner(), Damage = self.damage, Force = 16, HullSize = 16, Tracer = false, Dir = self:GetAngles():Forward(), Src = self:GetPos(), IgnoreEntity = self, AmmoType = 9})
                    self:Remove()
                    -- self.DUD = true 
                end
            end
        end)
    end

    function ENT:Explode()
        -- if self.DUD then return end
        	    local pos= self:GetPos()

        if !IsValid(self:GetOwner()) then
			ParticleEffect("extinguish_fire", self:GetPos(), self:GetAngles())
            self:Remove()
            return
        end

        SafeRemoveEntityDelayed(self, self.SmokeTrailTime)
        
        util.ScreenShake(self:GetPos(), 10, 1, 2, 1000)

        -- local effectdata = EffectData() -- hl2
        -- effectdata:SetOrigin(self:GetPos())
        -- effectdata:SetFlags(4)
        -- util.Effect("Explosion", effectdata)
if SERVER then
		idkhowtocode()
        if not self:IsValid() then return end
        self:SetNWBool("IsDetonated", true)
        self:EmitSound(self.ExplodeSound)
        local gas = EffectData()
        gas:SetOrigin(pos)
        gas:SetEntity(self:GetOwner()) --i dunno, just use it!
        util.Effect("csgo_nade_smokenade", gas)
    end

if self.ParticleCreated ~= true then
        ParticleEffectAttach("explosion_child_smoke03e", PATTACH_ABSORIGIN_FOLLOW, self, 0)
        ParticleEffectAttach("explosion_child_core06b", PATTACH_POINT_FOLLOW, self, 0)
        ParticleEffectAttach("explosion_child_smoke07b", PATTACH_ABSORIGIN_FOLLOW, self, 0)
        ParticleEffectAttach("explosion_child_smoke07c", PATTACH_POINT_FOLLOW, self, 0)
        ParticleEffectAttach("explosion_child_distort01c", PATTACH_POINT_FOLLOW, self, 0)
        self.ParticleCreated = true
		
		for k, v in pairs(ents.FindInSphere(self:GetPos(), 155)) do
            if (v:GetClass() == "arc9_gsr_fire_1" or v:GetClass() == "arc9_gsr_fire_2") and v:IsValid() then
                v:SetNWBool("extinguished", true)
                ParticleEffect("extinguish_fire", self:GetPos(), self:GetAngles())
            end
			idkhowtocode()

            if !self.WithinSmoke[v] then
                if v:IsPlayer() then
                    self.WithinSmoke[v] = true
                    v:SetNoTarget(true)
  			        v:TakeDamage(25)

                elseif v:IsNPC() or v:IsNextBot() then
                    v:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR)
                    v:TakeDamage(25)

                    v.OldProfiecency = v:GetCurrentWeaponProficiency()
                end
            end

        end

    end
    self:SetMoveType(MOVETYPE_NONE)

        self:Remove()
    end


    function ENT:Use(ply, caller)
    end
end

function ENT:GetDamageType()
	return DMG_NERVEGAS
end

function ENT:OnRemove()
    for ent, _ in pairs(self.WithinSmoke or {}) do
        if IsValid(ent) then
            if ent:IsPlayer() then
                ent:RemoveFlags(FL_NOTARGET)
            else
                ent:SetCurrentWeaponProficiency(ent.OldProfiecency or WEAPON_PROFICIENCY_AVERAGE)
            end
        end
    end
end