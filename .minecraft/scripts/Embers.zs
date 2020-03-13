import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.tfctech.WireDrawing;

//Super Heater
recipes.remove(<embers:superheater>);
recipes.addShaped(<embers:superheater>,[
	[<tfctech:metal/copper_wire>,<tfctech:metal/copper_wire>,<tfc:metal/ingot/rose_gold>],
	[<tfctech:metal/copper_wire>,<tfctech:metal/copper_wire>,<tfctech:metal/rose_gold_rod>],
	[<tfctech:metal/copper_wire>,<tfctech:metal/copper_wire>,<tfc:metal/ingot/rose_gold>]]);

//Circuit
recipes.remove(<embers:archaic_circuit>);
mods.appliedenergistics2.Inscriber.addRecipe(<embers:archaic_circuit>,<embers:archaic_brick>,true,<appliedenergistics2:material:19>);

