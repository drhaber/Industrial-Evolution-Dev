import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import moretweaker.railcraft.RollingMachine;

//Cheaper Glass Machines
recipes.remove(<tfctech:smeltery_firebox>);
recipes.addShaped(<tfctech:smeltery_firebox>,[
	[<tfctech:metal/black_bronze_long_rod>,<tfc:ceramics/fired/fire_brick>,<tfctech:metal/black_bronze_long_rod>],
	[<tfc:ceramics/fired/fire_brick>,null,<tfc:ceramics/fired/fire_brick>],
	[<tfctech:metal/black_bronze_long_rod>,<tfc:ceramics/fired/fire_brick>,<tfctech:metal/black_bronze_long_rod>]]);
recipes.remove(<tfctech:smeltery_cauldron>);
recipes.addShaped(<tfctech:smeltery_cauldron>,[
	[<ore:sheetBlackBronze>,<ore:sheetBlackBronze>,<ore:sheetBlackBronze>],
	[<ore:sheetBlackBronze>,null,<ore:sheetBlackBronze>],
	[<tfctech:metal/black_bronze_long_rod>,null,<tfctech:metal/black_bronze_long_rod>]]);	
//Cheaper Buckets
mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/bucket/red_steel>);
<tfc:metal/bucket/red_steel>.displayName = "Copper Bucket";
RollingMachine.addShapeless(<tfc:metal/bucket/red_steel>, [<ore:sheetDoubleCopper>]);
mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/bucket/blue_steel>);
<tfc:metal/bucket/blue_steel>.displayName = "Mithril Bucket";
RollingMachine.addShapeless(<tfc:metal/bucket/blue_steel>, [<ore:sheetDoubleMithril>]);
//Wrench Head
mods.terrafirmacraft.Anvil.addRecipe("Iron_Wrench_Head", <ore:ingotWroughtIron>, <contenttweaker:ironwrenchhead>, 3, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
//Coals
furnace.setFuel(<tfc:ore/bituminous_coal>, 1600);
furnace.setFuel(<tfc:ore/lignite>, 800);
//Bowl
<tfc:ceramics/fired/bowl>.displayName = "Clay Bowl";
//Hot Water
val fluidcontainers = [<tfc:wooden_bucket>,<minecraft:bucket>,<tfc:metal/bucket/red_steel>,<forestry:can>,<forestry:refractory>,<tfctech:ceramics/fluid_bowl>] as IItemStack[];
for i, FC in fluidcontainers {
mods.inspirations.Cauldron.addFluidRecipe(FC.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}}), FC, <liquid:water>, 4, true);
}
//Sleeves
recipes.addShaped(<tfctech:metal/tin_sleeve>*4,[
	[null,<ore:sheetTin>,null],
	[<ore:sheetTin>,<ore:chisel>.transformDamage(4),<ore:sheetTin>],
	[null,<ore:sheetTin>,null]]);
recipes.addShaped(<tfctech:metal/brass_sleeve>*4,[
	[null,<ore:sheetBrass>,null],
	[<ore:sheetBrass>,<ore:chisel>.transformDamage(4),<ore:sheetBrass>],
	[null,<ore:sheetBrass>,null]]);
recipes.addShaped(<tfctech:metal/steel_sleeve>*4,[
	[null,<ore:sheetSteel>,null],
	[<ore:sheetSteel>,<ore:chisel>.transformDamage(4),<ore:sheetSteel>],
	[null,<ore:sheetSteel>,null]]);
//Soot
mods.terrafirmacraft.Quern.addRecipe("Soot", <ore:charcoal>, <contenttweaker:soot>*4);
//Saw Dust
mods.terrafirmacraft.Quern.addRecipe("Sawdust", <ore:logWood>, <tfctech:powder/wood>*4);
//Flux from Soot and Potash
recipes.addShapeless(<tfc:powder/flux>*2,[<contenttweaker:soot>,<tfctech:powder/potash>,<botania:pestleandmortar>.giveBack()]);							

