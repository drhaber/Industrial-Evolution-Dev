#priority 8
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
import mods.pyrotech.StoneKiln;
import mods.pyrotech.StoneOven;
import mods.pyrotech.StoneSawmill;
import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.BrickOven;
import mods.pyrotech.BrickSawmill;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.MechanicalCompactor;
import mods.pyrotech.Worktable;

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
StoneKiln.removeAllRecipes();
StoneOven.blacklistAllSmeltingRecipes();
StoneSawmill.removeAllRecipes();
StoneCrucible.removeAllRecipes();
BrickKiln.removeAllRecipes();
BrickOven.blacklistAllSmeltingRecipes();
BrickSawmill.removeAllRecipes();
BrickCrucible.removeAllRecipes();
MechanicalCompactor.removeAllRecipes();
Worktable.blacklistAllVanillaRecipes();

val iLogs = [<tfc:wood/log/acacia>,<tfc:wood/log/ash>,<tfc:wood/log/aspen>,<tfc:wood/log/birch>,<tfc:wood/log/blackwood>,<tfc:wood/log/chestnut>,<tfc:wood/log/douglas_fir>,<tfc:wood/log/hickory>,<tfc:wood/log/kapok>,<tfc:wood/log/maple>,<tfc:wood/log/oak>,<tfc:wood/log/palm>,<tfc:wood/log/pine>,<tfc:wood/log/rosewood>,<tfc:wood/log/sequoia>,<tfc:wood/log/spruce>,<tfc:wood/log/sycamore>,<tfc:wood/log/white_cedar>,<tfc:wood/log/willow>,<tfc:wood/log/hevea>] as IIngredient[];
val iLumber = [<tfc:wood/lumber/acacia>,<tfc:wood/lumber/ash>,<tfc:wood/lumber/aspen>,<tfc:wood/lumber/birch>,<tfc:wood/lumber/blackwood>,<tfc:wood/lumber/chestnut>,<tfc:wood/lumber/douglas_fir>,<tfc:wood/lumber/hickory>,<tfc:wood/lumber/kapok>,<tfc:wood/lumber/maple>,<tfc:wood/lumber/oak>,<tfc:wood/lumber/palm>,<tfc:wood/lumber/pine>,<tfc:wood/lumber/rosewood>,<tfc:wood/lumber/sequoia>,<tfc:wood/lumber/spruce>,<tfc:wood/lumber/sycamore>,<tfc:wood/lumber/white_cedar>,<tfc:wood/lumber/willow>,<tfc:wood/lumber/hevea>] as IItemStack[];
for i, log in iLogs{
Chopping.addRecipe("Log to Lumber"~i,iLumber[i],log,[4],[4]);
}
