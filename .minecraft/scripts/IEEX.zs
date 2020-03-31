import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import mods.immersiveengineering.Excavator;

Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Cassiterite");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Cinnabar");
Excavator.removeMineral("Galena"); 
Excavator.removeMineral("Gold");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Platinum");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Quarzite");
Excavator.removeMineral("Silt");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Uranium");

mods.immersiveengineering.Excavator.addMineral("Native Gold",20,0.1,["oreGoldRich","oreGoldNormal","oreGoldPoor","oreGoldSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Native Platinum",10,0.1,["orePlatinumRich","orePlatinumNormal","orePlatinumPoor","orePlatinumSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Native Silver",20,0.1,["oreSilverRich","oreSilverNormal","oreSilverPoor","oreSilverSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Cassiterite",20,0.1,["oreTinRich","oreTinNormal","oreTinPoor","oreTinSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Lead",10,0.1,["oreLeadRich","oreLeadNormal","oreLeadPoor","oreLeadSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Bismuth",10,0.1,["oreBismuthRich","oreBismuthNormal","oreBismuthPoor","oreBismuthSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Zinc",20,0.1,["oreZincRich","oreZincNormal","oreZincPoor","oreZincSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Ardite",10,0.1,["oreArditeRich","oreArditeNormal","oreArditePoor","oreArditeSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Osmium",10,0.1,["oreOsmiumRich","oreOsmiumNormal","oreOsmiumPoor","oreOsmiumSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Antimony",10,0.1,["oreAntimonyRich","oreAntimonyNormal","oreAntimonyPoor","oreAntimonySmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Aluminum",20,0.1,["oreAluminiumRich","oreAluminiumNormal","oreAluminiumPoor","oreAluminiumSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Wolframite",10,0.1,["oreTungstenRich","oreTungstenNormal","oreTungstenPoor","oreTungstenSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Cobalt",10,0.1,["oreCobaltRich","oreCobaltNormal","oreCobaltPoor","oreCobaltSmall","rock","gravel","sand"],[0.15, 0.1, 0.1, 0.2, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Native Copper",30,0.1,["oreCopperRich","oreCopperNormal","oreCopperPoor","oreCopperSmall","rock","gravel","sand"],[0.05, 0.1, 0.15, 0.25, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Native Iron",30,0.1,["oreIronRich","oreIronNormal","oreIronPoor","oreIronSmall","rock","gravel","sand"],[0.05, 0.1, 0.15, 0.25, 0.25, 0.1, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Crystaline Caverns",5,0.2,["crystalBlock","gemQuartz","crystalCertusQuartz","gemKaolinite","gemChipped","gemFlawed","gemNormal","gemFlawless","gemExquisite","sand"],[0.3,0.1, 0.1, 0.2, 0.035, 0.03, 0.02, 0.01, 0.005, 0.2],[0]);

mods.immersiveengineering.Excavator.addMineral("Radioactive Deposit",5,0.1,["gemPitchblende","gemThorianite","gemNaquadah","gemDilithium","chargedCertusQuartz","gemCinnabar","oreLeadPoor","oreLeadSmall","rock","gravel","sand"],[0.25, 0.1, 0.1, 0.1,0.1, 0.1, 0.1, 0.05, 0.05, 0.05, 0.9],[0]);

mods.immersiveengineering.Excavator.addMineral("Coal",50,0.1,["gemBituminous","gemLignite","gemPetrifiedWood","gemJet","rock","gravel","sand"],[0.2, 0.2, 0.1,  0.05, 0.2, 0.15, 0.1],[0]);

mods.immersiveengineering.Excavator.addMineral("Apatite",10,0.1,["gemApatite","gemSylvite","rock","gravel","sand"],[0.35,0.15, 0.1, 0.2, 0.3],[0]);

mods.immersiveengineering.Excavator.addMineral("Damp Ground",30,0.1,["blockPeat","clay","gravel","tfcSand"],[0.3, 0.3, 0.2, 0.2],[0]);

mods.immersiveengineering.Excavator.addMineral("Poor Rocky Ground",30,0.1,["rock","gravel","sand"],[0.5, 0.3, 0.2],[-1], true);

mods.immersiveengineering.Excavator.addMineral("Poor Hell Hole",50,0.1,["netherrack","soulSand","gemSulfur"],[0.6, 0.3,0.1],[-1]);