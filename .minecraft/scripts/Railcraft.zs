import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;



recipes.remove(<railcraft:tank_iron_wall>);
recipes.addShaped(<railcraft:tank_iron_wall>*8,[
	[<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/wrought_iron>,null],
	[<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/wrought_iron>,null],
	[null,null,null]]);