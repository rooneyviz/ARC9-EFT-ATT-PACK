local ATT = {}

///////////////////////////////////////      double aksu hg

local ATT = {}



ATT = {}

ATT.PrintName = "Glock 47 9x19 MOS slide"
ATT.CompactName = "G MOS"
ATT.Icon = Material("entities/eft_glock_attachments/slide_mos.png", "mips smooth")
ATT.Description = [[The Glock 47 MOS (Modular Optic System) slide designed to replace or be an alternative slide for the Glock 19 9x19 pistol. Manufactured by Glock For The United States Customs and Border Protection (CBP)enforcement 
"Welcome to the United States
...
Are you coming from Mexico?"- From Soy De Rancho by El Komander.]]

-- ATT.VisualRecoilMult = 0.99
ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }

ATT.HasSlide = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g19_rec","eft_g19_rec_backplate)}

ATT.Attachments = {
    {
        PrintName = "Front sight",
        Category = "eft_g17_fs",
        Pos = Vector(0, 0, -0.02),
        Icon_Offset = Vector(4.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_g17_rs",
        Pos = Vector(0, -0.225, 0),
        Icon_Offset = Vector(-2, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Compensator",
        Category = "eft_g17_g4",
        Pos = Vector(0, 5, 0.6),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Mount",
        Category = "eft_g17_tangodown",
        Pos = Vector(0, -0.92, -0.15),
        Icon_Offset = Vector(0.5, 0, 0.3),
        Ang = Angle(0, -90, 0),
    },
}


ARC9.LoadAttachment(ATT, "eft_rec_g47_mos")

ATT = {}

ATT.PrintName = "Glock 47 9x19 barrel"
ATT.CompactName = "G17"
ATT.Icon = Material("entities/eft_glock_attachments/barrel.png", "mips smooth")
ATT.Description = [[A standard barrel designed to replace or be an alternative slide for the Glock 19 9x19 pistol. Manufactured by Glock For the United States Customs and Border Protection (CBP) 
"Siempre estoy listo para cruzar
Polvo, ruedas y también cristal"- From PRC by Peso Pluma.]]

ATT.EFTErgoAdd = -5
ATT.CustomCons = { Ergonomics = "-5" }
ATT.VisualRecoilMult = 0.97
ATT.RecoilMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 0.97

ATT.HasBarrel = true 
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_g47_barrel"}


ARC9.LoadAttachment(ATT, "eft_barrel_g47_std")


