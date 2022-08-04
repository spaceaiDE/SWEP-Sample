AddCSLuaFile()

if ( SERVER ) then
    SWEP.Weight = 5
    SWEP.AutoSwitchTo = false
    SWEP.AutoSwitchFrom = false
    util.AddNetworkString("datapad:open")
end

if ( CLIENT ) then
    SWEP.PrintName = "Shock Trooper Datapad"
    SWEP.Slot = 6
    SWEP.SlotPos = 1
    SWEP.DrawAmmo = false
    SWEP.DrawCrosshair = false
end

SWEP.Category = "Datapads"

SWEP.Spawnable = true
SWEP.AdminSpawnable = false

SWEP.Base = "weapon_base"
SWEP.ViewModel = "models/joes/c_datapad.mdl"
SWEP.WorldModel = "models/joes/w_datapad.mdl"

SWEP.Primary.ClipSize		  = -1
SWEP.Primary.Damage			  = -1
SWEP.Primary.DefaultClip   = -1
SWEP.Primary.Automatic     = false
SWEP.Primary.Ammo          = "none"

SWEP.Secondary.ClipSize		  = -1
SWEP.Secondary.Damage			  = -1
SWEP.Secondary.DefaultClip   = -1
SWEP.Secondary.Automatic     = false
SWEP.Secondary.Ammo          = "none"

SWEP.UseHands = true

function SWEP:Initialize()
    self:SetHoldType( "pistol" )
end

function SWEP:PrimaryAttack()
    local ply = self.Owner
    net.Start("datapad:open")
    net.Send(ply)
end