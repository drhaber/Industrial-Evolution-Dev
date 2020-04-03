import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

#mods.embers.Stamper.add(IItemStack <output>,ILiquidStack <liquid>,IIngredient <stamp>,IIngredient <input>);
//AE2 Inscriber Plates
mods.embers.Stamper.add(<appliedenergistics2:material:14>,<liquid:iron>*576,<contenttweaker:fired_material_engineering_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:13>,<liquid:iron>*576,<contenttweaker:fired_material_calculation_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:15>,<liquid:iron>*576,<contenttweaker:fired_material_logic_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:19>,<liquid:iron>*576,<contenttweaker:fired_material_silicon_press>,null);

//Liquid Catalyst
#mods.tconstruct.Melting.addRecipe(<liquid:liquidcatalyst> * 4000,<botania:alchemycatalyst>, 350);

//Illumar
val dyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];
val Illumar = <projectred-core:resource_item>.definition;
for i in 0 to 16{
recipes.remove(Illumar.makeStack(i+500));
mods.embers.Stamper.add(Illumar.makeStack(i+500),<liquid:glowstone>*250,<embers:stamp_flat>,dyes[i]);
}

//Shard
mods.embers.Melter.add(<liquid:glass>*250,<ore:shardGlass>);
//Crystals
val ReducedDyes = [<ore:dyeWhite>,<ore:dyeRed>,<ore:dyeOrange>,<ore:dyeYellow>,<ore:dyeGreen>,<ore:dyeLightBlue>,<ore:dyeBlue>,<ore:dyePurple>,<ore:dyeBlack>] as IOreDictEntry[];
val crystalBlocks = <quark:crystal>.definition;
for i in 0 to 9{
mods.embers.Stamper.add(crystalBlocks.makeStack(i),<liquid:quartz>*125,<tfctech:ceramics/mold/glass_block>,ReducedDyes[i]);
<ore:crystalBlock>.add(crystalBlocks.makeStack(i));
}
mods.embers.Melter.add(<liquid:quartz>*666,<ore:dustQuartz>);

//Botania
	mods.embers.Melter.add(<liquid:elementium> * 1296, <botania:storage:2>);
	mods.embers.Melter.add(<liquid:elementium> * 144, <botania:manaresource:7>);
	mods.embers.Melter.add(<liquid:elementium> * 16, <botania:manaresource:19>);
	mods.embers.Stamper.add(<botania:storage:2>,<liquid:elementium>*1296,<tfctech:ceramics/mold/glass_block>,null);
	mods.embers.Stamper.add(<botania:manaresource:7>,<liquid:elementium>*144, <embers:stamp_bar>,null);
	mods.embers.Stamper.add(<botania:manaresource:19>,<liquid:elementium>*16, <soot:stamp_nugget>,null);
	//Manasteel
	mods.embers.Melter.add(<liquid:manasteel> * 1296, <botania:storage:0>);
	mods.embers.Melter.add(<liquid:manasteel> * 144, <botania:manaresource:0>);
	mods.embers.Melter.add(<liquid:manasteel> * 16, <botania:manaresource:17>);
	mods.embers.Stamper.add(<botania:storage:0>,<liquid:manasteel>*1296,<tfctech:ceramics/mold/glass_block>,null);
	mods.embers.Stamper.add(<botania:manaresource:0>,<liquid:manasteel>*144, <embers:stamp_bar>,null);
	mods.embers.Stamper.add(<botania:manaresource:17>,<liquid:manasteel>*16, <soot:stamp_nugget>,null);
	//Terrasteel
	mods.embers.Melter.add(<liquid:terrasteel> * 1296, <botania:storage:1>);
	mods.embers.Melter.add(<liquid:terrasteel> * 144, <botania:manaresource:4>);
	mods.embers.Melter.add(<liquid:terrasteel> * 16, <botania:manaresource:18>);
	mods.embers.Stamper.add(<botania:storage:1>,<liquid:terrasteel>*1296,<tfctech:ceramics/mold/glass_block>,null);
	mods.embers.Stamper.add(<botania:manaresource:4>,<liquid:terrasteel>*144, <embers:stamp_bar>,null);
	mods.embers.Stamper.add(<botania:manaresource:18>,<liquid:terrasteel>*16, <soot:stamp_nugget>,null);


