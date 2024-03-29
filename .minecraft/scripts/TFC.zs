import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import moretweaker.railcraft.RollingMachine;
import mods.tfctech.WireDrawing;
import crafttweaker.item.IItemCondition;

//Fuels
mods.terrafirmacraft.ItemRegistry.registerFuel(<minecraft:blaze_powder>, 1800, 1350, true, false);
mods.terrafirmacraft.ItemRegistry.registerFuel(<minecraft:coal_block>, 19800, 1415, true, false);
mods.terrafirmacraft.ItemRegistry.registerFuel(<forestry:charcoal>, 16200, 1350, true, true);
mods.terrafirmacraft.ItemRegistry.registerFuel(<immersiveengineering:material:6>, 4400, 1500, true, true);
mods.terrafirmacraft.ItemRegistry.registerFuel(<immersiveengineering:stone_decoration:3>, 39600, 1500, true, true);
mods.terrafirmacraft.ItemRegistry.registerFuel(<minecraft:coal>, 2200, 1415, true, false);
mods.terrafirmacraft.ItemRegistry.registerFuel(<tfc:ore/bituminous_coal>, 2200, 1415, true, false);
mods.terrafirmacraft.ItemRegistry.registerFuel(<tfc:ore/lignite>, 2000, 1350, true, false);
mods.terrafirmacraft.ItemRegistry.registerFuel(<minecraft:coal:1>, 1800, 1350, true, true);
mods.terrafirmacraft.ItemRegistry.registerFuel(<forestry:peat>, 2500, 680, true, false);
mods.terrafirmacraft.ItemRegistry.registerFuel(<tfc:ore/petrified_wood>, 2000, 1350, true, false);

furnace.setFuel(<tfc:ore/bituminous_coal>, 1600);
furnace.setFuel(<tfc:ore/lignite>, 800);
furnace.setFuel(<tfc:ore/petrified_wood>, 800);

//Boost Track
recipes.removeByRecipeName("tfc:vanilla/railpowered_rail");
//Latex
mods.integrateddynamics.Squeezer.addRecipe(<tfc:wood/log/hevea>, null, <liquid:latex> * 250);
//Winch
recipes.addShaped(<tfctech:wiredraw/winch>,[
    [<tfctech:metal/wrought_iron_rod>,null,<tfctech:metal/wrought_iron_rod>],
    [null,<tfctech:metal/wrought_iron_rod>,null],
    [<tfctech:metal/wrought_iron_rod>,null,<tfctech:metal/wrought_iron_rod>]]);
//Block Mold
<tfctech:ceramics/mold/glass_block>.displayName = "Block Mold";
//Embers & Engineer's Hammer
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<contenttweaker:bismuth_hammer_head>, "BISMUTH", 100, true);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<contenttweaker:bismuth_engineers_hammer_head>, "BISMUTH", 200, true);

mods.terrafirmacraft.ItemRegistry.registerItemMetal(<embers:tinker_hammer>, "BISMUTH", 100, true);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<immersiveengineering:tool>, "BISMUTH", 200, true);

mods.terrafirmacraft.Anvil.addRecipe("bismuth_head", <tfc:metal/ingot/bismuth>, <contenttweaker:bismuth_hammer_head>, 1, "tools", "PUNCH_LAST","SHRINK_NOT_LAST");
mods.terrafirmacraft.Anvil.addRecipe("bismuth_engineer_head", <tfc:metal/double_ingot/bismuth>, <contenttweaker:bismuth_engineers_hammer_head>, 1, "tools", "PUNCH_LAST","SHRINK_NOT_LAST");

//Tongs
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<tfctech:metal/iron_tongs>, "WROUGHT_IRON", 100, true);

//Cheaper Glass
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:dirtyglass>, 0.35, 1350, false);
var sands = <ore:tfcSand>.items;
for i, sand in sands{
mods.terrafirmacraft.Heating.addRecipe("dirty_glass"~i, sand, <contenttweaker:dirtyglass>, 630, 1300);
}
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
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<tfc:metal/bucket/red_steel>, "COPPER", 200, true);
<tfc:metal/bucket/red_steel>.displayName = "Copper Bucket";
<ore:bucketRedSteel>.remove(<tfc:metal/bucket/red_steel>);
RollingMachine.addShapeless(<tfc:metal/bucket/red_steel>, [<ore:sheetDoubleCopper>]);

