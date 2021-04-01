import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;


//Piggy Back Pack
recipes.remove(<tconstruct:piggybackpack>);
recipes.addShaped(<tconstruct:piggybackpack>,[
	[<tfctech:wiredraw/leather_belt>,<ore:stickTreatedWood>,<tfctech:wiredraw/leather_belt>],
	[<tfctech:wiredraw/leather_belt>,<minecraft:leather>,<tfctech:wiredraw/leather_belt>],
	[<tfctech:wiredraw/leather_belt>,<ore:stickTreatedWood>,<tfctech:wiredraw/leather_belt>]]);
//Glowball
recipes.remove(<tconstruct:throwball>);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:throwball>*8, <ore:enderpearl>, <liquid:glowstone>, 125, true, 180);
//ENFL
recipes.remove(<tconstruct:throwball:1>);
recipes.addShaped(<tconstruct:throwball:1>,[
	[<minecraft:tnt>,<minecraft:tnt>,<minecraft:tnt>],
	[<minecraft:tnt>,<minecraft:fire_charge>,<minecraft:tnt>],
	[<minecraft:tnt>,<minecraft:tnt>,<minecraft:tnt>]]);
//Stone Torch
recipes.remove(<tconstruct:stone_torch>);
recipes.addShaped(<tconstruct:stone_torch>*2,[
	[null,<minecraft:glowstone_dust>],
	[null,<ore:rodStone>]]);
//Wooden Hopper
recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>,[
	[<ore:plankWood>,null,<ore:plankWood>],
	[<ore:plankWood>,<ore:chest>,<ore:plankWood>],
	[null,<ore:plankWood>,null]]);

//AE2 Inscriber Plates
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:14>, <contenttweaker:fired_material_engineering_processor_press>, <liquid:iron>, 576,false,1800);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:13>, <contenttweaker:fired_material_calculation_processor_press>, <liquid:iron>, 576,false,1800);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:15>, <contenttweaker:fired_material_logic_processor_press>, <liquid:iron>, 576,false,1800);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:19>, <contenttweaker:fired_material_silicon_press>, <liquid:iron>, 576,false,1800);

//Liquid Catalyst
mods.tconstruct.Melting.addRecipe(<liquid:liquidcatalyst> * 4000,<botania:alchemycatalyst>, 350);
//Smeltry Controller
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>,[
	[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
	[<tfc:bellows>,<ore:aercloud>,<tfc:bellows>],
	[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]]);
//Cauldron
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:cauldron>);
//Clear Stained Glass
val dyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];
val CSG = <tconstruct:clear_stained_glass>.definition;
for i in 0 to 16{
recipes.remove(CSG.makeStack(i));
mods.tconstruct.Casting.addBasinRecipe(CSG.makeStack(i)*8, dyes[i], <liquid:glass>, 1000, true, 180);
}
//Slime
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:edible:3>);
mods.tconstruct.Melting.removeRecipe(<liquid:purpleslime>);
val liquidSlimes = [<liquid:slime>,<liquid:blueslime>,<liquid:purpleslime>,<liquid:blood>,<liquid:magma_fluid>] as ILiquidStack[];
val slimeBlocks = <tconstruct:slime_congealed>.definition;
val slimeBoots = <tconstruct:slime_boots>.definition;
val slimeSling = <tconstruct:slimesling>.definition;
val slimeBall = [<minecraft:slime_ball>,<tconstruct:edible:1>,<tconstruct:edible:2>,<tconstruct:edible:3>,<tconstruct:edible:4>] as IItemStack[];
for i, LS in liquidSlimes{
mods.tconstruct.Casting.addBasinRecipe(slimeBlocks.makeStack(i),null,LS, 640, false, 180);
mods.tconstruct.Casting.addTableRecipe(slimeBoots.makeStack(i), <minecraft:chainmail_boots>, LS, 160, true, 180);
mods.tconstruct.Casting.addTableRecipe(slimeBall[i], null, LS, 160, true, 20);
recipes.remove(slimeSling.makeStack(i));
recipes.remove(slimeBoots.makeStack(i));
mods.forestry.Carpenter.addRecipe(slimeSling.makeStack(i),[
    [null,<botania:manaresource:16>,<tfctech:metal/steel_strip>],
    [null,<tfctech:metal/steel_strip>,<tfctech:metal/steel_rod>],
    [null,null,<immersiveengineering:material:13>]],300, LS*640);   
mods.tconstruct.Melting.addRecipe(LS*250,slimeBall[i], 341);	
mods.tconstruct.Melting.addRecipe(LS*1000,slimeBlocks.makeStack(i), 364);	
}
//Glass
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:clear_glass>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:clear_glass>*8, null, <liquid:glass>, 1000, false, 180);