//Casting Table TFC Tool Parts
val castingMetal = [<liquid:tungsten>,<liquid:black_bronze>,<liquid:red_steel>,<liquid:invar>,
<liquid:aluminium>,<liquid:iron>,<liquid:black_steel>,<liquid:mithril>,
<liquid:titanium>,<liquid:manyullyn>,<liquid:copper>,<liquid:osmium>,<liquid:steel>,
<liquid:tungsten_steel>,<liquid:bronze>,<liquid:blue_steel>,<liquid:cobalt>,<liquid:bismuth_bronze>] as ILiquidStack[];
#=============================================================================================================================================		

val axehead = [<tfc:metal/axe_head/tungsten>,<tfc:metal/axe_head/black_bronze>,<tfc:metal/axe_head/red_steel>,<tfc:metal/axe_head/invar>,
<tfc:metal/axe_head/aluminium>,<tfc:metal/axe_head/wrought_iron>,<tfc:metal/axe_head/black_steel>,<tfc:metal/axe_head/mithril>,
<tfc:metal/axe_head/titanium>,<tfc:metal/axe_head/manyullyn>,<tfc:metal/axe_head/copper>,<tfc:metal/axe_head/osmium>,<tfc:metal/axe_head/steel>,
<tfc:metal/axe_head/tungsten_steel>,<tfc:metal/axe_head/bronze>,<tfc:metal/axe_head/blue_steel>,<tfc:metal/axe_head/cobalt>,<tfc:metal/axe_head/bismuth_bronze>] as IItemStack[];

