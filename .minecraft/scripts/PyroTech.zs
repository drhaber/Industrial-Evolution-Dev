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
Campfire.blacklistSmeltingRecipes([<quark:cooked_crab_leg>,<quark:cooked_frog_leg>]);
<pyrotech:rock>.displayName = "Stone Pepple";
<pyrotech:rock:1>.displayName = "Granite Pepple";
<pyrotech:rock:2>.displayName = "Diorite Pepple";
<pyrotech:rock:3>.displayName = "Andesite Pepple";
<pyrotech:rock:6>.displayName = "Sandstone Pepple";
<pyrotech:rock:8>.displayName = "Limestone Pepple";

PitKiln.removeAllRecipes();
Bloomery.removeAllBloomeryRecipes();
Bloomery.removeAllWitherForgeRecipes();
Chopping.removeAllRecipes();
GraniteAnvil.removeAllRecipes();
IroncladAnvil.removeAllRecipes();
CompactingBin.removeAllRecipes();
SoakingPot.removeAllRecipes();