//TFC Coal Stack Size
<tfc:ore/bituminous_coal>.maxStackSize = 32;
//Silicon
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:250>, 0.35, 1600 , false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:300>, 0.35, 1600 , false);
mods.terrafirmacraft.Heating.addRecipe("Primitive_Silicon", <projectred-core:resource_item:250>, <projectred-core:resource_item:300>, 1300, 1600 );
//Seared Brick
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:soil>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:seared:1>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("Seared_Brick", <tconstruct:soil>, <tconstruct:seared:1>, 1500, 3200);
//Fire Clay
recipes.addShaped(<tfc:ceramics/fire_clay>,[
	[<contenttweaker:bauxitedust>,<ore:dustGraphite>,<contenttweaker:bauxitedust>],
	[<ore:dustGraphite>,<ore:clay>,<ore:dustGraphite>],
	[<contenttweaker:bauxitedust>,<ore:dustGraphite>,<contenttweaker:bauxitedust>]]);
/*	
//Iron Ore Tool Tip
val oreIrons = [<tfc:ore/hematite>,<tfc:ore/hematite:1>,<tfc:ore/hematite:2>,<tfc:ore/small/hematite>,
<tfc:ore/magnetite>,<tfc:ore/magnetite:1>,<tfc:ore/magnetite:2>,<tfc:ore/small/magnetite>,
<tfc:ore/limonite>,<tfc:ore/limonite:1>,<tfc:ore/limonite:2>,<tfc:ore/small/limonite>] as IItemStack[];
for i, oreIron in oreIrons{
oreIron.addTooltip(format.red("This ore is unprocessed!"));
mods.jei.JEI.addDescription(oreIron,"This ore is unprocessed, in order to acquire Wrought Iron Ingots or use it in alloys one must first process it in a bloomery.");
}
*/
//Bauxite Dust
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_rich",<ore:oreAluminiumRich>,<contenttweaker:bauxitedust>*7);
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_normal",<ore:oreAluminiumNormal>,<contenttweaker:bauxitedust>*5);
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_poor",<ore:oreAluminiumPoor>,<contenttweaker:bauxitedust>*3);
mods.terrafirmacraft.Quern.addRecipe("bauxite_dust_small",<ore:oreAluminiumSmall>,<contenttweaker:bauxitedust>*2);
//Unfired Glass Block 
mods.terrafirmacraft.ClayKnapping.removeRecipe(<tfctech:ceramics/unfired/glass_block>);
mods.terrafirmacraft.ClayKnapping.addRecipe("Glass_Block_Knap", <tfctech:ceramics/unfired/glass_block>, 
																	"X   X", 
																	"X   X", 
																	"X   X", 
																	"XXXXX", 
																	"     ");

//Casts
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_engineering_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_calculation_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_logic_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_material_silicon_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_engineering_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_calculation_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_logic_processor_press>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:fired_material_silicon_press>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("Engineering_Kiln", <contenttweaker:unfired_material_engineering_processor_press>, <contenttweaker:fired_material_engineering_processor_press>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Calculation_Kiln", <contenttweaker:unfired_material_calculation_processor_press>, <contenttweaker:fired_material_calculation_processor_press>, 1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Logic_Kiln", <contenttweaker:unfired_material_logic_processor_press>, <contenttweaker:fired_material_logic_processor_press>,1500, 3200);
mods.terrafirmacraft.Heating.addRecipe("Silicon_Kiln", <contenttweaker:unfired_material_silicon_press>, <contenttweaker:fired_material_silicon_press>, 1500, 3200);

mods.terrafirmacraft.ClayKnapping.addRecipe("Engineering_Knap", <contenttweaker:unfired_material_engineering_processor_press>, 
																	"XX  X", 
																	"X X X", 
																	"XXXXX", 
																	"X X X", 
																	"X  XX");
																   
mods.terrafirmacraft.ClayKnapping.addRecipe("Calculation_Knap", <contenttweaker:unfired_material_calculation_processor_press>, 
																	"  X X", 
																	"  XX ", 
																	"XXXXX", 
																	" XX  ", 
																	"X X  ");

mods.terrafirmacraft.ClayKnapping.addRecipe("Logic_Knap", <contenttweaker:unfired_material_logic_processor_press>, 
																	"  X  ", 
																	"  XX ", 
																	"XXXXX", 
																	" XX  ", 
																	"  X  ");

mods.terrafirmacraft.ClayKnapping.addRecipe("Silicon_Knap", <contenttweaker:unfired_material_silicon_press>, 
																	"X X X", 
																	" XXX ", 
																	"XX XX", 
																	" XXX ", 
																	"X X X");

mods.terrafirmacraft.StoneKnapping.addRecipe("Stone_Rod", [<tconstruct:stone_stick>*2], ["all"],
																	"    X", 
																	"   X ", 
																	"  X  ", 
																	" X   ", 
																	"X    ");
