import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry.registerItemHeat;
import mods.terrafirmacraft.ItemRegistry.registerFood;

#<tfc:ceramics/fired/bowl>.displayName = "Clay Bowl";
#mods.terrafirmacraft.ItemRegistry.registerItemHeat(<minecraft:glass>, 0.35, 1300, true);
#mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:splashbottle>, 0.35, 1300, true);
#mods.terrafirmacraft.Anvil.addRecipe("Splash_Bottle", <minecraft:glass_bottle>, <contenttweaker:splashbottle>, 1, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
#<tfc:ore/bituminous_coal>.maxStackSize = 32;
#mods.terrafirmacraft.Heating.addRecipe("Seared_Brick", <tconstruct:soil>, <tconstruct:seared:1>, 1500, 3200);
<foodexpansion:itemcompressedflesh>.displayName = "Salted Flesh";
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible:10>);
mods.tconstruct.Drying.addRecipe(<tconstruct:edible:10>,<foodexpansion:itemcompressedflesh>, 6000);

//ItemRegistry.registerFood(IIngredient input, float[] nutrients, float calories, float water, float decay);
//Mc Bread
var FoodItem = <minecraft:bread> as IItemStack;
var	Carbs = 2.0 as double;
var	Fat = 0.5 as double;
var	Protien = 0.5 as double;
var	Vitamins = 0.0 as double;
var	Minerals = 0.0 as double;
var Calories = 0.6 as double;
var Water = 0.0 as double;
var Decay = 0.8 as double;
registerItemHeat(FoodItem, 1, 480, false);
registerFood(FoodItem, [Carbs,Fat,Protien,Vitamins,Minerals], Calories, Water, Decay);

//Mc Apple
FoodItem = <minecraft:apple>;
Carbs = 0.5;
Fat = 0.0;
Protien = 0.0;
Vitamins = 0.5;
Minerals = 0.0;
Calories = 0.4;
Water = 5.0;
Decay = 3.75;
registerFood(FoodItem, [Carbs,Fat,Protien,Vitamins,Minerals], Calories, Water, Decay);

/*
//
FoodItem = IItemStack;
Carbs = float;
Fat = float;
Protien = float;
Vitamins = float;
Minerals = float;
Calories = float;
Water = float;
Decay = float;
registerItemHeat(FoodItem, 1, 480, false);
registerFood(FoodItem, [Carbs,Fat,Protien,Vitamins,Minerals], Calories, Water, Decay);
*/
