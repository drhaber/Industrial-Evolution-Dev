//Bowl
<tfc:ceramics/fired/bowl>.displayName = "Clay Bowl";
//Glass_Bottle
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<minecraft:glass>, 0.35, 1300, true);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<minecraft:glass_bottle>, 0.35, 1300, true);
#mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:splashbottle>, 0.35, 1300, true);
mods.terrafirmacraft.Anvil.addRecipe("Glass_Bottle", <minecraft:glass>, <minecraft:glass_bottle>, 1, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
#mods.terrafirmacraft.Anvil.addRecipe("Splash_Bottle", <minecraft:glass_bottle>, <contenttweaker:splashbottle>, 1, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
//TFC Coal Stack Size
<tfc:ore/bituminous_coal>.maxStackSize = 32;
//Silicon
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:250>, 0.35, 1600 , false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:300>, 0.35, 1600 , false);
mods.terrafirmacraft.Heating.addRecipe("Primitive_Silicon", <projectred-core:resource_item:250>, <projectred-core:resource_item:300>, 1300, 1600 );