for i, ah in axehead{
mods.embers.Stamper.add(ah,castingMetal[i]*144, <tfc:ceramics/fired/mold/axe_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/axe_head/aluminium>,<tfc:ceramics/fired/mold/axe_head>,<liquid:aluminum>,144*ingots_axe,false,time_axe*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/axe_head/wrought_iron>,<tfc:ceramics/fired/mold/axe_head>,<liquid:iron>,144*ingots_axe,false,time_axe*20);
#=============================================================================================================================================		

val propickhead = [<tfc:metal/propick_head/tungsten>,<tfc:metal/propick_head/black_bronze>,<tfc:metal/propick_head/red_steel>,<tfc:metal/propick_head/invar>,
<tfc:metal/propick_head/aluminium>,<tfc:metal/propick_head/wrought_iron>,<tfc:metal/propick_head/black_steel>,<tfc:metal/propick_head/mithril>,
<tfc:metal/propick_head/titanium>,<tfc:metal/propick_head/manyullyn>,<tfc:metal/propick_head/copper>,<tfc:metal/propick_head/osmium>,<tfc:metal/propick_head/steel>,
<tfc:metal/propick_head/tungsten_steel>,<tfc:metal/propick_head/bronze>,<tfc:metal/propick_head/blue_steel>,<tfc:metal/propick_head/cobalt>,<tfc:metal/propick_head/bismuth_bronze>] as IItemStack[];

for i, ph in propickhead{
mods.embers.Stamper.add(ph,castingMetal[i]*144, <tfc:ceramics/fired/mold/propick_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/propick_head/aluminium>,<tfc:ceramics/fired/mold/propick_head>,<liquid:aluminum>,144*ingots_ProP,false,time_ProP*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/propick_head/wrought_iron>,<tfc:ceramics/fired/mold/propick_head>,<liquid:iron>,144*ingots_ProP,false,time_ProP*20);
#=============================================================================================================================================		

val pickhead = [<tfc:metal/pick_head/tungsten>,<tfc:metal/pick_head/black_bronze>,<tfc:metal/pick_head/red_steel>,<tfc:metal/pick_head/invar>,
<tfc:metal/pick_head/aluminium>,<tfc:metal/pick_head/wrought_iron>,<tfc:metal/pick_head/black_steel>,<tfc:metal/pick_head/mithril>,
<tfc:metal/pick_head/titanium>,<tfc:metal/pick_head/manyullyn>,<tfc:metal/pick_head/copper>,<tfc:metal/pick_head/osmium>,<tfc:metal/pick_head/steel>,
<tfc:metal/pick_head/tungsten_steel>,<tfc:metal/pick_head/bronze>,<tfc:metal/pick_head/blue_steel>,<tfc:metal/pick_head/cobalt>,<tfc:metal/pick_head/bismuth_bronze>] as IItemStack[];

for i, pah in pickhead{
mods.embers.Stamper.add(pah,castingMetal[i]*144, <tfc:ceramics/fired/mold/pick_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/pick_head/aluminium>,<tfc:ceramics/fired/mold/pick_head>,<liquid:aluminum>,144*ingots_PH,false,time_PH*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/pick_head/wrought_iron>,<tfc:ceramics/fired/mold/pick_head>,<liquid:iron>,144*ingots_PH,false,time_PH*20);
#=============================================================================================================================================		

val shovelhead = [<tfc:metal/shovel_head/tungsten>,<tfc:metal/shovel_head/black_bronze>,<tfc:metal/shovel_head/red_steel>,<tfc:metal/shovel_head/invar>,
<tfc:metal/shovel_head/aluminium>,<tfc:metal/shovel_head/wrought_iron>,<tfc:metal/shovel_head/black_steel>,<tfc:metal/shovel_head/mithril>,
<tfc:metal/shovel_head/titanium>,<tfc:metal/shovel_head/manyullyn>,<tfc:metal/shovel_head/copper>,<tfc:metal/shovel_head/osmium>,<tfc:metal/shovel_head/steel>,
<tfc:metal/shovel_head/tungsten_steel>,<tfc:metal/shovel_head/bronze>,<tfc:metal/shovel_head/blue_steel>,<tfc:metal/shovel_head/cobalt>,<tfc:metal/shovel_head/bismuth_bronze>] as IItemStack[];

for i, sh in shovelhead{
mods.embers.Stamper.add(sh,castingMetal[i]*144, <tfc:ceramics/fired/mold/shovel_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/shovel_head/aluminium>,<tfc:ceramics/fired/mold/shovel_head>,<liquid:aluminum>,144*ingots_SH,false,time_SH*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/shovel_head/wrought_iron>,<tfc:ceramics/fired/mold/shovel_head>,<liquid:iron>,144*ingots_SH,false,time_SH*20);


mods.embers.Stamper.add(<contenttweaker:gold_shovel_head>,<liquid:gold>*144, <tfc:ceramics/fired/mold/shovel_head>,null);
mods.embers.Stamper.add(<contenttweaker:obsidian_shovel_head>,<liquid:lava>*144, <tfc:ceramics/fired/mold/shovel_head>,<nuclearcraft:gem_dust:3>);
mods.embers.Stamper.add(<contenttweaker:manasteel_shovel_head>,<liquid:manasteel>*144, <tfc:ceramics/fired/mold/shovel_head>,null);
mods.embers.Stamper.add(<contenttweaker:diamond_shovel_head>,<liquid:diamond>*666, <tfc:ceramics/fired/mold/shovel_head>,<contenttweaker:manasteel_shovel_head>);

#=============================================================================================================================================		

val hoehead = [<tfc:metal/hoe_head/tungsten>,<tfc:metal/hoe_head/black_bronze>,<tfc:metal/hoe_head/red_steel>,<tfc:metal/hoe_head/invar>,
<tfc:metal/hoe_head/aluminium>,<tfc:metal/hoe_head/wrought_iron>,<tfc:metal/hoe_head/black_steel>,<tfc:metal/hoe_head/mithril>,
<tfc:metal/hoe_head/titanium>,<tfc:metal/hoe_head/manyullyn>,<tfc:metal/hoe_head/copper>,<tfc:metal/hoe_head/osmium>,<tfc:metal/hoe_head/steel>,
<tfc:metal/hoe_head/tungsten_steel>,<tfc:metal/hoe_head/bronze>,<tfc:metal/hoe_head/blue_steel>,<tfc:metal/hoe_head/cobalt>,<tfc:metal/hoe_head/bismuth_bronze>] as IItemStack[];

for i, hh in hoehead{
mods.embers.Stamper.add(hh,castingMetal[i]*144, <tfc:ceramics/fired/mold/hoe_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hoe_head/aluminium>,<tfc:ceramics/fired/mold/hoe_head>,<liquid:aluminum>,144*ingots_HH,false,time_HH*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hoe_head/wrought_iron>,<tfc:ceramics/fired/mold/hoe_head>,<liquid:iron>,144*ingots_HH,false,time_HH*20);
#=============================================================================================================================================		

val chiselhead = [<tfc:metal/chisel_head/tungsten>,<tfc:metal/chisel_head/black_bronze>,<tfc:metal/chisel_head/red_steel>,<tfc:metal/chisel_head/invar>,
<tfc:metal/chisel_head/aluminium>,<tfc:metal/chisel_head/wrought_iron>,<tfc:metal/chisel_head/black_steel>,<tfc:metal/chisel_head/mithril>,
<tfc:metal/chisel_head/titanium>,<tfc:metal/chisel_head/manyullyn>,<tfc:metal/chisel_head/copper>,<tfc:metal/chisel_head/osmium>,<tfc:metal/chisel_head/steel>,
<tfc:metal/chisel_head/tungsten_steel>,<tfc:metal/chisel_head/bronze>,<tfc:metal/chisel_head/blue_steel>,<tfc:metal/chisel_head/cobalt>,<tfc:metal/chisel_head/bismuth_bronze>] as IItemStack[];

for i, ch in chiselhead{
mods.embers.Stamper.add(ch,castingMetal[i]*144, <tfc:ceramics/fired/mold/chisel_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/chisel_head/aluminium>,<tfc:ceramics/fired/mold/chisel_head>,<liquid:aluminum>,144*ingots_CH,false,time_CH*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/chisel_head/wrought_iron>,<tfc:ceramics/fired/mold/chisel_head>,<liquid:iron>,144*ingots_CH,false,time_CH*20);
#=============================================================================================================================================		

val macehead = [<tfc:metal/mace_head/tungsten>,<tfc:metal/mace_head/black_bronze>,<tfc:metal/mace_head/red_steel>,<tfc:metal/mace_head/invar>,
<tfc:metal/mace_head/aluminium>,<tfc:metal/mace_head/wrought_iron>,<tfc:metal/mace_head/black_steel>,<tfc:metal/mace_head/mithril>,
<tfc:metal/mace_head/titanium>,<tfc:metal/mace_head/manyullyn>,<tfc:metal/mace_head/copper>,<tfc:metal/mace_head/osmium>,<tfc:metal/mace_head/steel>,
<tfc:metal/mace_head/tungsten_steel>,<tfc:metal/mace_head/bronze>,<tfc:metal/mace_head/blue_steel>,<tfc:metal/mace_head/cobalt>,<tfc:metal/mace_head/bismuth_bronze>] as IItemStack[];

for i, mh in macehead{
mods.embers.Stamper.add(mh,castingMetal[i]*144, <tfc:ceramics/fired/mold/mace_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/mace_head/aluminium>,<tfc:ceramics/fired/mold/mace_head>,<liquid:aluminum>,144*ingots_MH,false,time_MH*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/mace_head/wrought_iron>,<tfc:ceramics/fired/mold/mace_head>,<liquid:iron>,144*ingots_MH,false,time_MH*20);
#=============================================================================================================================================		

val javelinhead = [<tfc:metal/javelin_head/tungsten>,<tfc:metal/javelin_head/black_bronze>,<tfc:metal/javelin_head/red_steel>,<tfc:metal/javelin_head/invar>,
<tfc:metal/javelin_head/aluminium>,<tfc:metal/javelin_head/wrought_iron>,<tfc:metal/javelin_head/black_steel>,<tfc:metal/javelin_head/mithril>,
<tfc:metal/javelin_head/titanium>,<tfc:metal/javelin_head/manyullyn>,<tfc:metal/javelin_head/copper>,<tfc:metal/javelin_head/osmium>,<tfc:metal/javelin_head/steel>,
<tfc:metal/javelin_head/tungsten_steel>,<tfc:metal/javelin_head/bronze>,<tfc:metal/javelin_head/blue_steel>,<tfc:metal/javelin_head/cobalt>,<tfc:metal/javelin_head/bismuth_bronze>] as IItemStack[];

for i, jh in javelinhead{
mods.embers.Stamper.add(jh,castingMetal[i]*144, <tfc:ceramics/fired/mold/javelin_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/javelin_head/aluminium>,<tfc:ceramics/fired/mold/javelin_head>,<liquid:aluminum>,144*ingots_JH,false,time_JH*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/javelin_head/wrought_iron>,<tfc:ceramics/fired/mold/javelin_head>,<liquid:iron>,144*ingots_JH,false,time_JH*20);
#=============================================================================================================================================		

val swordblade = [<tfc:metal/sword_blade/tungsten>,<tfc:metal/sword_blade/black_bronze>,<tfc:metal/sword_blade/red_steel>,<tfc:metal/sword_blade/invar>,
<tfc:metal/sword_blade/aluminium>,<tfc:metal/sword_blade/wrought_iron>,<tfc:metal/sword_blade/black_steel>,<tfc:metal/sword_blade/mithril>,
<tfc:metal/sword_blade/titanium>,<tfc:metal/sword_blade/manyullyn>,<tfc:metal/sword_blade/copper>,<tfc:metal/sword_blade/osmium>,<tfc:metal/sword_blade/steel>,
<tfc:metal/sword_blade/tungsten_steel>,<tfc:metal/sword_blade/bronze>,<tfc:metal/sword_blade/blue_steel>,<tfc:metal/sword_blade/cobalt>,<tfc:metal/sword_blade/bismuth_bronze>] as IItemStack[];

for i, sob in swordblade{
mods.embers.Stamper.add(sob,castingMetal[i]*144, <tfc:ceramics/fired/mold/sword_blade>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/sword_blade/aluminium>,<tfc:ceramics/fired/mold/sword_blade>,<liquid:aluminum>,144*ingots_SoB,false,time_SoB*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/sword_blade/wrought_iron>,<tfc:ceramics/fired/mold/sword_blade>,<liquid:iron>,144*ingots_SoB,false,time_SoB*20);
#=============================================================================================================================================		

val sawblade = [<tfc:metal/saw_blade/tungsten>,<tfc:metal/saw_blade/black_bronze>,<tfc:metal/saw_blade/red_steel>,<tfc:metal/saw_blade/invar>,
<tfc:metal/saw_blade/aluminium>,<tfc:metal/saw_blade/wrought_iron>,<tfc:metal/saw_blade/black_steel>,<tfc:metal/saw_blade/mithril>,
<tfc:metal/saw_blade/titanium>,<tfc:metal/saw_blade/manyullyn>,<tfc:metal/saw_blade/copper>,<tfc:metal/saw_blade/osmium>,<tfc:metal/saw_blade/steel>,
<tfc:metal/saw_blade/tungsten_steel>,<tfc:metal/saw_blade/bronze>,<tfc:metal/saw_blade/blue_steel>,<tfc:metal/saw_blade/cobalt>,<tfc:metal/saw_blade/bismuth_bronze>] as IItemStack[];

for i, sb in sawblade{
mods.embers.Stamper.add(sb,castingMetal[i]*144, <tfc:ceramics/fired/mold/saw_blade>,null);
}
mods.embers.Stamper.add(<contenttweaker:diamond_saw_head>,<liquid:diamond>*144, <tfc:ceramics/fired/mold/saw_blade>,<tfc:metal/saw_blade/wrought_iron>);

#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/saw_blade/aluminium>,<tfc:ceramics/fired/mold/saw_blade>,<liquid:aluminum>,144*ingots_SB,false,time_SB*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/saw_blade/wrought_iron>,<tfc:ceramics/fired/mold/saw_blade>,<liquid:iron>,144*ingots_SB,false,time_SB*20);
#=============================================================================================================================================		

val knifeblade = [<tfc:metal/knife_blade/tungsten>,<tfc:metal/knife_blade/black_bronze>,<tfc:metal/knife_blade/red_steel>,<tfc:metal/knife_blade/invar>,
<tfc:metal/knife_blade/aluminium>,<tfc:metal/knife_blade/wrought_iron>,<tfc:metal/knife_blade/black_steel>,<tfc:metal/knife_blade/mithril>,
<tfc:metal/knife_blade/titanium>,<tfc:metal/knife_blade/manyullyn>,<tfc:metal/knife_blade/copper>,<tfc:metal/knife_blade/osmium>,<tfc:metal/knife_blade/steel>,
<tfc:metal/knife_blade/tungsten_steel>,<tfc:metal/knife_blade/bronze>,<tfc:metal/knife_blade/blue_steel>,<tfc:metal/knife_blade/cobalt>,<tfc:metal/knife_blade/bismuth_bronze>] as IItemStack[];

for i, kb in knifeblade{
mods.embers.Stamper.add(kb,castingMetal[i]*144, <tfc:ceramics/fired/mold/knife_blade>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/knife_blade/aluminium>,<tfc:ceramics/fired/mold/knife_blade>,<liquid:aluminum>,144*ingots_KB,false,time_KB*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/knife_blade/wrought_iron>,<tfc:ceramics/fired/mold/knife_blade>,<liquid:iron>,144*ingots_KB,false,time_KB*20);
#=============================================================================================================================================		

val scytheblade = [<tfc:metal/scythe_blade/tungsten>,<tfc:metal/scythe_blade/black_bronze>,<tfc:metal/scythe_blade/red_steel>,<tfc:metal/scythe_blade/invar>,
<tfc:metal/scythe_blade/aluminium>,<tfc:metal/scythe_blade/wrought_iron>,<tfc:metal/scythe_blade/black_steel>,<tfc:metal/scythe_blade/mithril>,
<tfc:metal/scythe_blade/titanium>,<tfc:metal/scythe_blade/manyullyn>,<tfc:metal/scythe_blade/copper>,<tfc:metal/scythe_blade/osmium>,<tfc:metal/scythe_blade/steel>,
<tfc:metal/scythe_blade/tungsten_steel>,<tfc:metal/scythe_blade/bronze>,<tfc:metal/scythe_blade/blue_steel>,<tfc:metal/scythe_blade/cobalt>,<tfc:metal/scythe_blade/bismuth_bronze>] as IItemStack[];

for i, syb in scytheblade{
mods.embers.Stamper.add(syb,castingMetal[i]*144, <tfc:ceramics/fired/mold/scythe_blade>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/scythe_blade/aluminium>,<tfc:ceramics/fired/mold/scythe_blade>,<liquid:aluminum>,144*ingots_SyB,false,time_SyB*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/scythe_blade/wrought_iron>,<tfc:ceramics/fired/mold/scythe_blade>,<liquid:iron>,144*ingots_SyB,false,time_SyB*20);
#=============================================================================================================================================		

val hammerhead = [<tfc:metal/hammer_head/tungsten>,<tfc:metal/hammer_head/black_bronze>,<tfc:metal/hammer_head/red_steel>,<tfc:metal/hammer_head/invar>,
<tfc:metal/hammer_head/aluminium>,<tfc:metal/hammer_head/wrought_iron>,<tfc:metal/hammer_head/black_steel>,<tfc:metal/hammer_head/mithril>,
<tfc:metal/hammer_head/titanium>,<tfc:metal/hammer_head/manyullyn>,<tfc:metal/hammer_head/copper>,<tfc:metal/hammer_head/osmium>,<tfc:metal/hammer_head/steel>,
<tfc:metal/hammer_head/tungsten_steel>,<tfc:metal/hammer_head/bronze>,<tfc:metal/hammer_head/blue_steel>,<tfc:metal/hammer_head/cobalt>,<tfc:metal/hammer_head/bismuth_bronze>] as IItemStack[];

for i, HamH in hammerhead{
mods.embers.Stamper.add(HamH,castingMetal[i]*144, <tfc:ceramics/fired/mold/hammer_head>,null);
}
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hammer_head/aluminium>,<tfc:ceramics/fired/mold/hammer_head>,<liquid:aluminum>,144*ingots_HamH,false,time_HamH*20);
#mods.tconstruct.Casting.addTableRecipe(<tfc:metal/hammer_head/wrought_iron>,<tfc:ceramics/fired/mold/hammer_head>,<liquid:iron>,144*ingots_HamH,false,time_HamH*20);

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
<liquid:iron>,<liquid:pig_iron>,<liquid:steel>,<liquid:platinum>,<liquid:black_steel>,
<liquid:blue_steel>,<liquid:red_steel>,<liquid:antimony>,<liquid:constantan>,
<liquid:electrum>,<liquid:mithril>,<liquid:invar>,<liquid:aluminium>,<liquid:aluminium_brass>,
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
mods.embers.Stamper.add(ingot,molten_metals[i]*144,<embers:stamp_bar>,null);
} 
mods.embers.Stamper.add(<tfc:metal/ingot/red_alloy>,<liquid:red_alloy>*144, <embers:stamp_bar>,null);

for i, rackwheel in rackwheels{
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
<liquid:iron>,<liquid:steel>,<liquid:black_steel>,
<liquid:blue_steel>,<liquid:red_steel>,
<liquid:mithril>,<liquid:invar>,<liquid:aluminium>,
<liquid:cobalt>,<liquid:manyullyn>,<liquid:osmium>,<liquid:titanium>,
<liquid:tungsten>,<liquid:tungsten_steel>] as ILiquidStack[];

//Plates
val sheets = [<tfc:metal/sheet/bismuth>,<tfc:metal/sheet/bismuth_bronze>,<tfc:metal/sheet/black_bronze>,<tfc:metal/sheet/brass>,
<tfc:metal/sheet/bronze>,<tfc:metal/sheet/copper>,<tfc:metal/sheet/gold>,<tfc:metal/sheet/lead>,<tfc:metal/sheet/nickel>,
<tfc:metal/sheet/rose_gold>,<tfc:metal/sheet/silver>,<tfc:metal/sheet/tin>,<tfc:metal/sheet/zinc>,<tfc:metal/sheet/sterling_silver>,
<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/pig_iron>,<tfc:metal/sheet/steel>,<tfc:metal/sheet/platinum>,<tfc:metal/sheet/black_steel>,
<tfc:metal/sheet/blue_steel>,<tfc:metal/sheet/red_steel>,<tfc:metal/sheet/antimony>,<tfc:metal/sheet/constantan>,
<tfc:metal/sheet/electrum>,<tfc:metal/sheet/mithril>,<tfc:metal/sheet/invar>,<tfc:metal/sheet/aluminium>,<tfc:metal/sheet/aluminium_brass>,
<tfc:metal/sheet/ardite>,<tfc:metal/sheet/cobalt>,<tfc:metal/sheet/manyullyn>,<tfc:metal/sheet/osmium>,<tfc:metal/sheet/titanium>,
<tfc:metal/sheet/tungsten>,<tfc:metal/sheet/tungsten_steel>] as IItemStack[];
for sheet in sheets{
mods.nuclearcraft.pressurizer.removeRecipeWithOutput(sheet);
}
mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<tfc:metal/sheet/nickel_silver>);
mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<tfc:metal/sheet/red_alloy>);

for i, sheet in sheets{
mods.embers.Stamper.add(sheet,molten_metals[i]*288,<embers:stamp_plate>);
} 

/*
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
}*/

//Metal Fixes
mods.embers.Melter.remove(<liquid:aluminum>*144);
mods.embers.Melter.remove(<liquid:aluminum>*16);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*360);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*144);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*16);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*1296);
mods.nuclearcraft.ingot_former.removeRecipeWithInput(<liquid:aluminum>*144);
mods.nuclearcraft.electrolyser.removeRecipeWithInput(<liquid:alumina>*144);
mods.nuclearcraft.electrolyser.addRecipe(<liquid:alumina>*144, <liquid:aluminium>*288, <liquid:oxygen>*3000, null, null);

mods.embers.Melter.add(<liquid:aluminium>*144,<ore:dustAluminium>); 
mods.embers.Melter.add(<liquid:aluminium>*144,<ore:ingotAluminium>);
mods.embers.Melter.add(<liquid:aluminium>*144,<ore:scrapAluminium>);
mods.embers.Melter.add(<liquid:aluminium>*144,<ore:sheetAluminium>);

mods.embers.Melter.add(<liquid:aluminium>*16,<ore:nuggetAluminium>);

mods.embers.Melter.add(<liquid:aluminium>*144,<ore:dustAluminum>);
mods.embers.Melter.add(<liquid:aluminium>*144,<ore:ingotAluminum>);

//Redstone Alchemical Slurry
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1008);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*144);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1296);

