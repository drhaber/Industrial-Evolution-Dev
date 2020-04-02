import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;

//Ceramics
recipes.removeShapeless(<ceramics:unfired_clay:4>, [<minecraft:clay_ball>], true);
recipes.addShaped(<ceramics:unfired_clay:4>,[
	[null,<ore:dustKaolinite>,null],
	[<ore:dustKaolinite>,<ore:clay>,<ore:dustKaolinite>],
	[null,<ore:dustKaolinite>,null]]);

furnace.remove(<ceramics:unfired_clay:5>);
furnace.remove(<ceramics:porcelain>);
furnace.remove(<ceramics:faucet>);
furnace.remove(<ceramics:channel>);
furnace.remove(<ceramics:porcelain_barrel>);
furnace.remove(<ceramics:porcelain_barrel_extension>);

ItemRegistry.registerItemHeat(<ceramics:unfired_clay:4>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:unfired_clay:5>, 1, 1599, false); #porcelain brick

ItemRegistry.registerItemHeat(<ceramics:clay_soft>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:porcelain>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:unfired_clay:6>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:faucet>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:unfired_clay:7>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:channel>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:clay_barrel_unfired:2>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:porcelain_barrel>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:clay_barrel_unfired:3>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:porcelain_barrel_extension>, 1, 1599, false); 

Heating.addRecipe("porcelain_brick", <ceramics:unfired_clay:4>, <ceramics:unfired_clay:5>, 1350, 1599);
Heating.addRecipe("porcelain_block", <ceramics:clay_soft>, <ceramics:porcelain>, 1350, 1599);

Heating.addRecipe("porcelain_faucet", <ceramics:unfired_clay:6>, <ceramics:faucet>, 1350, 1599);
Heating.addRecipe("porcelain_channel", <ceramics:unfired_clay:7>, <ceramics:channel>, 1350, 1599);

Heating.addRecipe("porcelain_barrel", <ceramics:clay_barrel_unfired:2>, <ceramics:porcelain_barrel>, 1350, 1599);
Heating.addRecipe("porcelain_barrel_ext", <ceramics:clay_barrel_unfired:3>, <ceramics:porcelain_barrel_extension>, 1350, 1599);


recipes.remove(<ceramics:unfired_clay>);
recipes.remove(<ceramics:unfired_clay:1>);
recipes.remove(<ceramics:unfired_clay:8>);
recipes.remove(<ceramics:clay_barrel_unfired>);
recipes.remove(<ceramics:clay_barrel_unfired:1>);

mods.terrafirmacraft.ClayKnapping.addRecipe("bucket_Knap",<ceramics:unfired_clay>, 
																	"X   X",
																	"X   X",
																	"X   X",
																	"XX XX",
																	" XXX "); 
mods.terrafirmacraft.ClayKnapping.addRecipe("shears_Knap",<ceramics:unfired_clay:1>, 
																	"XX XX",
																	"XX XX",
																	"X   X",
																	" X X ",
																	"  X  ");  
mods.terrafirmacraft.ClayKnapping.addRecipe("plate_Knap",<ceramics:unfired_clay:8>, 
																	"     ",
																	" XXX ",
																	" XXX ",
																	" XXX ",
																	"     ");

mods.terrafirmacraft.ClayKnapping.addRecipe("barrel_Knap",<ceramics:clay_barrel_unfired>, 
																	"     ",
																	"X   X",
																	"X   X",
																	"X   X",
																	"XXXXX");

mods.terrafirmacraft.ClayKnapping.addRecipe("barrel_ext_Knap",<ceramics:clay_barrel_unfired:1>, 
																	"X   X",
																	"X   X",
																	"X   X",
																	"X   X",
																	"X   X");

ItemRegistry.registerItemHeat(<ceramics:unfired_clay>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_bucket>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:unfired_clay:1>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_shears>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:unfired_clay:8>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:unfired_clay:9>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:clay_barrel_unfired>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_barrel>, 1, 1599, false); 

ItemRegistry.registerItemHeat(<ceramics:clay_barrel_unfired:1>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_barrel:1>, 1, 1599, false); 

furnace.remove(<ceramics:clay_bucket>);
furnace.remove(<ceramics:clay_shears>);
furnace.remove(<ceramics:unfired_clay:9>);
furnace.remove(<ceramics:clay_barrel>);
furnace.remove(<ceramics:clay_barrel:1>);

mods.terrafirmacraft.Heating.addRecipe("bucket_Kiln", <ceramics:unfired_clay>, <ceramics:clay_bucket>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("shears_Kiln", <ceramics:unfired_clay:1>, <ceramics:clay_shears>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("plate_Kiln", <ceramics:unfired_clay:8>, <ceramics:unfired_clay:9>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("barrel_Kiln", <ceramics:clay_barrel_unfired>,<ceramics:clay_barrel>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("barrel_ext_Kiln", <ceramics:clay_barrel_unfired:1>, <ceramics:clay_barrel:1>, 1500, 3200);

//Armor

recipes.remove(<ceramics:clay_helmet>);
recipes.remove(<ceramics:clay_chestplate>);
recipes.remove(<ceramics:clay_leggings>);
recipes.remove(<ceramics:clay_boots>);

recipes.remove(<ceramics:clay_helmet_raw>);
recipes.remove(<ceramics:clay_chestplate_raw>);
recipes.remove(<ceramics:clay_leggings_raw>);
recipes.remove(<ceramics:clay_boots_raw>);

mods.terrafirmacraft.ClayKnapping.addRecipe("helmet_Knap",<ceramics:clay_helmet_raw>, 
																	"XXXXX",
																	"X   X",
																	"X   X",
																	"     ",
																	"     ");
mods.terrafirmacraft.ClayKnapping.addRecipe("chestplate_Knap",<ceramics:clay_chestplate_raw>, 
																	"X   X",
																	"XXXXX",
																	"XXXXX",
																	"XXXXX",
																	"XXXXX");
mods.terrafirmacraft.ClayKnapping.addRecipe("leggings_Knap",<ceramics:clay_leggings_raw>, 
																	"XXXXX",
																	"XX XX",
																	"XX XX",
																	"XX XX",
																	"XX XX");
mods.terrafirmacraft.ClayKnapping.addRecipe("boots_Knap",<ceramics:clay_boots_raw>, 
																	"XX  ",
																	"XX  ",
																	"XX  ",
																	"XXXX ",
																	"XXXXX");

ItemRegistry.registerItemHeat(<ceramics:clay_helmet_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_helmet>, 1, 1599, false);
Heating.addRecipe("helmet_Kiln", <ceramics:clay_helmet_raw>, <ceramics:clay_helmet>, 1500, 3200);

ItemRegistry.registerItemHeat(<ceramics:clay_chestplate_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_chestplate>, 1, 1599, false);
Heating.addRecipe("chestplate_bar_Kiln", <ceramics:clay_chestplate_raw>, <ceramics:clay_chestplate>, 1500, 3200);

ItemRegistry.registerItemHeat(<ceramics:clay_leggings_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_leggings>, 1, 1599, false);
Heating.addRecipe("leggings_bar_Kiln", <ceramics:clay_leggings_raw>, <ceramics:clay_leggings>, 1500, 3200);

ItemRegistry.registerItemHeat(<ceramics:clay_boots_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<ceramics:clay_boots>, 1, 1599, false);
Heating.addRecipe("boots_bar_Kiln", <ceramics:clay_boots_raw>, <ceramics:clay_boots>, 1500, 3200);
