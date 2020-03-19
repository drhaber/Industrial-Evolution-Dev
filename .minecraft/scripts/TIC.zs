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
recipes.remove(<tconstruct:stone_stick>);
//Liquid Catalyst
mods.tconstruct.Melting.addRecipe(<liquid:liquidcatalyst> * 4000,<botania:alchemycatalyst>, 350);
//Seared Brick
recipes.addShapeless(<tconstruct:materials>*4,[<tconstruct:seared:1>,<ore:chisel>.transformDamage(4)]);
//Grout
recipes.removeShapeless(<tconstruct:soil>);
recipes.addShapeless(<tconstruct:soil>*2,[<ore:gravel>,<ore:sand>,<ore:fireClay>]);
//Smeltry Controller
recipes.remove(<tconstruct:smeltery_controller>);
recipes.addShaped(<tconstruct:smeltery_controller>,[
	[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>],
	[<tfc:bellows>,null,<tfc:bellows>],
	[<tconstruct:materials>,<tconstruct:materials>,<tconstruct:materials>]]);
//Cauldron
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:cauldron>);
//Clear Stained Glass
val dyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];
val CSG = <tconstruct:clear_stained_glass>.definition;
val Illumar = <projectred-core:resource_item>.definition;
for i in 0 to 16{
recipes.remove(CSG.makeStack(i));
mods.tconstruct.Casting.addBasinRecipe(CSG.makeStack(i)*8, dyes[i], <liquid:glass>, 1000, true, 180);
//Illumar
recipes.remove(Illumar.makeStack(i+500));
mods.tconstruct.Casting.addTableRecipe(Illumar.makeStack(i+500), dyes[i], <liquid:glowstone>, 250, true, 180);
}
//Glass
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:clear_glass>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:clear_glass>*8, null, <liquid:glass>, 1000, false, 180);
//Shard
mods.tconstruct.Melting.addRecipe(<liquid:glass> * 250,<ore:shardGlass>);
//Crystals
val ReducedDyes = [<ore:dyeWhite>,<ore:dyeRed>,<ore:dyeOrange>,<ore:dyeYellow>,<ore:dyeGreen>,<ore:dyeLightBlue>,<ore:dyeBlue>,<ore:dyePurple>,<ore:dyeBlack>] as IOreDictEntry[];
val crystalBlocks = <quark:crystal>.definition;
for i in 0 to 9{
mods.tconstruct.Casting.addBasinRecipe(crystalBlocks.makeStack(i), ReducedDyes[i], <liquid:quartz>, 125, true, 180);
}
mods.tconstruct.Melting.addRecipe(<liquid:quartz>*666,<ore:dustQuartz>);
//Botania
	mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 1296, <botania:storage:2>);
	mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 144, <botania:manaresource:7>);
	mods.tconstruct.Melting.addRecipe(<liquid:elementium> * 16, <botania:manaresource:19>);
	mods.tconstruct.Casting.addBasinRecipe(<botania:storage:2>, null, <liquid:elementium>, 1296);
	mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:7>, <tconstruct:cast_custom:0>, <liquid:elementium>, 144);
	mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:19>, <tconstruct:cast_custom:1>, <liquid:elementium>, 16);
	//Manasteel
	mods.tconstruct.Melting.addRecipe(<liquid:manasteel> * 1296, <botania:storage:0>);
	mods.tconstruct.Melting.addRecipe(<liquid:manasteel> * 144, <botania:manaresource:0>);
	mods.tconstruct.Melting.addRecipe(<liquid:manasteel> * 16, <botania:manaresource:17>);
	mods.tconstruct.Casting.addBasinRecipe(<botania:storage:0>, null, <liquid:manasteel>, 1296);
	mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:0>, <tconstruct:cast_custom:0>, <liquid:manasteel>, 144);
	mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:17>, <tconstruct:cast_custom:1>, <liquid:manasteel>, 16);
	//Terrasteel
	mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 1296, <botania:storage:1>);
	mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 144, <botania:manaresource:4>);
	mods.tconstruct.Melting.addRecipe(<liquid:terrasteel> * 16, <botania:manaresource:18>);
	mods.tconstruct.Casting.addBasinRecipe(<botania:storage:1>, null, <liquid:terrasteel>, 1296);
	mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:4>, <tconstruct:cast_custom:0>, <liquid:terrasteel>, 144);
	mods.tconstruct.Casting.addTableRecipe(<botania:manaresource:18>, <tconstruct:cast_custom:1>, <liquid:terrasteel>, 16);

//Casting Table TFC Tool Parts
val castingMetal = [<liquid:tungsten>,<liquid:black_bronze>,<liquid:red_steel>,<liquid:invar>,
<liquid:aluminium>,<liquid:wrought_iron>,<liquid:black_steel>,<liquid:mithril>,
<liquid:titanium>,<liquid:manyullyn>,<liquid:copper>,<liquid:osmium>,<liquid:steel>,
<liquid:tungsten_steel>,<liquid:bronze>,<liquid:blue_steel>,<liquid:cobalt>,<liquid:bismuth_bronze>] as ILiquidStack[];
#=============================================================================================================================================		