mods.terrafirmacraft.Anvil.removeRecipe(<tfc:metal/bucket/blue_steel>);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<tfc:metal/bucket/blue_steel>, "MITHRIL", 200, true);
<tfc:metal/bucket/blue_steel>.displayName = "Mithril Bucket";
<ore:bucketBlueSteel>.remove(<tfc:metal/bucket/blue_steel>);
RollingMachine.addShapeless(<tfc:metal/bucket/blue_steel>, [<ore:sheetDoubleMithril>]);
//Salt
mods.rustic.EvaporatingBasin.addRecipe(<tfc:powder/salt>, <liquid:salt_water>*250);
//Wrench Head
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<contenttweaker:ironwrenchhead>, "WROUGHT_IRON", 100, true);
mods.terrafirmacraft.Anvil.addRecipe("Iron_Wrench_Head", <ore:ingotWroughtIron>, <contenttweaker:ironwrenchhead>, 3, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
//Ring
recipes.remove(<bountifulbaubles:ringiron>);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<bountifulbaubles:ringiron>, "WROUGHT_IRON", 50, true);
mods.terrafirmacraft.Anvil.addRecipe("Iron_Ring", <tfctech:metal/wrought_iron_strip>, <bountifulbaubles:ringiron>, 3, "general","BEND_NOT_LAST","PUNCH_SECOND_LAST","HIT_LAST");
//Bowl
<tfc:ceramics/fired/bowl>.displayName = "Clay Bowl";
//Hot Water - Water
val fluidcontainers = [<tfc:wooden_bucket>,<minecraft:bucket>,<tfc:metal/bucket/red_steel>,<forestry:can>,<forestry:refractory>,<tfctech:ceramics/fluid_bowl>] as IItemStack[];
for i, FC in fluidcontainers {
mods.inspirations.Cauldron.addFillRecipe(FC.withTag({Fluid: {FluidName: "ice", Amount: 1000}}), <liquid:fresh_water>, 4,FC);
}
mods.inspirations.Cauldron.addFluidRecipe(<tfctech:ceramics/fluid_bowl>.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}}), <tfc:ceramics/fired/pot>, <liquid:water>, 4, true);
mods.inspirations.Cauldron.addFluidRecipe(<tfctech:ceramics/fluid_bowl>.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}}), <tfc:ceramics/fired/pot>, <liquid:fresh_water>, 4, true);

//Bowl <-> Pot
recipes.addShapeless(<tfc:ceramics/fired/pot>,[<tfctech:ceramics/fluid_bowl>,<botania:manaresource:22>.reuse()]);							

//Fresh Water Jug
mods.inspirations.Cauldron.addFluidRecipe(<tfc:ceramics/fired/jug>.withTag({Fluid: {FluidName: "fresh_water", Amount: 100}}), <tfc:ceramics/fired/jug>, <liquid:fresh_water>, 2, false);
mods.inspirations.Cauldron.addFluidRecipe(<tfc:ceramics/fired/jug>.withTag({Fluid: {FluidName: "fresh_water", Amount: 100}}), <tfc:ceramics/fired/jug>, <liquid:water>, 2, true);
mods.inspirations.Cauldron.addFluidRecipe(<tfc:ceramics/fired/jug>.withTag({Fluid: {FluidName: "fresh_water", Amount: 100}}), <tfc:ceramics/fired/jug>, <liquid:ice>, 2, true);
/*
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
*/	
//Soot
#mods.terrafirmacraft.Quern.addRecipe("Soot", <ore:charcoal>, <contenttweaker:soot>*4);
//Saw Dust
mods.terrafirmacraft.Quern.addRecipe("Sawdust", <ore:logWood>, <thermalfoundation:material:800>*4);
//Flux from Soot and Potash
recipes.addShapeless(<tfc:powder/flux>*2,[<contenttweaker:soot>,<tfctech:powder/potash>,<botania:pestleandmortar>.giveBack()]);							

