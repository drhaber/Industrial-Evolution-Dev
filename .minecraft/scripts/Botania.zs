import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry; 
import mods.botania.PureDaisy;

//Mana Steel
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <tfc:metal/ingot/pig_iron>, 10000);
//Hand of Ender
recipes.remove(<botania:enderhand>);
recipes.addShaped(<botania:enderhand>,[
	[<botania:manaresource:1>,null,<ore:dustObsidian>],
	[null,<minecraft:ender_chest>,null],
	[<ore:dustObsidian>,null,<contenttweaker:leatherglove>]]);
//Pouch
recipes.remove(<botania:flowerbag>);
recipes.addShapeless(<botania:flowerbag>, [<contenttweaker:leatherbag>,<ore:Petals>]);
//Bowl of Water
recipes.addShapeless(<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),[<minecraft:bowl>,<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>)]);
mods.inworldcrafting.FluidToItem.transform(<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <liquid:water>, [<minecraft:bowl>], true);
mods.inworldcrafting.FluidToItem.transform(<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <liquid:fresh_water>, [<minecraft:bowl>], true);
mods.inworldcrafting.FluidToItem.transform(<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <liquid:salt_water>, [<minecraft:bowl>], true);
mods.jei.JEI.addDescription(<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),"Seems only some water containers can handle the magic of the Apothecary.");
mods.jei.JEI.addDescription(<botania:altar>,"Seems only some water containers can handle the magic of the Apothecary.");
//TFC Conversions 
mods.botania.PureDaisy.addRecipe(<ore:tfcSand>,<minecraft:sand>);
mods.botania.PureDaisy.addRecipe(<tfc:thatch>,<quark:thatch>);
//AE2 Conversions
mods.botania.ManaInfusion.addInfusion(<appliedenergistics2:sky_stone_block>, <tconstruct:seared>, 10000);
#mods.botania.ManaInfusion.addInfusion(<contenttweaker:potion_bottle_lingering>, <contenttweaker:splashbottle>, 1000);
//Catalyst
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>,[
	[<botania:livingrock>,<ore:dustGlowstone>,<botania:livingrock>],
	[<ore:dustGlowstone>,<opencomputers:material:13>,<ore:dustGlowstone>],
	[<botania:livingrock>,<ore:dustGlowstone>,<botania:livingrock>]]);
//Vanilla Saplings
mods.botania.ManaInfusion.addInfusion(<minecraft:sapling>,<tfc:wood/sapling/oak>,1000);
mods.botania.ManaInfusion.addInfusion(<minecraft:sapling:1>,<tfc:wood/sapling/spruce>,1000);
mods.botania.ManaInfusion.addInfusion(<minecraft:sapling:2>,<tfc:wood/sapling/birch>,1000);
mods.botania.ManaInfusion.addInfusion(<minecraft:sapling:3>,<tfc:wood/sapling/palm>,1000);
mods.botania.ManaInfusion.addInfusion(<minecraft:sapling:4>,<tfc:wood/sapling/acacia>,1000);
mods.botania.ManaInfusion.addInfusion(<minecraft:sapling:5>,<tfc:wood/sapling/blackwood>,1000);