mods.embers.Melter.add(<liquid:redstone>*144,<ore:dustRedstone>); 
mods.embers.Melter.add(<liquid:redstone>*1296,<ore:blockRedstone>); 

mods.embers.Mixer.add(<liquid:alchemical_redstone>*288, [<liquid:liquidchorus>*125,<liquid:redstone>*144,<liquid:menrilresin>*250]);

#=============================================================================================================================================		

//Alloys
//mods.embers.Mixer.add(ILiquidStack <outputfluid>,ILiquidStack [<inputfluid1>,<inputfluid2>,<inputfluid3>,...]);

//Red Alloy
mods.embers.Mixer.add(<liquid:red_alloy>*144, [<liquid:copper>*144,<liquid:redstone>*576]);

//Bismuth Bronze
mods.embers.Mixer.add(<liquid:bismuth_bronze>*144, [<liquid:bismuth>*144,<liquid:zinc>*288,<liquid:copper>*576]);
//Black Bronze
mods.embers.Mixer.add(<liquid:black_bronze>*144, [<liquid:gold>*288,<liquid:silver>*288,<liquid:copper>*720]);
//Brass
mods.embers.Mixer.add(<liquid:brass>*144, [<liquid:zinc>*144,<liquid:copper>*864]);
//Bronze
mods.embers.Mixer.remove(<liquid:bronze>*8);	
mods.embers.Mixer.add(<liquid:bronze>*144, [<liquid:tin>*144,<liquid:copper>*864]);
//Rose Gold
mods.embers.Mixer.add(<liquid:rose_gold>*144, [<liquid:copper>*144,<liquid:gold>*720]);
//Sterling Silver
mods.embers.Mixer.add(<liquid:sterling_silver>*144, [<liquid:copper>*288,<liquid:silver>*576]);
//Steel
//Weak Steel
mods.embers.Mixer.add(<liquid:weak_steel>*144, [<liquid:black_bronze>*144,<liquid:nickel>*288,<liquid:steel>*720]);
//Weak Blue Steel
mods.embers.Mixer.add(<liquid:weak_blue_steel>*144, [<liquid:bismuth_bronze>*144,<liquid:sterling_silver>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Weak Red Steel
mods.embers.Mixer.add(<liquid:weak_red_steel>*144, [<liquid:brass>*144,<liquid:rose_gold>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Constantan
mods.embers.Mixer.add(<liquid:constantan>*144, [<liquid:copper>*432,<liquid:nickel>*432]);
//Electrum
mods.embers.Mixer.remove(<liquid:electrum>*8);	
mods.embers.Mixer.add(<liquid:electrum>*144, [<liquid:silver>*432,<liquid:gold>*432]);
//Invar
mods.embers.Mixer.add(<liquid:invar>*144, [<liquid:nickel>*288,<liquid:iron>*432]);
//Aluminium Brass
mods.embers.Mixer.add(<liquid:aluminium_brass>*144, [<liquid:copper>*288,<liquid:aluminium>*576]);
//Manyullyn
mods.embers.Mixer.add(<liquid:manyullyn>*144, [<liquid:ardite>*432,<liquid:cobalt>*432]);
//Tungsten Steel
mods.embers.Mixer.add(<liquid:tungsten_steel>*144, [<liquid:tungsten>*144,<liquid:steel>*720]);
//Mithril
mods.embers.Mixer.add(<liquid:mithril>*144, [<liquid:antimony>*144,<liquid:copper>*864]);
#=============================================================================================================================================		
