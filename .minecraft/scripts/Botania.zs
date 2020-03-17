import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry; 
import mods.botania.PureDaisy;
import mods.botaniatweaks.Agglomeration;

//Hemp Seeds
mods.botania.Apothecary.addRecipe(<immersiveengineering:seed>,[<tfc:crop/product/jute_fiber>,<tfc:straw>,<immersiveengineering:material>]);
//Belts
recipes.remove(<botania:travelbelt>);
recipes.addShaped(<botania:travelbelt>,[
	[<botania:rune:2>,null,null],
	[null,<tfctech:wiredraw/leather_belt>,null],
	[<botania:manaresource>,null,<botania:rune:3>]]);
recipes.remove(<botania:knockbackbelt>);
recipes.addShaped(<botania:knockbackbelt>,[
	[<botania:rune:1>,null,null],
	[null,<tfctech:wiredraw/leather_belt>,null],
	[<botania:manaresource>,null,<botania:rune:2>]]);
//Leather
mods.botania.ManaInfusion.removeRecipe(<minecraft:leather>);
mods.botania.ManaInfusion.addAlchemy(<tfc:hide/prepared/medium>, <minecraft:rotten_flesh>, 1000);
//Mana Steel
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <tfc:metal/ingot/pig_iron>, 10000);
//Hand of Ender
recipes.remove(<botania:enderhand>);
recipes.addShaped(<botania:enderhand>,[
	[<botania:manaresource:1>,null,<ore:dustObsidian>],
	[null,<minecraft:ender_chest>,null],
	[<ore:dustObsidian>,null,<contenttweaker:leatherglove>]]);
//Reasonable Terra Steal	
Agglomeration.removeDefaultRecipe();
Agglomeration.addRecipe(<botania:manaresource:4>, 	[<tfc:metal/ingot/antimony>,<botania:manaresource:1>, <botania:manaresource>,<ore:gemChipped>]);
Agglomeration.addRecipe(<botania:manaresource:4>*2, [<tfc:metal/ingot/antimony>,<botania:manaresource:1>, <botania:manaresource>,<ore:gemFlawed>]);
Agglomeration.addRecipe(<botania:manaresource:4>*3, [<tfc:metal/ingot/antimony>,<botania:manaresource:1>, <botania:manaresource>,<ore:gemNormal>]);
Agglomeration.addRecipe(<botania:manaresource:4>*4, [<tfc:metal/ingot/antimony>,<botania:manaresource:1>, <botania:manaresource>,<ore:gemFlawless>]);
Agglomeration.addRecipe(<botania:manaresource:4>*5, [<tfc:metal/ingot/antimony>,<botania:manaresource:1>, <botania:manaresource>,<ore:gemExquisite>]);
//Mana Cocktail Glass Rename
<extrabotany:material:4>.displayName = "Drinking Glass";
mods.jei.JEI.addDescription(<extrabotany:manadrink>,"I've always wondered what would happen if I scooped up some mana and tried to drink it...");
//Fried Chicken Rename
<extrabotany:friedchicken>.displayName = "Mana Fried Chicken";
//Pouch
recipes.remove(<botania:flowerbag>);
recipes.addShapeless(<botania:flowerbag>, [<contenttweaker:leatherbag>,<ore:Petals>]);
//Mana Steel Shovel
recipes.remove(<botania:manasteelshovel>);
recipes.addShaped(<botania:manasteelshovel>,[
	[<contenttweaker:manasteel_shovel_head>],
	[<botania:manaresource:3>]]);
//TFC Conversions 
mods.botania.PureDaisy.addRecipe(<ore:tfcSand>,<minecraft:sand>);
mods.botania.PureDaisy.addRecipe(<tfc:thatch>,<quark:thatch>);
mods.botania.PureDaisy.addRecipe(<ore:tfcDirt>,<minecraft:dirt>);
mods.botania.PureDaisy.addRecipe(<ore:tfcGrass>,<minecraft:grass>);
mods.botania.PureDaisy.addRecipe(<ore:tfcCobblestone>,<minecraft:cobblestone>);
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