val axehead = [<tfc:metal/axe_head/tungsten>,<tfc:metal/axe_head/black_bronze>,<tfc:metal/axe_head/red_steel>,<tfc:metal/axe_head/invar>,
<tfc:metal/axe_head/aluminium>,<tfc:metal/axe_head/wrought_iron>,<tfc:metal/axe_head/black_steel>,<tfc:metal/axe_head/mithril>,
<tfc:metal/axe_head/titanium>,<tfc:metal/axe_head/manyullyn>,<tfc:metal/axe_head/copper>,<tfc:metal/axe_head/osmium>,<tfc:metal/axe_head/steel>,
<tfc:metal/axe_head/tungsten_steel>,<tfc:metal/axe_head/bronze>,<tfc:metal/axe_head/blue_steel>,<tfc:metal/axe_head/cobalt>,<tfc:metal/axe_head/bismuth_bronze>] as IItemStack[];

val ingots_axe = 1; #Number of Ingots
val time_axe = 15; #Number of Seconds
for i, ah in axehead{
mods.tconstruct.Casting.addTableRecipe(ah,<tfc:ceramics/fired/mold/axe_head>,castingMetal[i],144*ingots_axe,false,time_axe*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/axe_head/aluminium>,<tfc:ceramics/fired/mold/axe_head>,<liquid:aluminum>,144*ingots_axe,false,time_axe*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/axe_head/wrought_iron>,<tfc:ceramics/fired/mold/axe_head>,<liquid:iron>,144*ingots_axe,false,time_axe*20);
#=============================================================================================================================================		

val propickhead = [<tfc:metal/propick_head/tungsten>,<tfc:metal/propick_head/black_bronze>,<tfc:metal/propick_head/red_steel>,<tfc:metal/propick_head/invar>,
<tfc:metal/propick_head/aluminium>,<tfc:metal/propick_head/wrought_iron>,<tfc:metal/propick_head/black_steel>,<tfc:metal/propick_head/mithril>,
<tfc:metal/propick_head/titanium>,<tfc:metal/propick_head/manyullyn>,<tfc:metal/propick_head/copper>,<tfc:metal/propick_head/osmium>,<tfc:metal/propick_head/steel>,
<tfc:metal/propick_head/tungsten_steel>,<tfc:metal/propick_head/bronze>,<tfc:metal/propick_head/blue_steel>,<tfc:metal/propick_head/cobalt>,<tfc:metal/propick_head/bismuth_bronze>] as IItemStack[];

val ingots_ProP = 1; #Number of Ingots
val time_ProP = 15; #Number of Seconds
for i, ph in propickhead{
mods.tconstruct.Casting.addTableRecipe(ph,<tfc:ceramics/fired/mold/propick_head>,castingMetal[i],144*ingots_ProP,false,time_ProP*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/propick_head/aluminium>,<tfc:ceramics/fired/mold/propick_head>,<liquid:aluminum>,144*ingots_ProP,false,time_ProP*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/propick_head/wrought_iron>,<tfc:ceramics/fired/mold/propick_head>,<liquid:iron>,144*ingots_ProP,false,time_ProP*20);
#=============================================================================================================================================		

val pickhead = [<tfc:metal/pick_head/tungsten>,<tfc:metal/pick_head/black_bronze>,<tfc:metal/pick_head/red_steel>,<tfc:metal/pick_head/invar>,
<tfc:metal/pick_head/aluminium>,<tfc:metal/pick_head/wrought_iron>,<tfc:metal/pick_head/black_steel>,<tfc:metal/pick_head/mithril>,
<tfc:metal/pick_head/titanium>,<tfc:metal/pick_head/manyullyn>,<tfc:metal/pick_head/copper>,<tfc:metal/pick_head/osmium>,<tfc:metal/pick_head/steel>,
<tfc:metal/pick_head/tungsten_steel>,<tfc:metal/pick_head/bronze>,<tfc:metal/pick_head/blue_steel>,<tfc:metal/pick_head/cobalt>,<tfc:metal/pick_head/bismuth_bronze>] as IItemStack[];

val ingots_PH = 1; #Number of Ingots
val time_PH = 15; #Number of Seconds
for i, pah in pickhead{
mods.tconstruct.Casting.addTableRecipe(pah,<tfc:ceramics/fired/mold/pick_head>,castingMetal[i],144*ingots_PH,false,time_PH*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/pick_head/aluminium>,<tfc:ceramics/fired/mold/pick_head>,<liquid:aluminum>,144*ingots_PH,false,time_PH*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/pick_head/wrought_iron>,<tfc:ceramics/fired/mold/pick_head>,<liquid:iron>,144*ingots_PH,false,time_PH*20);
#=============================================================================================================================================		

val shovelhead = [<tfc:metal/shovel_head/tungsten>,<tfc:metal/shovel_head/black_bronze>,<tfc:metal/shovel_head/red_steel>,<tfc:metal/shovel_head/invar>,
<tfc:metal/shovel_head/aluminium>,<tfc:metal/shovel_head/wrought_iron>,<tfc:metal/shovel_head/black_steel>,<tfc:metal/shovel_head/mithril>,
<tfc:metal/shovel_head/titanium>,<tfc:metal/shovel_head/manyullyn>,<tfc:metal/shovel_head/copper>,<tfc:metal/shovel_head/osmium>,<tfc:metal/shovel_head/steel>,
<tfc:metal/shovel_head/tungsten_steel>,<tfc:metal/shovel_head/bronze>,<tfc:metal/shovel_head/blue_steel>,<tfc:metal/shovel_head/cobalt>,<tfc:metal/shovel_head/bismuth_bronze>] as IItemStack[];

val ingots_SH = 1; #Number of Ingots
val time_SH = 15; #Number of Seconds
for i, sh in shovelhead{
mods.tconstruct.Casting.addTableRecipe(sh,<tfc:ceramics/fired/mold/shovel_head>,castingMetal[i],144*ingots_SH,false,time_SH*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/shovel_head/aluminium>,<tfc:ceramics/fired/mold/shovel_head>,<liquid:aluminum>,144*ingots_SH,false,time_SH*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/shovel_head/wrought_iron>,<tfc:ceramics/fired/mold/shovel_head>,<liquid:iron>,144*ingots_SH,false,time_SH*20);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:gold_shovel_head>,<tfc:ceramics/fired/mold/shovel_head>,<liquid:gold>,144*ingots_SH,false,time_SH*20);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:obsidian_shovel_head>,<tfc:ceramics/fired/mold/shovel_head>,<liquid:obsidian>,144*ingots_SH,false,time_SH*20);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:manasteel_shovel_head>,<tfc:ceramics/fired/mold/shovel_head>,<liquid:manasteel>,144*ingots_SH,true,time_SH*20);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:diamond_shovel_head>,<contenttweaker:manasteel_shovel_head>,<liquid:diamond>,144*ingots_SH,true,time_SH*20);