mods.terrafirmacraft.LeatherKnapping.addRecipe("Little_Bag_Knap", <contenttweaker:leatherbag>, 
																	"  X  ", 
																	"XXXXX", 
																	"X   X", 
																	"X   X", 
																	"XXXXX");	
mods.terrafirmacraft.LeatherKnapping.addRecipe("leather_glove_Knap", <contenttweaker:leatherglove>, 
																	"X X X", 
																	"X X X", 
																	"XXXXX", 
																	"XXXXX", 
																	" XXX ");
mods.terrafirmacraft.LeatherKnapping.addRecipe("lead_Knap", <minecraft:lead>*3, 
																	"XXXXX", 
																	"X   X", 
																	"XXXXX", 
																	"   X ", 
																	"XXX  ");	
mods.tfctech.Glassworking.addRecipe("splash_bottle_knap", <inspirations:materials:2>*2,
																	"   X ", 
																	"  X  ", 
																	" X X ", 
																	"X   X", 
																	" XXX ");
mods.tfctech.Glassworking.addRecipe("lingering_bottle_knap", <inspirations:materials:3>,
																	" X X ", 
																	"  X  ", 
																	" XXX ", 
																	"X   X", 
																	" XXX ");
mods.tfctech.Glassworking.addRecipe("quick_vial_knap", <extraalchemy:vial_break>*3,
																	"  X  ", 
																	" X X ", 
																	" X X ", 
																	" X X ", 
																	" XXX ");																																																																																																																									
