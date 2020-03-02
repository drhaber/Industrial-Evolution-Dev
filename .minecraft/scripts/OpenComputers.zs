import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.tfctech.WireDrawing;


//Circuit Boards
WireDrawing.addRecipe("glass_wire", <ore:blockGlass>, 3, <contenttweaker:glass_wire>*4, 0xEDE7D8);
mods.terrafirmacraft.Loom.addRecipe("glass_fibre", <contenttweaker:glass_wire>*24,<contenttweaker:glass_fibre>*6, 12, "contenttweaker:items/glass_fibre.png");

recipes.remove(<opencomputers:material:2>);
furnace.remove(<opencomputers:material:3>);
recipes.remove(<opencomputers:material:4>);
recipes.addShaped(<opencomputers:material:2>,[
	[<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>],
	[<ore:slimeballGreen>,<ore:slimeballGreen>,<ore:slimeballGreen>],
	[<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>]]);
RollingMachine.addShapeless(<opencomputers:material:3>, [<opencomputers:material:2>], 300);
mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:4>, <opencomputers:material:3>, false, <tfctech:metal/gold_strip>,<tfctech:metal/copper_strip>);
//Transistor
recipes.remove(<opencomputers:material:6>);
recipes.addShaped(<opencomputers:material:6>,[
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>],
	[null,<ore:waferSilicon>,null],
	[null,<minecraft:redstone>,null]]);
//Micro Chips
recipes.remove(<opencomputers:material:7>); #1
recipes.addShaped(<opencomputers:material:7>,[
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>],
	[<minecraft:redstone>,<ore:waferSilicon>,<minecraft:redstone>],
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>]]);
recipes.remove(<opencomputers:material:8>); #2
recipes.addShaped(<opencomputers:material:8>,[
	[<ore:wireTin>,<ore:wireTin>,<ore:wireTin>],
	[<opencomputers:material:7>,<opencomputers:material:4>,<opencomputers:material:7>],
	[<ore:wireTin>,<ore:wireTin>,<ore:wireTin>]]);
recipes.remove(<opencomputers:material:9>); #3
recipes.addShaped(<opencomputers:material:9>,[
	[<ore:wireTin>,<ore:wireTin>,<ore:wireTin>],
	[<opencomputers:material:8>,<appliedenergistics2:material:22>,<opencomputers:material:8>],
	[<ore:wireTin>,<ore:wireTin>,<ore:wireTin>]]);