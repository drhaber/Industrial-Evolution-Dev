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

mods.jei.JEI.hideCategory("pyrotech.worktable");

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

mods.jei.JEI.removeAndHide(<pyrotech:slag>);

//Chopping Block
recipes.remove(<pyrotech:chopping_block>);
/*
recipes.addShaped(<pyrotech:chopping_block>,[
	[<ore:logWood>,<ore:toolAxe>]]);
*/
//Torches
recipes.remove(<pyrotech:torch_stone>);
recipes.addShaped(<pyrotech:torch_stone>,[
	[<immersivepetroleum:material>],
	[<ore:stickStone>]]);

recipes.remove(<pyrotech:torch_fiber>);
recipes.addShaped(<pyrotech:torch_fiber>,[
	[<tfc:straw>],
	[<minecraft:stick>]]);

//Pepples
GraniteAnvil.addRecipe(<pyrotech:rock>.name,<pyrotech:rock>*8,<ore:stone>,4,"hammer",true);
GraniteAnvil.addRecipe(<pyrotech:rock:1>.name,<pyrotech:rock:1>*8,<ore:stoneGranite>,4,"hammer",true);
GraniteAnvil.addRecipe(<pyrotech:rock:2>.name,<pyrotech:rock:2>*8,<ore:stoneDiorite>,4,"hammer",true);
GraniteAnvil.addRecipe(<pyrotech:rock:3>.name,<pyrotech:rock:3>*8,<ore:stoneAndesite>,4,"hammer",true);
GraniteAnvil.addRecipe(<pyrotech:rock:6>.name,<pyrotech:rock:6>*8,<ore:sandstone>,4,"hammer",true);
GraniteAnvil.addRecipe(<pyrotech:rock:8>.name,<pyrotech:rock:8>*8,<ore:stoneLimestone>,4,"hammer",true);

//Stone Anvil
<pyrotech:anvil_granite>.displayName = "Stone Anvil";
recipes.remove(<pyrotech:anvil_granite>);
recipes.addShaped(<pyrotech:anvil_granite>,[
	[<ore:dustFlux>],
	[<ore:stonePolished>],
	[<ore:stone>]]);

//Compacting Bin
recipes.remove(<pyrotech:compacting_bin>);
recipes.addShaped(<pyrotech:compacting_bin>,[
	[<ore:lumber>,null,<ore:lumber>],
	[<ore:lumber>,null,<ore:lumber>],
	[<ore:lumber>,<ore:slabWood>,<ore:lumber>]]);    

//Crude Drying Rack
recipes.remove(<pyrotech:drying_rack>);
recipes.addShaped(<pyrotech:drying_rack>,[
	[<ore:straw>,<ore:logWood>,<ore:straw>]]);

//Saws
<pyrotech:sawmill_blade_gold>.displayName = "Brass Saw Blade";
<pyrotech:sawmill_blade_bone>.displayName = "Bronze Saw Blade";
<pyrotech:sawmill_blade_iron>.displayName = "Wrought Iron Saw Blade";
<pyrotech:sawmill_blade_stone>.displayName = "Steel Saw Blade";
<pyrotech:sawmill_blade_flint>.displayName = "Black Steel Saw Blade";
<pyrotech:sawmill_blade_obsidian>.displayName = "Manyullyn Saw Blade";
<pyrotech:sawmill_blade_diamond>.displayName = "Diamond Tipped Steel Saw Blade";

mods.terrafirmacraft.ItemRegistry.registerItemMetal(<pyrotech:sawmill_blade_gold>, "BRASS", 400, true);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<pyrotech:sawmill_blade_bone>, "BRONZE", 400, true);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<pyrotech:sawmill_blade_iron>, "WROUGHT_IRON", 400, true);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<pyrotech:sawmill_blade_stone>, "STEEL", 400, true);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<pyrotech:sawmill_blade_flint>, "BLACK_STEEL", 400, true);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<pyrotech:sawmill_blade_obsidian>, "MANYULLYN", 400, true);

mods.astralsorcery.Grindstone.addRecipe(<tfctech:metal/brass_rackwheel>, <pyrotech:sawmill_blade_gold>);
mods.astralsorcery.Grindstone.addRecipe(<tfctech:metal/bronze_rackwheel>, <pyrotech:sawmill_blade_bone>);

val saws = [<pyrotech:sawmill_blade_gold>,<pyrotech:sawmill_blade_bone>,<pyrotech:sawmill_blade_iron>,<pyrotech:sawmill_blade_stone>,
<pyrotech:sawmill_blade_flint>,<pyrotech:sawmill_blade_obsidian>] as IItemStack[];

val DS = [<tfc:metal/double_sheet/brass>,<tfc:metal/double_sheet/bronze>,<tfc:metal/double_sheet/wrought_iron>,<tfc:metal/double_sheet/steel>,
<tfc:metal/double_sheet/black_steel>,<tfc:metal/double_sheet/manyullyn>] as IItemStack[];
for i, iSaw in saws{
recipes.remove(iSaw);    
mods.immersiveengineering.MetalPress.addRecipe(iSaw, DS[i], <immersiveengineering:mold:1>, 2000, 2);
}
mods.embers.Stamper.add(<pyrotech:sawmill_blade_diamond>,<liquid:diamond>*5328, <embers:stamp_flat>,<pyrotech:sawmill_blade_stone>);

recipes.remove(<pyrotech:sawmill_blade_diamond>);   

#=============================================================================================================================================		

//Bricks
/*
	//Refactory 
	recipes.remove(<pyrotech:material:9>); #unfired Brick
	recipes.addShaped(<pyrotech:material:9>*4,[
	[<ore:fireClay>,<ore:fireClay>],
	[<ore:fireClay>,<ore:fireClay>]]);

	recipes.remove(<pyrotech:material:4>); #clay Lump
	recipes.addShaped(<pyrotech:material:4>,[
		[<contenttweaker:bauxitedust>,<ore:dustGraphite>,<contenttweaker:bauxitedust>],
		[<ore:dustGraphite>,<ore:clay>,<ore:dustGraphite>],
		[<contenttweaker:bauxitedust>,<ore:dustGraphite>,<contenttweaker:bauxitedust>]]);

	furnace.remove(<pyrotech:material:5>);
	mods.terrafirmacraft.ItemRegistry.registerItemHeat(<pyrotech:material:9>, 1, 1599, false);
	mods.terrafirmacraft.ItemRegistry.registerItemHeat(<pyrotech:material:5>, 1, 1599, false);
	mods.terrafirmacraft.Heating.addRecipe("Refactory_Brick", <pyrotech:material:9>, <pyrotech:material:5>, 1500, 3200);

	//Masonry 
	recipes.remove(<pyrotech:material:16>);
	recipes.addShaped(<pyrotech:material:16>,[
		[<ore:ingotBrick>,<ore:mortar>],
		[<ore:mortar>,<ore:ingotBrick>]]);
*/