#=============================================================================================================================================		
//Removed Cause Knapping
recipes.remove(<minecraft:lead>);
recipes.remove(<inspirations:materials:2>);
recipes.remove(<inspirations:materials:3>);
recipes.remove(<extraalchemy:vial_break>);
recipes.remove(<minecraft:glass_bottle>);
//TFC Mettallum Missing Recipes																	
//Anvils
val Anvils = [<tfc:metal/anvil/mithril>,<tfc:metal/anvil/invar>,<tfc:metal/anvil/aluminium>,<tfc:metal/anvil/cobalt>,<tfc:metal/anvil/manyullyn>,<tfc:metal/anvil/osmium>,<tfc:metal/anvil/titanium>,<tfc:metal/anvil/tungsten>,<tfc:metal/anvil/tungsten_steel>] as IItemStack[];
val DBI = [<tfc:metal/double_ingot/mithril>,<tfc:metal/double_ingot/invar>,<tfc:metal/double_ingot/aluminium>,<tfc:metal/double_ingot/cobalt>,<tfc:metal/double_ingot/manyullyn>,<tfc:metal/double_ingot/osmium>,<tfc:metal/double_ingot/titanium>,<tfc:metal/double_ingot/tungsten>,<tfc:metal/double_ingot/tungsten_steel>] as IItemStack[];
for i, anvil in Anvils{
recipes.addShaped(anvil,[
	[DBI[i],DBI[i],DBI[i]],
	[null,DBI[i],null],
	[DBI[i],DBI[i],DBI[i]]]);
}
//Missing Tools																	
val missing_heads = [<tfc:metal/axe_head/mithril>,<tfc:metal/axe_head/invar>,<tfc:metal/axe_head/aluminium>,<tfc:metal/axe_head/cobalt>,<tfc:metal/axe_head/manyullyn>,<tfc:metal/axe_head/osmium>,<tfc:metal/axe_head/titanium>,<tfc:metal/axe_head/tungsten>,<tfc:metal/axe_head/tungsten_steel>
,<tfc:metal/propick_head/mithril>,<tfc:metal/propick_head/invar>,<tfc:metal/propick_head/aluminium>,<tfc:metal/propick_head/cobalt>,<tfc:metal/propick_head/manyullyn>,<tfc:metal/propick_head/osmium>,<tfc:metal/propick_head/titanium>,<tfc:metal/propick_head/tungsten>,<tfc:metal/propick_head/tungsten_steel>
,<tfc:metal/pick_head/mithril>,<tfc:metal/pick_head/invar>,<tfc:metal/pick_head/aluminium>,<tfc:metal/pick_head/cobalt>,<tfc:metal/pick_head/manyullyn>,<tfc:metal/pick_head/osmium>,<tfc:metal/pick_head/titanium>,<tfc:metal/pick_head/tungsten>,<tfc:metal/pick_head/tungsten_steel>
,<tfc:metal/shovel_head/mithril>,<tfc:metal/shovel_head/invar>,<tfc:metal/shovel_head/aluminium>,<tfc:metal/shovel_head/cobalt>,<tfc:metal/shovel_head/manyullyn>,<tfc:metal/shovel_head/osmium>,<tfc:metal/shovel_head/titanium>,<tfc:metal/shovel_head/tungsten>,<tfc:metal/shovel_head/tungsten_steel>
,<tfc:metal/hoe_head/mithril>,<tfc:metal/hoe_head/invar>,<tfc:metal/hoe_head/aluminium>,<tfc:metal/hoe_head/cobalt>,<tfc:metal/hoe_head/manyullyn>,<tfc:metal/hoe_head/osmium>,<tfc:metal/hoe_head/titanium>,<tfc:metal/hoe_head/tungsten>,<tfc:metal/hoe_head/tungsten_steel>
,<tfc:metal/chisel_head/mithril>,<tfc:metal/chisel_head/invar>,<tfc:metal/chisel_head/aluminium>,<tfc:metal/chisel_head/cobalt>,<tfc:metal/chisel_head/manyullyn>,<tfc:metal/chisel_head/osmium>,<tfc:metal/chisel_head/titanium>,<tfc:metal/chisel_head/tungsten>,<tfc:metal/chisel_head/tungsten_steel>
,<tfc:metal/mace_head/mithril>,<tfc:metal/mace_head/invar>,<tfc:metal/mace_head/aluminium>,<tfc:metal/mace_head/cobalt>,<tfc:metal/mace_head/manyullyn>,<tfc:metal/mace_head/osmium>,<tfc:metal/mace_head/titanium>,<tfc:metal/mace_head/tungsten>,<tfc:metal/mace_head/tungsten_steel>
,<tfc:metal/javelin_head/mithril>,<tfc:metal/javelin_head/invar>,<tfc:metal/javelin_head/aluminium>,<tfc:metal/javelin_head/cobalt>,<tfc:metal/javelin_head/manyullyn>,<tfc:metal/javelin_head/osmium>,<tfc:metal/javelin_head/titanium>,<tfc:metal/javelin_head/tungsten>,<tfc:metal/javelin_head/tungsten_steel>
,<tfc:metal/sword_blade/mithril>,<tfc:metal/sword_blade/invar>,<tfc:metal/sword_blade/aluminium>,<tfc:metal/sword_blade/cobalt>,<tfc:metal/sword_blade/manyullyn>,<tfc:metal/sword_blade/osmium>,<tfc:metal/sword_blade/titanium>,<tfc:metal/sword_blade/tungsten>,<tfc:metal/sword_blade/tungsten_steel>
,<tfc:metal/saw_blade/mithril>,<tfc:metal/saw_blade/invar>,<tfc:metal/saw_blade/aluminium>,<tfc:metal/saw_blade/cobalt>,<tfc:metal/saw_blade/manyullyn>,<tfc:metal/saw_blade/osmium>,<tfc:metal/saw_blade/titanium>,<tfc:metal/saw_blade/tungsten>,<tfc:metal/saw_blade/tungsten_steel>
,<tfc:metal/knife_blade/mithril>,<tfc:metal/knife_blade/invar>,<tfc:metal/knife_blade/aluminium>,<tfc:metal/knife_blade/cobalt>,<tfc:metal/knife_blade/manyullyn>,<tfc:metal/knife_blade/osmium>,<tfc:metal/knife_blade/titanium>,<tfc:metal/knife_blade/tungsten>,<tfc:metal/knife_blade/tungsten_steel>
,<tfc:metal/scythe_blade/mithril>,<tfc:metal/scythe_blade/invar>,<tfc:metal/scythe_blade/aluminium>,<tfc:metal/scythe_blade/cobalt>,<tfc:metal/scythe_blade/manyullyn>,<tfc:metal/scythe_blade/osmium>,<tfc:metal/scythe_blade/titanium>,<tfc:metal/scythe_blade/tungsten>,<tfc:metal/scythe_blade/tungsten_steel>] as IItemStack[];

