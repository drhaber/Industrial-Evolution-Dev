import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

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
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:14>, <contenttweaker:fired_material_engineering_processor_press>, <liquid:iron>, 144);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:13>, <contenttweaker:fired_material_calculation_processor_press>, <liquid:iron>, 144);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:15>, <contenttweaker:fired_material_logic_processor_press>, <liquid:iron>, 144);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:19>, <contenttweaker:fired_material_silicon_press>, <liquid:iron>, 144);
recipes.remove(<tconstruct:stone_stick>);

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









/*
for items in <ore:axeHead>.items {
    print(items.commandString);
}
val material = [	"wood","stone","flint","cactus","bone","obsidian",
	"prismarine","endstone","paper","sponge","firewood",
	"iron","pigiron","knightslime","slime","blueslime",
	"magmaslime","netherrack","cobalt","ardite","manyullyn",
	"copper","bronze","lead","silver","electrum","steel",
	"string","slimevine_blue","slimevine_purple","vine",
	"blaze","reed","ice","endrod","feather","slimeleaf_blue",
	"slimeleaf_orange","slimeleaf_purple","leaf","treatedwood",
	"hemp","constantan","boron","tough","hard_carbon",
	"boron_nitride","thorium","uranium","magnesium",
	"chocolate","black_steel","blue_steel","red_steel",
	"sterling_silver","rose_gold","wrought_iron","bismuth",
	"bismuth_bronze","black_bronze","zinc","platinum","nickel"] as string[];
	
val ToolPart = [<tconstruct:sharpening_kit>,<tconstruct:pick_head>,<tconstruct:shovel_head>,<tconstruct:axe_head>,
<tconstruct:sword_blade>,<tconstruct:hammer_head>,<tconstruct:excavator_head>,<tconstruct:kama_head>,
<tconstruct:pan_head>,<tconstruct:sign_head>,<tconstruct:tool_rod>,<tconstruct:tough_tool_rod>,<tconstruct:binding>,<tconstruct:wide_guard>,
<tconstruct:hand_guard>,<tconstruct:cross_guard>,<tconstruct:large_plate>,<tconstruct:knife_blade>] as IItemStack[];

for mat in material {
	for TP in ToolPart{
	mods.tconstruct.Casting.removeTableRecipe(TP.withTag({Material: mat}));
	mods.jei.JEI.hide(TP.withTag({Material: mat}));
	}
}
*/