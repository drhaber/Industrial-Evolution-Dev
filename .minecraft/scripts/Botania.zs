import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

  
import mods.botania.PureDaisy;

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