//Ash Stack Size
#<tfctech:powder/ash>.maxStackSize = 64;
//TFC Coal Stack Size
<tfc:ore/bituminous_coal>.maxStackSize = 32;
//Silicon
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:250>, 0.35, 1600 , false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<projectred-core:resource_item:300>, 0.35, 1600 , false);
mods.terrafirmacraft.Heating.addRecipe("Primitive_Silicon", <projectred-core:resource_item:250>, <projectred-core:resource_item:300>, 1300, 1600 );
/*
//Seared Brick
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:soil>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<tconstruct:seared:1>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("Seared_Brick", <tconstruct:soil>, <tconstruct:seared:1>, 1500, 3200);
*/
//DTFC Conversion Recipes
val DTFCsapling = [<dynamictreestfc:seed/acacia>,<dynamictreestfc:seed/ash>,<dynamictreestfc:seed/aspen>,
<dynamictreestfc:seed/birch>,<dynamictreestfc:seed/blackwood>,<dynamictreestfc:seed/chestnut>,
<dynamictreestfc:seed/douglas_fir>,<dynamictreestfc:seed/hickory>,<dynamictreestfc:seed/kapok>,
<dynamictreestfc:seed/maple>,<dynamictreestfc:seed/oak>,<dynamictreestfc:seed/palm>,<dynamictreestfc:seed/pine>,
<dynamictreestfc:seed/rosewood>,<dynamictreestfc:seed/sequoia>,<dynamictreestfc:seed/spruce>,
<dynamictreestfc:seed/sycamore>,<dynamictreestfc:seed/white_cedar>,<dynamictreestfc:seed/willow>,<dynamictreestfc:seed/hevea>] as IItemStack[];
val TFCsapling =[<tfc:wood/sapling/acacia>,<tfc:wood/sapling/ash>,<tfc:wood/sapling/aspen>,
<tfc:wood/sapling/birch>,<tfc:wood/sapling/blackwood>,<tfc:wood/sapling/chestnut>,
<tfc:wood/sapling/douglas_fir>,<tfc:wood/sapling/hickory>,<tfc:wood/sapling/kapok>,
<tfc:wood/sapling/maple>,<tfc:wood/sapling/oak>,<tfc:wood/sapling/palm>,<tfc:wood/sapling/pine>,
<tfc:wood/sapling/rosewood>,<tfc:wood/sapling/sequoia>,<tfc:wood/sapling/spruce>,
<tfc:wood/sapling/sycamore>,<tfc:wood/sapling/white_cedar>,<tfc:wood/sapling/willow>,<tfc:wood/sapling/hevea>] as IItemStack[];

for i, DTFCS in DTFCsapling{
recipes.addShapeless(DTFCS,[TFCsapling[i],<dynamictrees:dirtbucket>.giveBack()]);							
recipes.addShapeless(TFCsapling[i],[DTFCS,<dynamictrees:dirtbucket>.giveBack()]);							

}
//Fire clay
recipes.remove(<tfc:fire_clay_block>);
mods.pyrotech.CompactingBin.addRecipe(<tfc:fire_clay_block>.name,<tfc:fire_clay_block>,<tfc:ceramics/fire_clay>,4,true);

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

mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:clay_insulator>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:ceramic_insulator>, 1, 1599, false);
mods.terrafirmacraft.Heating.addRecipe("insulator_Kiln", <contenttweaker:clay_insulator>, <contenttweaker:ceramic_insulator>, 1500, 3200);


furnace.remove(<minecraft:brick>);

mods.terrafirmacraft.ClayKnapping.addRecipe("clay_insulator_knap", <contenttweaker:clay_insulator>, 
																	"  X  ", 
																	"XXXXX", 
																	" XXX ", 
																	" XXX ", 
																	"     ");
mods.terrafirmacraft.ClayKnapping.addRecipe("clay_insulator_knap2", <contenttweaker:clay_insulator>, 
																	"     ", 
																	"  X  ", 
																	"XXXXX", 
																	" XXX ", 
																	" XXX ");																	
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

