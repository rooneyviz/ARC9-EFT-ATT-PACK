ENT.Type = "anim"
ENT.Base = "base_entity"
ENT.PrintName = "Flare Round"
ENT.Author = ""
ENT.Information = ""
ENT.Spawnable = false
ENT.AdminSpawnable = true

ENT.Model ="models/weapons/arc9/darsu_eft/40x46_m381.mdl"

ENT.FuseTime = 60
ENT.ArmTime = 0
AddCSLuaFile()
local mult1270 = GetConVar("arc9_eft_mult_shotgun"):GetFloat() or 0.5

function ENT:Initialize()
    if SERVER then
        self:SetModel( self.Model )
        self:SetMoveType( MOVETYPE_VPHYSICS )
        self:SetSolid( SOLID_VPHYSICS )
        self:PhysicsInit( SOLID_VPHYSICS )
        self:DrawShadow( true )
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
            phys:SetBuoyancyRatio(0)
        end

        self:SetCollisionGroup(COLLISION_GROUP_PROJECTILE)
    end

    self.kt = CurTime() + self.FuseTime
    self.at = CurTime() + self.ArmTime
	self:SetGravity( 0.1 )
end

function ENT:PhysicsCollide(data, physobj)
    --if self.Collided then return end
    if IsValid(data.HitEntity) then
        --self.Collided = true
        local delta = math.Clamp((self.kt - CurTime()) / self.FuseTime, 0.1, 1)
        if delta <= 0.1 then return end
        
        if data.HitEntity:IsPlayer() then
            data.HitEntity:Ignite( delta * 5 )
            data.HitEntity:TakeDamage( 25*   3 * mult1270)
        
        elseif data.HitEntity:GetName(npc_helicopter) then
            data.HitEntity:TakeDamage( 2500 *   2.4 * mult1270)
		 else
  		     data.HitEntity:TakeDamage( 25*   2.4 * mult1270)
             data.HitEntity:Ignite( delta * 15 )

        end
		
    
    end
	
  end

function ENT:Think()
    if SERVER then
        if CurTime() >= self.kt then
            self:Remove()
        end
    elseif CLIENT then
        local emitter = ParticleEmitter(self:GetPos())
        local delta = math.Clamp((self.kt - CurTime())/self.FuseTime, 0.1, 1)


        local smoke = emitter:Add("particle/particle_smokegrenade", self:GetPos())
        smoke:SetVelocity( VectorRand() * 100 )
        smoke:SetGravity( Vector(math.Rand(-5, 5), math.Rand(-5, 5), math.Rand(60, 85)) )
        smoke:SetDieTime( math.Rand(1,3) )
        smoke:SetStartAlpha( 255 * delta )
        smoke:SetEndAlpha( 0 )
        smoke:SetStartSize( 5 )
        smoke:SetEndSize( 100 )
        smoke:SetRoll( math.Rand(-180, 180) )
        smoke:SetRollDelta( math.Rand(-0.2,0.2) )
        smoke:SetColor( 255, 0, 0 )
        smoke:SetAirResistance( 5 )
        smoke:SetPos( self:GetPos() )
        smoke:SetLighting( True )
        emitter:Finish()
    end
end

function ENT:Detonate()
    self:Remove()
end

function ENT:Draw()
    if CLIENT then
        local delta = math.Clamp((self.kt - CurTime()) / self.FuseTime, 0.1, 1)
        local minsize = 30 * delta
        local maxsize = 1200 * delta
        local light = DynamicLight(self:EntIndex())
        if (light) then
            light.Pos = self:GetPos()
            light.r = 255
            light.g = 0
            light.b = 0
            light.Brightness = 6
            light.Decay = 3
            light.Size = 2
            light.DieTime = CurTime() + 0.2
        end
        cam.Start3D() -- Start the 3D function so we can draw onto the screen.
            render.SetMaterial( Material("effects/blueflare1") ) -- Tell render what material we want, in this case the flash from the gravgun
            render.DrawSprite( self:GetPos(), math.random(minsize, maxsize), math.random(minsize, maxsize), Color(255 * delta, 10, 10) ) -- Draw the sprite in the middle of the map, at 16x16 in it's original colour with full alpha.
        cam.End3D()
    end
end