#=============================================================================================================================================		

val hoehead = [<tfc:metal/hoe_head/tungsten>,<tfc:metal/hoe_head/black_bronze>,<tfc:metal/hoe_head/red_steel>,<tfc:metal/hoe_head/invar>,
<tfc:metal/hoe_head/aluminium>,<tfc:metal/hoe_head/wrought_iron>,<tfc:metal/hoe_head/black_steel>,<tfc:metal/hoe_head/mithril>,
<tfc:metal/hoe_head/titanium>,<tfc:metal/hoe_head/manyullyn>,<tfc:metal/hoe_head/copper>,<tfc:metal/hoe_head/osmium>,<tfc:metal/hoe_head/steel>,
<tfc:metal/hoe_head/tungsten_steel>,<tfc:metal/hoe_head/bronze>,<tfc:metal/hoe_head/blue_steel>,<tfc:metal/hoe_head/cobalt>,<tfc:metal/hoe_head/bismuth_bronze>] as IItemStack[];

val ingots_HH = 1; #Number of Ingots
val time_HH = 15; #Number of Seconds
for i, hh in hoehead{
mods.tconstruct.Casting.addTableRecipe(hh,<tfc:ceramics/fired/mold/hoe_head>,castingMetal[i],144*ingots_HH,false,time_HH*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hoe_head/aluminium>,<tfc:ceramics/fired/mold/hoe_head>,<liquid:aluminum>,144*ingots_HH,false,time_HH*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hoe_head/wrought_iron>,<tfc:ceramics/fired/mold/hoe_head>,<liquid:iron>,144*ingots_HH,false,time_HH*20);
#=============================================================================================================================================		

val chiselhead = [<tfc:metal/chisel_head/tungsten>,<tfc:metal/chisel_head/black_bronze>,<tfc:metal/chisel_head/red_steel>,<tfc:metal/chisel_head/invar>,
<tfc:metal/chisel_head/aluminium>,<tfc:metal/chisel_head/wrought_iron>,<tfc:metal/chisel_head/black_steel>,<tfc:metal/chisel_head/mithril>,
<tfc:metal/chisel_head/titanium>,<tfc:metal/chisel_head/manyullyn>,<tfc:metal/chisel_head/copper>,<tfc:metal/chisel_head/osmium>,<tfc:metal/chisel_head/steel>,
<tfc:metal/chisel_head/tungsten_steel>,<tfc:metal/chisel_head/bronze>,<tfc:metal/chisel_head/blue_steel>,<tfc:metal/chisel_head/cobalt>,<tfc:metal/chisel_head/bismuth_bronze>] as IItemStack[];

val ingots_CH = 1; #Number of Ingots
val time_CH = 15; #Number of Seconds
for i, ch in chiselhead{
mods.tconstruct.Casting.addTableRecipe(ch,<tfc:ceramics/fired/mold/chisel_head>,castingMetal[i],144*ingots_CH,false,time_CH*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/chisel_head/aluminium>,<tfc:ceramics/fired/mold/chisel_head>,<liquid:aluminum>,144*ingots_CH,false,time_CH*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/chisel_head/wrought_iron>,<tfc:ceramics/fired/mold/chisel_head>,<liquid:iron>,144*ingots_CH,false,time_CH*20);
#=============================================================================================================================================		

val macehead = [<tfc:metal/mace_head/tungsten>,<tfc:metal/mace_head/black_bronze>,<tfc:metal/mace_head/red_steel>,<tfc:metal/mace_head/invar>,
<tfc:metal/mace_head/aluminium>,<tfc:metal/mace_head/wrought_iron>,<tfc:metal/mace_head/black_steel>,<tfc:metal/mace_head/mithril>,
<tfc:metal/mace_head/titanium>,<tfc:metal/mace_head/manyullyn>,<tfc:metal/mace_head/copper>,<tfc:metal/mace_head/osmium>,<tfc:metal/mace_head/steel>,
<tfc:metal/mace_head/tungsten_steel>,<tfc:metal/mace_head/bronze>,<tfc:metal/mace_head/blue_steel>,<tfc:metal/mace_head/cobalt>,<tfc:metal/mace_head/bismuth_bronze>] as IItemStack[];

val ingots_MH = 1; #Number of Ingots
val time_MH = 15; #Number of Seconds
for i, mh in macehead{
mods.tconstruct.Casting.addTableRecipe(mh,<tfc:ceramics/fired/mold/mace_head>,castingMetal[i],144*ingots_MH,false,time_MH*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/mace_head/aluminium>,<tfc:ceramics/fired/mold/mace_head>,<liquid:aluminum>,144*ingots_MH,false,time_MH*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/mace_head/wrought_iron>,<tfc:ceramics/fired/mold/mace_head>,<liquid:iron>,144*ingots_MH,false,time_MH*20);
#=============================================================================================================================================		

val javelinhead = [<tfc:metal/javelin_head/tungsten>,<tfc:metal/javelin_head/black_bronze>,<tfc:metal/javelin_head/red_steel>,<tfc:metal/javelin_head/invar>,
<tfc:metal/javelin_head/aluminium>,<tfc:metal/javelin_head/wrought_iron>,<tfc:metal/javelin_head/black_steel>,<tfc:metal/javelin_head/mithril>,
<tfc:metal/javelin_head/titanium>,<tfc:metal/javelin_head/manyullyn>,<tfc:metal/javelin_head/copper>,<tfc:metal/javelin_head/osmium>,<tfc:metal/javelin_head/steel>,
<tfc:metal/javelin_head/tungsten_steel>,<tfc:metal/javelin_head/bronze>,<tfc:metal/javelin_head/blue_steel>,<tfc:metal/javelin_head/cobalt>,<tfc:metal/javelin_head/bismuth_bronze>] as IItemStack[];

val ingots_JH = 1; #Number of Ingots
val time_JH = 15; #Number of Seconds
for i, jh in javelinhead{
mods.tconstruct.Casting.addTableRecipe(jh,<tfc:ceramics/fired/mold/javelin_head>,castingMetal[i],144*ingots_JH,false,time_JH*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/javelin_head/aluminium>,<tfc:ceramics/fired/mold/javelin_head>,<liquid:aluminum>,144*ingots_JH,false,time_JH*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/javelin_head/wrought_iron>,<tfc:ceramics/fired/mold/javelin_head>,<liquid:iron>,144*ingots_JH,false,time_JH*20);
#=============================================================================================================================================		

val swordblade = [<tfc:metal/sword_blade/tungsten>,<tfc:metal/sword_blade/black_bronze>,<tfc:metal/sword_blade/red_steel>,<tfc:metal/sword_blade/invar>,
<tfc:metal/sword_blade/aluminium>,<tfc:metal/sword_blade/wrought_iron>,<tfc:metal/sword_blade/black_steel>,<tfc:metal/sword_blade/mithril>,
<tfc:metal/sword_blade/titanium>,<tfc:metal/sword_blade/manyullyn>,<tfc:metal/sword_blade/copper>,<tfc:metal/sword_blade/osmium>,<tfc:metal/sword_blade/steel>,
<tfc:metal/sword_blade/tungsten_steel>,<tfc:metal/sword_blade/bronze>,<tfc:metal/sword_blade/blue_steel>,<tfc:metal/sword_blade/cobalt>,<tfc:metal/sword_blade/bismuth_bronze>] as IItemStack[];

val ingots_SoB = 1; #Number of Ingots
val time_SoB = 15; #Number of Seconds
for i, sob in swordblade{
mods.tconstruct.Casting.addTableRecipe(sob,<tfc:ceramics/fired/mold/sword_blade>,castingMetal[i],144*ingots_SoB,false,time_SoB*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/sword_blade/aluminium>,<tfc:ceramics/fired/mold/sword_blade>,<liquid:aluminum>,144*ingots_SoB,false,time_SoB*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/sword_blade/wrought_iron>,<tfc:ceramics/fired/mold/sword_blade>,<liquid:iron>,144*ingots_SoB,false,time_SoB*20);
#=============================================================================================================================================		

val sawblade = [<tfc:metal/saw_blade/tungsten>,<tfc:metal/saw_blade/black_bronze>,<tfc:metal/saw_blade/red_steel>,<tfc:metal/saw_blade/invar>,
<tfc:metal/saw_blade/aluminium>,<tfc:metal/saw_blade/wrought_iron>,<tfc:metal/saw_blade/black_steel>,<tfc:metal/saw_blade/mithril>,
<tfc:metal/saw_blade/titanium>,<tfc:metal/saw_blade/manyullyn>,<tfc:metal/saw_blade/copper>,<tfc:metal/saw_blade/osmium>,<tfc:metal/saw_blade/steel>,
<tfc:metal/saw_blade/tungsten_steel>,<tfc:metal/saw_blade/bronze>,<tfc:metal/saw_blade/blue_steel>,<tfc:metal/saw_blade/cobalt>,<tfc:metal/saw_blade/bismuth_bronze>] as IItemStack[];

val ingots_SB = 1; #Number of Ingots
val time_SB = 15; #Number of Seconds
for i, sb in sawblade{
mods.tconstruct.Casting.addTableRecipe(sb,<tfc:ceramics/fired/mold/saw_blade>,castingMetal[i],144*ingots_SB,false,time_SB*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/saw_blade/aluminium>,<tfc:ceramics/fired/mold/saw_blade>,<liquid:aluminum>,144*ingots_SB,false,time_SB*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/saw_blade/wrought_iron>,<tfc:ceramics/fired/mold/saw_blade>,<liquid:iron>,144*ingots_SB,false,time_SB*20);
#=============================================================================================================================================		

val knifeblade = [<tfc:metal/knife_blade/tungsten>,<tfc:metal/knife_blade/black_bronze>,<tfc:metal/knife_blade/red_steel>,<tfc:metal/knife_blade/invar>,
<tfc:metal/knife_blade/aluminium>,<tfc:metal/knife_blade/wrought_iron>,<tfc:metal/knife_blade/black_steel>,<tfc:metal/knife_blade/mithril>,
<tfc:metal/knife_blade/titanium>,<tfc:metal/knife_blade/manyullyn>,<tfc:metal/knife_blade/copper>,<tfc:metal/knife_blade/osmium>,<tfc:metal/knife_blade/steel>,
<tfc:metal/knife_blade/tungsten_steel>,<tfc:metal/knife_blade/bronze>,<tfc:metal/knife_blade/blue_steel>,<tfc:metal/knife_blade/cobalt>,<tfc:metal/knife_blade/bismuth_bronze>] as IItemStack[];

val ingots_KB = 1; #Number of Ingots
val time_KB = 15; #Number of Seconds
for i, kb in knifeblade{
mods.tconstruct.Casting.addTableRecipe(kb,<tfc:ceramics/fired/mold/knife_blade>,castingMetal[i],144*ingots_KB,false,time_KB*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/knife_blade/aluminium>,<tfc:ceramics/fired/mold/knife_blade>,<liquid:aluminum>,144*ingots_KB,false,time_KB*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/knife_blade/wrought_iron>,<tfc:ceramics/fired/mold/knife_blade>,<liquid:iron>,144*ingots_KB,false,time_KB*20);
#=============================================================================================================================================		

val scytheblade = [<tfc:metal/scythe_blade/tungsten>,<tfc:metal/scythe_blade/black_bronze>,<tfc:metal/scythe_blade/red_steel>,<tfc:metal/scythe_blade/invar>,
<tfc:metal/scythe_blade/aluminium>,<tfc:metal/scythe_blade/wrought_iron>,<tfc:metal/scythe_blade/black_steel>,<tfc:metal/scythe_blade/mithril>,
<tfc:metal/scythe_blade/titanium>,<tfc:metal/scythe_blade/manyullyn>,<tfc:metal/scythe_blade/copper>,<tfc:metal/scythe_blade/osmium>,<tfc:metal/scythe_blade/steel>,
<tfc:metal/scythe_blade/tungsten_steel>,<tfc:metal/scythe_blade/bronze>,<tfc:metal/scythe_blade/blue_steel>,<tfc:metal/scythe_blade/cobalt>,<tfc:metal/scythe_blade/bismuth_bronze>] as IItemStack[];

val ingots_SyB = 1; #Number of Ingots
val time_SyB = 15; #Number of Seconds
for i, syb in scytheblade{
mods.tconstruct.Casting.addTableRecipe(syb,<tfc:ceramics/fired/mold/scythe_blade>,castingMetal[i],144*ingots_SyB,false,time_SyB*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/scythe_blade/aluminium>,<tfc:ceramics/fired/mold/scythe_blade>,<liquid:aluminum>,144*ingots_SyB,false,time_SyB*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/scythe_blade/wrought_iron>,<tfc:ceramics/fired/mold/scythe_blade>,<liquid:iron>,144*ingots_SyB,false,time_SyB*20);
#=============================================================================================================================================		

val hammerhead = [<tfc:metal/hammer_head/tungsten>,<tfc:metal/hammer_head/black_bronze>,<tfc:metal/hammer_head/red_steel>,<tfc:metal/hammer_head/invar>,
<tfc:metal/hammer_head/aluminium>,<tfc:metal/hammer_head/wrought_iron>,<tfc:metal/hammer_head/black_steel>,<tfc:metal/hammer_head/mithril>,
<tfc:metal/hammer_head/titanium>,<tfc:metal/hammer_head/manyullyn>,<tfc:metal/hammer_head/copper>,<tfc:metal/hammer_head/osmium>,<tfc:metal/hammer_head/steel>,
<tfc:metal/hammer_head/tungsten_steel>,<tfc:metal/hammer_head/bronze>,<tfc:metal/hammer_head/blue_steel>,<tfc:metal/hammer_head/cobalt>,<tfc:metal/hammer_head/bismuth_bronze>] as IItemStack[];

val ingots_HamH = 1; #Number of Ingots
val time_HamH = 15; #Number of Seconds
for i, HamH in hammerhead{
mods.tconstruct.Casting.addTableRecipe(HamH,<tfc:ceramics/fired/mold/hammer_head>,castingMetal[i],144*ingots_HamH,false,time_HamH*20);
}
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hammer_head/aluminium>,<tfc:ceramics/fired/mold/hammer_head>,<liquid:aluminum>,144*ingots_HamH,false,time_HamH*20);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hammer_head/wrought_iron>,<tfc:ceramics/fired/mold/hammer_head>,<liquid:iron>,144*ingots_HamH,false,time_HamH*20);

#=============================================================================================================================================		
//Remove "Pig Iron"
mods.tcomplement.highoven.HighOven.removeMixRecipe(<liquid:pigiron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Melting.removeRecipe(<liquid:pigiron>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:nuggets:4>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:ingots:4>);
mods.tconstruct.Casting.removeBasinRecipe(<tconstruct:metal:4>);
mods.jei.JEI.removeAndHide(<tconstruct:nuggets:4>, false);
mods.jei.JEI.removeAndHide(<tconstruct:ingots:4>, false);
mods.jei.JEI.removeAndHide(<tconstruct:metal:4>, false);
//Remove Steel from Smelter (use High Oven)
mods.tconstruct.Melting.removeRecipe(<liquid:steel>);
#=============================================================================================================================================		
//Remove Gears
val gears =[<tfctech:metal/bismuth_gear>,<tfctech:metal/bismuth_bronze_gear>,<tfctech:metal/black_bronze_gear>,<tfctech:metal/brass_gear>,
<tfctech:metal/bronze_gear>,<tfctech:metal/copper_gear>,<tfctech:metal/gold_gear>,<tfctech:metal/lead_gear>,<tfctech:metal/nickel_gear>,
<tfctech:metal/rose_gold_gear>,<tfctech:metal/silver_gear>,<tfctech:metal/tin_gear>,<tfctech:metal/zinc_gear>,<tfctech:metal/sterling_silver_gear>,
<tfctech:metal/wrought_iron_gear>,<tfctech:metal/pig_iron_gear>,<tfctech:metal/steel_gear>,<tfctech:metal/platinum_gear>,<tfctech:metal/black_steel_gear>,
<tfctech:metal/blue_steel_gear>,<tfctech:metal/red_steel_gear>,<tfctech:metal/antimony_gear>,<tfctech:metal/constantan_gear>,
<tfctech:metal/electrum_gear>,<tfctech:metal/mithril_gear>,<tfctech:metal/invar_gear>,<tfctech:metal/aluminium_gear>,<tfctech:metal/aluminium_brass_gear>,
<tfctech:metal/ardite_gear>,<tfctech:metal/cobalt_gear>,<tfctech:metal/manyullyn_gear>,<tfctech:metal/osmium_gear>,<tfctech:metal/titanium_gear>,
<tfctech:metal/tungsten_gear>,<tfctech:metal/tungsten_steel_gear>,<mystgears:gear_aluminium>] as IItemStack[];
for gear in gears{
mods.tconstruct.Casting.removeTableRecipe(gear);
}

val rackwheels = [<tfctech:metal/bismuth_rackwheel>,<tfctech:metal/bismuth_bronze_rackwheel>,<tfctech:metal/black_bronze_rackwheel>,<tfctech:metal/brass_rackwheel>,
<tfctech:metal/bronze_rackwheel>,<tfctech:metal/copper_rackwheel>,<tfctech:metal/gold_rackwheel>,<tfctech:metal/lead_rackwheel>,<tfctech:metal/nickel_rackwheel>,
<tfctech:metal/rose_gold_rackwheel>,<tfctech:metal/silver_rackwheel>,<tfctech:metal/tin_rackwheel>,<tfctech:metal/zinc_rackwheel>,<tfctech:metal/sterling_silver_rackwheel>,
<tfctech:metal/wrought_iron_rackwheel>,<tfctech:metal/pig_iron_rackwheel>,<tfctech:metal/steel_rackwheel>,<tfctech:metal/platinum_rackwheel>,<tfctech:metal/black_steel_rackwheel>,
<tfctech:metal/blue_steel_rackwheel>,<tfctech:metal/red_steel_rackwheel>,<tfctech:metal/antimony_rackwheel>,<tfctech:metal/constantan_rackwheel>,
<tfctech:metal/electrum_rackwheel>,<tfctech:metal/mithril_rackwheel>,<tfctech:metal/invar_rackwheel>,<tfctech:metal/aluminium_rackwheel>,<tfctech:metal/aluminium_brass_rackwheel>,
<tfctech:metal/ardite_rackwheel>,<tfctech:metal/cobalt_rackwheel>,<tfctech:metal/manyullyn_rackwheel>,<tfctech:metal/osmium_rackwheel>,<tfctech:metal/titanium_rackwheel>,
<tfctech:metal/tungsten_rackwheel>,<tfctech:metal/tungsten_steel_rackwheel>] as IItemStack[];

val molten_metals = [<liquid:bismuth>,<liquid:bismuth_bronze>,<liquid:black_bronze>,<liquid:brass>,
<liquid:bronze>,<liquid:copper>,<liquid:gold>,<liquid:lead>,<liquid:nickel>,
<liquid:rose_gold>,<liquid:silver>,<liquid:tin>,<liquid:zinc>,<liquid:sterling_silver>,
<liquid:wrought_iron>,<liquid:pig_iron>,<liquid:steel>,<liquid:platinum>,<liquid:black_steel>,
<liquid:blue_steel>,<liquid:red_steel>,<liquid:antimony>,<liquid:constantan>,
<liquid:electrum>,<liquid:mithril>,<liquid:invar>,<liquid:aluminium>,<liquid:alubrass>,
<liquid:ardite>,<liquid:cobalt>,<liquid:manyullyn>,<liquid:osmium>,<liquid:titanium>,
<liquid:tungsten>,<liquid:tungsten_steel>] as ILiquidStack[];

val ingots = [<tfc:metal/ingot/bismuth>,<tfc:metal/ingot/bismuth_bronze>,<tfc:metal/ingot/black_bronze>,<tfc:metal/ingot/brass>,
<tfc:metal/ingot/bronze>,<tfc:metal/ingot/copper>,<tfc:metal/ingot/gold>,<tfc:metal/ingot/lead>,<tfc:metal/ingot/nickel>,
<tfc:metal/ingot/rose_gold>,<tfc:metal/ingot/silver>,<tfc:metal/ingot/tin>,<tfc:metal/ingot/zinc>,<tfc:metal/ingot/sterling_silver>,
<tfc:metal/ingot/wrought_iron>,<tfc:metal/ingot/pig_iron>,<tfc:metal/ingot/steel>,<tfc:metal/ingot/platinum>,<tfc:metal/ingot/black_steel>,
<tfc:metal/ingot/blue_steel>,<tfc:metal/ingot/red_steel>,<tfc:metal/ingot/antimony>,<tfc:metal/ingot/constantan>,
<tfc:metal/ingot/electrum>,<tfc:metal/ingot/mithril>,<tfc:metal/ingot/invar>,<tfc:metal/ingot/aluminium>,<tfc:metal/ingot/aluminium_brass>,
<tfc:metal/ingot/ardite>,<tfc:metal/ingot/cobalt>,<tfc:metal/ingot/manyullyn>,<tfc:metal/ingot/osmium>,<tfc:metal/ingot/titanium>,
<tfc:metal/ingot/tungsten>,<tfc:metal/ingot/tungsten_steel>] as IItemStack[];

for i, ingot in ingots{
mods.tconstruct.Casting.addTableRecipe(ingot,<tfc:ceramics/fired/mold/ingot>, molten_metals[i], 144, false, 240);
} 

for i, rackwheel in rackwheels{
mods.tconstruct.Casting.addTableRecipe(rackwheel, <tconstruct:cast_custom:4>, molten_metals[i], 576, false, 240);
mods.embers.Stamper.add(rackwheel,molten_metals[i]*576,<embers:stamp_gear>,null);
}

//Gears from Embers
val StampedGears = [<mysticalmechanics:gear_iron>,<mysticalmechanics:gear_gold>,<mystgears:gear_lead>,<mystgears:gear_copper>,
<mystgears:gear_tin>,<mystgears:gear_bronze>,<mystgears:gear_nickel>,<mystgears:gear_silver>,<mystgears:gear_electrum>,
<mystgears:gear_aluminium>,<mystgears:gear_antimony>] as IItemStack[];
for i, SG in StampedGears{
mods.embers.Stamper.remove(SG);
}

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
mods.forestry.Carpenter.addRecipe(<contenttweaker:wax_anvil>,[
    [<forestry:beeswax>,<forestry:beeswax>,<forestry:beeswax>],
    [null,<forestry:beeswax>,null],
    [<forestry:beeswax>,<forestry:beeswax>,<forestry:beeswax>]],30,<liquid:water>*150);

recipes.addShaped(<contenttweaker:anvilmold>,[
	[<minecraft:sand>,<minecraft:sand>,<minecraft:sand>],
	[<minecraft:sand>,<contenttweaker:wax_anvil>,<minecraft:sand>],
	[<minecraft:sand>,<minecraft:sand>,<minecraft:sand>]]);	

for i, anvil in anvils{	
mods.tconstruct.Casting.addBasinRecipe(anvil, <contenttweaker:anvilmold>, molten_anvil_metals[i], 144*14, true, 3000);
}
#=============================================================================================================================================		

//Alloys
//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);

//Red Alloy
mods.tconstruct.Alloy.addRecipe(<liquid:red_alloy>*144, [<liquid:copper>*144,<liquid:redstone>*576]);
mods.tconstruct.Casting.addTableRecipe(<tfc:metal/ingot/red_alloy>, <tconstruct:cast_custom>, <liquid:red_alloy>, 144, false, 240);

//Bismuth Bronze
mods.tconstruct.Alloy.addRecipe(<liquid:bismuth_bronze>*144, [<liquid:bismuth>*144,<liquid:zinc>*288,<liquid:copper>*576]);
//Black Bronze
mods.tconstruct.Alloy.addRecipe(<liquid:black_bronze>*144, [<liquid:gold>*288,<liquid:silver>*288,<liquid:copper>*720]);
//Brass
mods.tconstruct.Alloy.removeRecipe(<liquid:brass>);
mods.tconstruct.Alloy.addRecipe(<liquid:brass>*144, [<liquid:zinc>*144,<liquid:copper>*864]);
//Bronze
mods.tconstruct.Alloy.removeRecipe(<liquid:bronze>);
mods.tconstruct.Alloy.addRecipe(<liquid:bronze>*144, [<liquid:tin>*144,<liquid:copper>*864]);
//Rose Gold
mods.tconstruct.Alloy.addRecipe(<liquid:rose_gold>*144, [<liquid:copper>*144,<liquid:gold>*720]);
//Sterling Silver
mods.tconstruct.Alloy.addRecipe(<liquid:sterling_silver>*144, [<liquid:copper>*288,<liquid:silver>*576]);
//Steel
mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);
//Weak Steel
mods.tconstruct.Alloy.addRecipe(<liquid:weak_steel>*144, [<liquid:black_bronze>*144,<liquid:nickel>*288,<liquid:steel>*720]);
//Weak Blue Steel
mods.tconstruct.Alloy.addRecipe(<liquid:weak_blue_steel>*144, [<liquid:bismuth_bronze>*144,<liquid:sterling_silver>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Weak Red Steel
mods.tconstruct.Alloy.addRecipe(<liquid:weak_red_steel>*144, [<liquid:brass>*144,<liquid:rose_gold>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Constantan
mods.tconstruct.Alloy.addRecipe(<liquid:constantan>*144, [<liquid:copper>*432,<liquid:nickel>*432]);
//Electrum
mods.tconstruct.Alloy.removeRecipe(<liquid:electrum>);
mods.tconstruct.Alloy.addRecipe(<liquid:electrum>*144, [<liquid:silver>*432,<liquid:gold>*432]);
//Invar
mods.tconstruct.Alloy.addRecipe(<liquid:invar>*144, [<liquid:nickel>*288,<liquid:iron>*432]);
//Aluminium Brass
mods.tconstruct.Alloy.removeRecipe(<liquid:alubrass>);
mods.tconstruct.Alloy.addRecipe(<liquid:alubrass>*144, [<liquid:copper>*288,<liquid:aluminium>*576]);
//Manyullyn
mods.tconstruct.Alloy.removeRecipe(<liquid:manyullyn>);
mods.tconstruct.Alloy.addRecipe(<liquid:manyullyn>*144, [<liquid:ardite>*432,<liquid:cobalt>*432]);
//Tungsten Steel
mods.tconstruct.Alloy.addRecipe(<liquid:tungsten_steel>*144, [<liquid:tungsten>*144,<liquid:steel>*720]);
//Mithril
mods.tconstruct.Alloy.addRecipe(<liquid:mithril>*144, [<liquid:antimony>*144,<liquid:copper>*864]);
#=============================================================================================================================================		

