//Coals
furnace.setFuel(<tfc:ore/bituminous_coal>, 1600);
furnace.setFuel(<tfc:ore/lignite>, 800);
//Bowl
<tfc:ceramics/fired/bowl>.displayName = "Clay Bowl";
//Soot
mods.terrafirmacraft.Quern.addRecipe("Soot", <ore:charcoal>, <contenttweaker:soot>*4);
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
//Seared Brick
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:soil>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:seared:1>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("Seared_Brick", <tconstruct:soil>, <tconstruct:seared:1>, 1500, 3200);
//Casts
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_engineering_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_calculation_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_logic_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_silicon_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_engineering_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_calculation_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_logic_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_silicon_press>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("Engineering_Kiln", <contenttweaker:unfired_material_engineering_processor_press>, <contenttweaker:fired_material_engineering_processor_press>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Calculation_Kiln", <contenttweaker:unfired_material_calculation_processor_press>, <contenttweaker:fired_material_calculation_processor_press>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Logic_Kiln", <contenttweaker:unfired_material_logic_processor_press>, <contenttweaker:fired_material_logic_processor_press>,1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Silicon_Kiln", <contenttweaker:unfired_material_silicon_press>, <contenttweaker:fired_material_silicon_press>, 1500, 3200);

mods.terrafirmacraft.ClayKnapping.addRecipe("Engineering_Knap", <contenttweaker:unfired_material_engineering_processor_press>, 
																	"XX  X", 
																	"X X X", 
																	"XXXXX", 
																	"X X X", 
																	"X  XX");
																   
mods.terrafirmacraft.ClayKnapping.addRecipe("Calculation_Knap", <contenttweaker:unfired_material_calculation_processor_press>, 
																	"  X X", 
																	"  XX ", 
																	"XXXXX", 
																	" XX  ", 
																	"X X  ");

mods.terrafirmacraft.ClayKnapping.addRecipe("Logic_Knap", <contenttweaker:unfired_material_logic_processor_press>, 
																	"  X  ", 
																	"  XX ", 
																	"XXXXX", 
																	" XX  ", 
																	"  X  ");

mods.terrafirmacraft.ClayKnapping.addRecipe("Silicon_Knap", <contenttweaker:unfired_material_silicon_press>, 
																	"X X X", 
																	" XXX ", 
																	"XX XX", 
																	" XXX ", 
																	"X X X");

mods.terrafirmacraft.StoneKnapping.addRecipe("Stone_Rod", [<tconstruct:stone_stick>*2], ["all"],
																	"    X", 
																	"   X ", 
																	"  X  ", 
																	" X   ", 
																	"X    ");															   																   																   														   