mods.terrafirmacraft.StoneKnapping.addRecipe("Stone_Rod", [<inspirations:materials:8>*2], ["all"],
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
mods.terrafirmacraft.LeatherKnapping.addRecipe("belt_Knap_1", <tfctech:wiredraw/leather_belt>, 
																	"     ", 
																	"XXXXX", 
																	"     ", 
																	"     ", 
																	"     ");	
mods.terrafirmacraft.LeatherKnapping.addRecipe("belt_Knap_2", <tfctech:wiredraw/leather_belt>, 
																	"     ", 
																	"     ", 
																	"XXXXX", 
																	"     ", 
																	"     ");		
mods.terrafirmacraft.LeatherKnapping.addRecipe("belt_Knap_3", <tfctech:wiredraw/leather_belt>, 
																	"     ", 
																	"     ", 
																	"     ", 
																	"XXXXX", 
																	"     ");																																																		
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
mods.tfctech.Glassworking.addRecipe("lens_knap", <advancedrocketry:lens>,
																	"     ", 
																	" XXX ", 
																	"XXXXX", 
																	" XXX ", 
																	"     ");	
mods.tfctech.Glassworking.addRecipe("vac_knap", <contenttweaker:casing_electron_tube>,
																	"  X  ", 
																	" X X ", 
																	" X X ", 
																	" X X ", 
																	" X X ");																																																																																																																																																											
#=============================================================================================================================================		
//Removed Cause Knapping
recipes.remove(<advancedrocketry:lens>);
recipes.remove(<minecraft:lead>);
recipes.remove(<tfctech:wiredraw/leather_belt>);
recipes.remove(<inspirations:materials:2>);
recipes.remove(<inspirations:materials:3>);
recipes.remove(<extraalchemy:vial_break>);
recipes.remove(<minecraft:glass_bottle>);

//Leather Rework
recipes.remove(<minecraft:leather>);
mods.terrafirmacraft.Barrel.removeRecipe(<minecraft:leather>);
mods.terrafirmacraft.Barrel.addRecipe("tanned_hide_s", <tfc:hide/prepared/small>, <liquid:tannin>*300, <contenttweaker:tanned_small>,8);
mods.terrafirmacraft.Barrel.addRecipe("tanned_hide_m", <tfc:hide/prepared/medium>,<liquid:tannin>*400, <contenttweaker:tanned_small>*2,8);
mods.terrafirmacraft.Barrel.addRecipe("tanned_hide_l", <tfc:hide/prepared/large>, <liquid:tannin>*500, <contenttweaker:tanned_small>*3,8);
mods.terrafirmacraft.Barrel.addRecipe("tanned_flesh", <contenttweaker:squeezed_flesh>, <liquid:tannin>*500, <contenttweaker:tanned_flesh>,8);

mods.pyrotech.CrudeDryingRack.addRecipe("tanned_hide_s",<minecraft:leather>,<contenttweaker:tanned_small>,6000);
mods.pyrotech.CrudeDryingRack.addRecipe("tanned_flesh",<minecraft:leather>,<contenttweaker:tanned_flesh>,6000);

recipes.remove(<minecraft:wool:0>,<betteranimalsplus:wolf_pelt_snowy>);
recipes.remove(<minecraft:wool:8>,<betteranimalsplus:wolf_pelt_timber>);
recipes.remove(<minecraft:wool:15>,<betteranimalsplus:wolf_pelt_black>);
recipes.remove(<minecraft:wool:0>,<betteranimalsplus:wolf_pelt_arctic>);
recipes.remove(<minecraft:wool:12>,<betteranimalsplus:wolf_pelt_brown>);
recipes.remove(<minecraft:wool:14>,<betteranimalsplus:wolf_pelt_red>);

recipes.remove(<minecraft:wool:12>,<betteranimalsplus:bear_skin_brown>);
recipes.remove(<minecraft:wool:15>,<betteranimalsplus:bear_skin_black>);
recipes.remove(<minecraft:wool:0>,<betteranimalsplus:bear_skin_kermode>);

recipes.addShapeless(<tfc:animal/product/wool>,[<ore:knife>.transformDamage(3),<betteranimalsplus:wolf_pelt_snowy>.transformReplace(<tfc:hide/raw/medium>)]);
recipes.addShapeless(<tfc:animal/product/wool>,[<ore:knife>.transformDamage(3),<betteranimalsplus:wolf_pelt_timber>.transformReplace(<tfc:hide/raw/medium>)]);
recipes.addShapeless(<tfc:animal/product/wool>,[<ore:knife>.transformDamage(3),<betteranimalsplus:wolf_pelt_black>.transformReplace(<tfc:hide/raw/medium>)]);
recipes.addShapeless(<tfc:animal/product/wool>,[<ore:knife>.transformDamage(3),<betteranimalsplus:wolf_pelt_arctic>.transformReplace(<tfc:hide/raw/medium>)]);
recipes.addShapeless(<tfc:animal/product/wool>,[<ore:knife>.transformDamage(3),<betteranimalsplus:wolf_pelt_brown>.transformReplace(<tfc:hide/raw/medium>)]);
recipes.addShapeless(<tfc:animal/product/wool>,[<ore:knife>.transformDamage(3),<betteranimalsplus:wolf_pelt_red>.transformReplace(<tfc:hide/raw/medium>)]);

mods.terrafirmacraft.Barrel.addRecipe("skin_bear_brown", <betteranimalsplus:bear_skin_brown>, <liquid:limewater>*400, <tfc:hide/soaked/medium>,8);
mods.terrafirmacraft.Barrel.addRecipe("skin_bear_black", <betteranimalsplus:bear_skin_black>, <liquid:limewater>*400, <tfc:hide/soaked/medium>,8);
mods.terrafirmacraft.Barrel.addRecipe("skin_bear_kermode", <betteranimalsplus:bear_skin_kermode>, <liquid:limewater>*400, <tfc:hide/soaked/medium>,8);

//Loom
mods.terrafirmacraft.Loom.addRecipe("glass_fibre", <contenttweaker:glass_wire>*24,<contenttweaker:glass_fibre>*6, 16, "minecraft:textures/blocks/wool_colored_brown.png"); 

recipes.remove(<botania:manaresource:22>);
mods.terrafirmacraft.Loom.addRecipe("manaweave_cloth", <botania:manaresource:16>*16,<botania:manaresource:22>*4, 16, "botania:textures/blocks/blockmanaquartz1.png"); 

mods.embers.Alchemy.remove(<embers:ashen_cloth>);
recipes.addShaped(<contenttweaker:ashen_string>,[
	[<ore:string>,<ore:dustAsh>],
	[<ore:dustAsh>,<ore:string>]]);
mods.terrafirmacraft.Loom.addRecipe("ashen_cloth", <contenttweaker:ashen_string>*16,<embers:ashen_cloth>*4, 16, "embers:textures/blocks/ashen_stone.png"); 

recipes.remove(<yurtmod:tent_canvas>);
mods.terrafirmacraft.Loom.addRecipe("tent_canvas", <tfc:crop/product/burlap_cloth>*4,<yurtmod:tent_canvas>*2, 16, "yurtmod:textures/blocks/yurt_roof_upper.png"); 

	//ropes
mods.terrafirmacraft.Loom.addRecipe("rope_loom_plant_firbre", <hooked:microcrafting>*9,<hooked:microcrafting:1>*3, 16, "minecraft:textures/blocks/wool_colored_brown.png"); 
mods.terrafirmacraft.Loom.addRecipe("rope_loom_hemp_fribre", <immersiveengineering:material:4>*9,<hooked:microcrafting:1>*3, 16, "minecraft:textures/blocks/wool_colored_brown.png"); 
mods.terrafirmacraft.Loom.addRecipe("rope_loom_treated_string", <contenttweaker:creosote_string>*9,<hooked:microcrafting:1>*3, 16, "minecraft:textures/blocks/wool_colored_brown.png"); 
