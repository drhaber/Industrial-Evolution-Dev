import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;
import mods.pyrotech.Campfire;
import mods.pyrotech.PitKiln;
import mods.pyrotech.Bloomery;
import mods.pyrotech.Chopping;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.SoakingPot;


Campfire.whitelistFuel(<forestry:wood_pile>);

PitKiln.removeAllRecipes();
Bloomery.removeAllBloomeryRecipes();
Bloomery.removeAllWitherForgeRecipes();
Chopping.removeAllRecipes();
GraniteAnvil.removeAllRecipes();
IroncladAnvil.removeAllRecipes();
CompactingBin.removeAllRecipes();
SoakingPot.removeAllRecipes();