val missing_tools = [<tfc:metal/axe/mithril>,<tfc:metal/axe/invar>,<tfc:metal/axe/aluminium>,<tfc:metal/axe/cobalt>,<tfc:metal/axe/manyullyn>,<tfc:metal/axe/osmium>,<tfc:metal/axe/titanium>,<tfc:metal/axe/tungsten>,<tfc:metal/axe/tungsten_steel>
,<tfc:metal/propick/mithril>,<tfc:metal/propick/invar>,<tfc:metal/propick/aluminium>,<tfc:metal/propick/cobalt>,<tfc:metal/propick/manyullyn>,<tfc:metal/propick/osmium>,<tfc:metal/propick/titanium>,<tfc:metal/propick/tungsten>,<tfc:metal/propick/tungsten_steel>
,<tfc:metal/pick/mithril>,<tfc:metal/pick/invar>,<tfc:metal/pick/aluminium>,<tfc:metal/pick/cobalt>,<tfc:metal/pick/manyullyn>,<tfc:metal/pick/osmium>,<tfc:metal/pick/titanium>,<tfc:metal/pick/tungsten>,<tfc:metal/pick/tungsten_steel>
,<tfc:metal/shovel/mithril>,<tfc:metal/shovel/invar>,<tfc:metal/shovel/aluminium>,<tfc:metal/shovel/cobalt>,<tfc:metal/shovel/manyullyn>,<tfc:metal/shovel/osmium>,<tfc:metal/shovel/titanium>,<tfc:metal/shovel/tungsten>,<tfc:metal/shovel/tungsten_steel>
,<tfc:metal/hoe/mithril>,<tfc:metal/hoe/invar>,<tfc:metal/hoe/aluminium>,<tfc:metal/hoe/cobalt>,<tfc:metal/hoe/manyullyn>,<tfc:metal/hoe/osmium>,<tfc:metal/hoe/titanium>,<tfc:metal/hoe/tungsten>,<tfc:metal/hoe/tungsten_steel>
,<tfc:metal/chisel/mithril>,<tfc:metal/chisel/invar>,<tfc:metal/chisel/aluminium>,<tfc:metal/chisel/cobalt>,<tfc:metal/chisel/manyullyn>,<tfc:metal/chisel/osmium>,<tfc:metal/chisel/titanium>,<tfc:metal/chisel/tungsten>,<tfc:metal/chisel/tungsten_steel>
,<tfc:metal/mace/mithril>,<tfc:metal/mace/invar>,<tfc:metal/mace/aluminium>,<tfc:metal/mace/cobalt>,<tfc:metal/mace/manyullyn>,<tfc:metal/mace/osmium>,<tfc:metal/mace/titanium>,<tfc:metal/mace/tungsten>,<tfc:metal/mace/tungsten_steel>
,<tfc:metal/javelin/mithril>,<tfc:metal/javelin/invar>,<tfc:metal/javelin/aluminium>,<tfc:metal/javelin/cobalt>,<tfc:metal/javelin/manyullyn>,<tfc:metal/javelin/osmium>,<tfc:metal/javelin/titanium>,<tfc:metal/javelin/tungsten>,<tfc:metal/javelin/tungsten_steel>
,<tfc:metal/sword/mithril>,<tfc:metal/sword/invar>,<tfc:metal/sword/aluminium>,<tfc:metal/sword/cobalt>,<tfc:metal/sword/manyullyn>,<tfc:metal/sword/osmium>,<tfc:metal/sword/titanium>,<tfc:metal/sword/tungsten>,<tfc:metal/sword/tungsten_steel>
,<tfc:metal/saw/mithril>,<tfc:metal/saw/invar>,<tfc:metal/saw/aluminium>,<tfc:metal/saw/cobalt>,<tfc:metal/saw/manyullyn>,<tfc:metal/saw/osmium>,<tfc:metal/saw/titanium>,<tfc:metal/saw/tungsten>,<tfc:metal/saw/tungsten_steel>
,<tfc:metal/knife/mithril>,<tfc:metal/knife/invar>,<tfc:metal/knife/aluminium>,<tfc:metal/knife/cobalt>,<tfc:metal/knife/manyullyn>,<tfc:metal/knife/osmium>,<tfc:metal/knife/titanium>,<tfc:metal/knife/tungsten>,<tfc:metal/knife/tungsten_steel>
,<tfc:metal/scythe/mithril>,<tfc:metal/scythe/invar>,<tfc:metal/scythe/aluminium>,<tfc:metal/scythe/cobalt>,<tfc:metal/scythe/manyullyn>,<tfc:metal/scythe/osmium>,<tfc:metal/scythe/titanium>,<tfc:metal/scythe/tungsten>,<tfc:metal/scythe/tungsten_steel>] as IItemStack[];

for i, missing in missing_heads{
recipes.addShaped(missing_tools[i],[
	[missing],
	[<ore:stickWood>]]);
}