#=============================================================================================================================================		
//Remove "Pig Iron"

mods.tcomplement.highoven.HighOven.removeMixRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Melting.removeRecipe(<liquid:pigiron>);
mods.nuclearcraft.IngotFormer.removeRecipeWithInput(<liquid:pigiron>);
mods.embers.Stamper.remove(<tconstruct:nuggets:4>);
mods.embers.Stamper.remove(<tconstruct:ingots:4>);
mods.jei.JEI.removeAndHide(<tconstruct:nuggets:4>, false);
mods.jei.JEI.removeAndHide(<tconstruct:ingots:4>, false);
mods.jei.JEI.removeAndHide(<tconstruct:metal:4>, false);

mods.embers.Melter.remove(<liquid:pigiron>);

//Remove Steel from Smelter (use High Oven)
mods.tconstruct.Melting.removeRecipe(<liquid:steel>);
#=============================================================================================================================================		

val anvils = [<tfc:metal/anvil/bismuth_bronze>,<tfc:metal/anvil/black_bronze>,
<tfc:metal/anvil/bronze>,<tfc:metal/anvil/copper>,
<tfc:metal/anvil/wrought_iron>,<tfc:metal/anvil/steel>,<tfc:metal/anvil/black_steel>,
<tfc:metal/anvil/blue_steel>,<tfc:metal/anvil/red_steel>,
<tfc:metal/anvil/mithril>,<tfc:metal/anvil/invar>,<tfc:metal/anvil/aluminium>,
<tfc:metal/anvil/cobalt>,<tfc:metal/anvil/manyullyn>,<tfc:metal/anvil/osmium>,<tfc:metal/anvil/titanium>,
<tfc:metal/anvil/tungsten>,<tfc:metal/anvil/tungsten_steel>] as IItemStack[];

val molten_anvil_metals = [<liquid:bismuth_bronze>,<liquid:black_bronze>,
<liquid:bronze>,<liquid:copper>,
<liquid:wrought_iron>,<liquid:steel>,<liquid:black_steel>,
<liquid:blue_steel>,<liquid:red_steel>,
<liquid:mithril>,<liquid:invar>,<liquid:aluminium>,
<liquid:cobalt>,<liquid:manyullyn>,<liquid:osmium>,<liquid:titanium>,
<liquid:tungsten>,<liquid:tungsten_steel>] as ILiquidStack[];

//Anvil Casting
mods.forestry.Carpenter.addRecipe(<contenttweaker:waxanvil>,[
    [<forestry:beeswax>,<forestry:beeswax>,<forestry:beeswax>],
    [null,<forestry:beeswax>,null],
    [<forestry:beeswax>,<forestry:beeswax>,<forestry:beeswax>]],30,<liquid:water>*150);
recipes.addShaped(<contenttweaker:anvilmold>,[
	[<minecraft:sand>,<minecraft:sand>,<minecraft:sand>],
	[<minecraft:sand>,<contenttweaker:waxanvil>,<minecraft:sand>],
	[<minecraft:sand>,<minecraft:sand>,<minecraft:sand>]]);	
for i, anvil in anvils{	
mods.tconstruct.Casting.addBasinRecipe(anvil, <contenttweaker:anvilmold>, molten_anvil_metals[i], 144*14, true, 3000);
recipes.remove(anvil);
}

#=============================================================================================================================================		
