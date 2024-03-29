import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;


//Inspirations Item Pipe
recipes.remove(<inspirations:pipe>);
recipes.addShaped(<inspirations:pipe>*4,[
	[<tfc:metal/sheet/lead>,<whopper:whopper>,<tfc:metal/sheet/lead>]]);

//Magnifying Glass
recipes.remove(<agricraft:magnifying_glass>);
recipes.addShaped(<agricraft:magnifying_glass>,[
	[<advancedrocketry:lens>,null],
	[null,<minecraft:stick>]]);
recipes.remove(<railcraft:tool_magnifying_glass>);
recipes.addShaped(<railcraft:tool_magnifying_glass>,[
	[null,<advancedrocketry:lens>],
	[<minecraft:stick>,null]]);	
//Hook Recipes

mods.terrafirmacraft.Anvil.addRecipe("Metal_Hookx1_tin", <tfctech:metal/tin_strip>, <contenttweaker:iron_hook>, 1, "general","BEND_NOT_LAST","HIT_NOT_LAST","HIT_LAST");
mods.terrafirmacraft.Anvil.addRecipe("Metal_Hookx1_lead", <tfctech:metal/lead_strip>, <contenttweaker:iron_hook>, 1, "general","BEND_NOT_LAST","HIT_NOT_LAST","HIT_LAST");
mods.terrafirmacraft.Anvil.addRecipe("Metal_Hookx1_zinc", <tfctech:metal/zinc_strip>, <contenttweaker:iron_hook>, 1, "general","BEND_NOT_LAST","HIT_NOT_LAST","HIT_LAST");

mods.terrafirmacraft.Anvil.addRecipe("Metal_Hookx3", <tfctech:metal/wrought_iron_strip>, <contenttweaker:iron_hook>*3, 3, "general","BEND_NOT_LAST","HIT_NOT_LAST","HIT_LAST");

mods.terrafirmacraft.Anvil.addRecipe("Metal_Hookx4_steel", <tfctech:metal/steel_strip>, <contenttweaker:iron_hook>*4, 4, "general","BEND_NOT_LAST","HIT_NOT_LAST","HIT_LAST");
mods.terrafirmacraft.Anvil.addRecipe("Metal_Hookx4_aluminium", <tfctech:metal/aluminium_strip>, <contenttweaker:iron_hook>*4, 4, "general","BEND_NOT_LAST","HIT_NOT_LAST","HIT_LAST");

mods.terrafirmacraft.Anvil.addRecipe("Metal_Hookx6", <tfctech:metal/titanium_strip>, <contenttweaker:iron_hook>*6, 6, "general","BEND_NOT_LAST","HIT_NOT_LAST","HIT_LAST");		

//Spings

recipes.remove(<immersiveintelligence:material_spring>); #Brass
recipes.addShapeless(<immersiveintelligence:material_spring>,[<tfctech:metal/brass_wire>,<ore:spindle>.transformDamage(4)]);	

recipes.remove(<immersiveintelligence:material_spring:1>); #Iron
recipes.addShapeless(<immersiveintelligence:material_spring:1>,[<tfctech:metal/wrought_iron_wire>,<ore:spindle>.transformDamage(4)]);		

recipes.remove(<immersiveintelligence:material_spring:2>); #Steel
recipes.addShapeless(<immersiveintelligence:material_spring:2>,[<tfctech:metal/steel_wire>,<ore:spindle>.transformDamage(4)]);		

//Collector
recipes.remove(<inspirations:collector>);
recipes.addShaped(<inspirations:collector>,[
	[<ore:cobblestone>,<projectred-core:resource_item:400>,<ore:cobblestone>],
	[<ore:cobblestone>,<ore:dustRedstone>,<ore:cobblestone>],
	[<ore:cobblestone>,<whopper:whopper>,<ore:cobblestone>]]);

//Charcoal Blocks
recipes.remove(<chisel:block_charcoal>);
recipes.remove(<chisel:block_charcoal1>);
recipes.remove(<chisel:block_charcoal2>);
recipes.remove(<chisel:block_charcoal2:1>);
//Crushed Ice
mods.rustic.CrushingTub.addRecipe(<liquid:ice>*250, null, <minecraft:snowball>);
//Alchemy Bag
recipes.remove(<extraalchemy:potion_bag>);
recipes.addShaped(<extraalchemy:potion_bag>,[
	[<extraalchemy:vial_break>,<extraalchemy:vial_break>,<extraalchemy:vial_break>],
	[null,<contenttweaker:leatherbag>,null]]);
//Bad Leather Recipes
furnace.remove(<minecraft:leather>);
//Batteries 
recipes.remove(<libvulpes:battery>);
recipes.addShaped(<libvulpes:battery>,[
	[null,<ore:stripCopper>,null],
	[<ore:paper>,<ore:dustPotassiumHydroxide>,<ore:paper>],
	[null,<tfctech:metal/zinc_strip>,null]]);
//Bleach
mods.terrafirmacraft.Barrel.addRecipe("sodiumcarbonate", <ore:dustPotash>, <liquid:brine>*250, <contenttweaker:sodiumcarbonate>, 8);
mods.terrafirmacraft.Barrel.addRecipe("bleach", <contenttweaker:sodiumcarbonate>, <liquid:limewater>*250, <liquid:bleach>*250, 24);
//Potassium Hydroxide 
mods.terrafirmacraft.Barrel.addRecipe("potassiumhydroxide ", <contenttweaker:potassiumcarbonate>, <liquid:limewater>*150, <nuclearcraft:compound:6>, 8);
//Jack-o-Lantern
recipes.remove(<minecraft:lit_pumpkin>);
recipes.addShapeless(<minecraft:lit_pumpkin>,[<minecraft:pumpkin>,<ore:torch>,<ore:knife>.transformDamage(4)]);							
//Canister
recipes.remove(<pressure:canister>);
recipes.addShaped(<pressure:canister>,[
	[<ore:stickPlastic>,<ore:sheetPlastic>,null],
	[<ore:sheetPlastic>,null,<ore:sheetPlastic>],
	[<ore:sheetPlastic>,<ore:sheetPlastic>,<ore:sheetPlastic>]]);							
//Torch Lever
recipes.remove(<inspirations:torch_lever>);
recipes.addShapeless(<inspirations:torch_lever>, [<ore:dustGlowstone>,<ore:torch>,<minecraft:lever>]);
//Coal Coke Block
mods.jei.JEI.removeAndHide(<railcraft:generic:6>);
//Missing Localization
game.setLocalization("item.railcraft.charge.electrode.silver.name", "Silver Electrode");
game.setLocalization("item.railcraft.charge.electrode.carbon.name", "Carbon Electrode");
//Rails
recipes.remove(<railcraft:tie>);
recipes.addShaped(<railcraft:tie>,[
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>]]);
/*
recipes.remove(<tconstruct:wood_rail>);
recipes.addShaped(<tconstruct:wood_rail>*4,[
	[<ore:stickTreatedWood>,null,<ore:stickTreatedWood>],
	[<ore:stickTreatedWood>,<railcraft:railbed>,<ore:stickTreatedWood>],
	[<ore:stickTreatedWood>,null,<ore:stickTreatedWood>]]);
recipes.remove(<tconstruct:wood_rail_trapdoor>);
recipes.addShapeless(<tconstruct:wood_rail_trapdoor>, [<tconstruct:wood_rail>,<ore:trapdoorWood>]);
*/	

//Paper Pulp
mods.terrafirmacraft.Barrel.addRecipe("Paper", <ore:dustWood>*4, <liquid:hot_water>*150, <emergingtechnology:paperpulp>, 4);
//Paper
mods.forestry.Carpenter.removeRecipe(<minecraft:paper>);
//Wooden Glass Casing
recipes.addShaped(<contenttweaker:wooden_glass_casing>,[
	[null,<ore:stickWood>,null],
	[<ore:stickWood>,<ore:blockGlass>,<ore:stickWood>],
	[null,<ore:stickWood>,null]]);	
//Type K Thermocouple
RollingMachine.addShaped(<contenttweaker:tkt>,[[<tfc:metal/sheet/aluminium>,null,null],[<tfc:ore/chromite>,null,null],[<tfc:metal/sheet/nickel>,null,null]]);

//Bees Wax
furnace.addRecipe(<rustic:beeswax>, <forestry:beeswax>);

//Comforts
recipes.remove(<comforts:sleeping_bag:*>);
recipes.addShaped(<comforts:sleeping_bag:0>,[
    [<moarboats:rope>,null,<moarboats:rope>],
    [<ore:clothHighQuality>,<ore:clothHighQuality>,<ore:clothHighQuality>]]);
recipes.remove(<comforts:hammock:*>);
recipes.addShaped(<comforts:hammock:0>,[
    [<ore:stickWood>,<hooked:microcrafting:1>,<ore:stickWood>],
    [<ore:stickWood>,<ore:clothHighQuality>,<ore:stickWood>],
    [<ore:stickWood>,<hooked:microcrafting:1>,<ore:stickWood>]]);
#=============================================================================================================================================		
/*
//Colored Water 
recipes.removeByMod("colored_water");
val dyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,
<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];

val coloredWater = [<liquid:water_white>,<liquid:water_orange>,<liquid:water_magenta>,<liquid:water_light_blue>,<liquid:water_yellow>,<liquid:water_lime>,<liquid:water_pink>,<liquid:water_gray>,<liquid:water_silver>,
<liquid:water_cyan>,<liquid:water_purple>,<liquid:water_blue>,<liquid:water_brown>,<liquid:water_green>,<liquid:water_red>,<liquid:water_black>] as ILiquidStack[];

val glowingcoloredWater = [<liquid:glowing_water_white>,<liquid:glowing_water_orange>,<liquid:glowing_water_magenta>,<liquid:glowing_water_light_blue>,<liquid:glowing_water_yellow>,<liquid:glowing_water_lime>,<liquid:glowing_water_pink>,<liquid:glowing_water_gray>,<liquid:glowing_water_silver>,
<liquid:glowing_water_cyan>,<liquid:glowing_water_purple>,<liquid:glowing_water_blue>,<liquid:glowing_water_brown>,<liquid:glowing_water_green>,<liquid:glowing_water_red>,<liquid:glowing_water_black>] as ILiquidStack[];

val bottles = [<inspirations:dyed_bottle:15>,<inspirations:dyed_bottle:14>,<inspirations:dyed_bottle:13>,<inspirations:dyed_bottle:12>,
<inspirations:dyed_bottle:11>,<inspirations:dyed_bottle:10>,<inspirations:dyed_bottle:9>,<inspirations:dyed_bottle:8>,
<inspirations:dyed_bottle:7>,<inspirations:dyed_bottle:6>,<inspirations:dyed_bottle:5>,<inspirations:dyed_bottle:4>,
<inspirations:dyed_bottle:3>,<inspirations:dyed_bottle:2>,<inspirations:dyed_bottle:1>,<inspirations:dyed_bottle:0>] as IItemStack[];

val Illumar = <projectred-core:resource_item>.definition;
val wools = <minecraft:wool>.definition;
val carpets = <minecraft:carpet>.definition;
val beds = <minecraft:bed>.definition;
val petalblocks = <botania:petalblock>.definition;
val petals = <botania:petal>.definition;

for i in 0 to 16{
var stringname = "colored_water" ~ i as string;
var stringname1 = "glowing_colored_water" ~ i as string;
var stringname3 = "glowstone_colored_water" ~ i as string;
var stringname2 = "Colored_Wool_Barrel" ~ i as string;
var stringname4 = "Colored_carpet_Barrel" ~ i as string;
var stringname5 = "Colored_bed_Barrel" ~ i as string;
var stringname6 = "colored_petalBlock_water" ~ i as string;
var stringname7 = "colored_petal_water" ~ i as string;

mods.terrafirmacraft.Barrel.addRecipe(stringname, dyes[i], <liquid:water>*1000, null, coloredWater[i]*1000, 0);
mods.terrafirmacraft.Barrel.addRecipe(stringname1, Illumar.makeStack(i+500), <liquid:water>*1000, null, glowingcoloredWater[i]*1000, 4);
mods.terrafirmacraft.Barrel.addRecipe(stringname3, <ore:dustGlowstone>, <liquid:water>*1000, null, glowingcoloredWater[i]*500, 72);
mods.terrafirmacraft.Barrel.addRecipe(stringname2, <ore:wool>, coloredWater[i]*100, wools.makeStack(i), null, 2);
mods.terrafirmacraft.Barrel.addRecipe(stringname4, <ore:carpet>, coloredWater[i]*10, carpets.makeStack(i), null, 1);
mods.terrafirmacraft.Barrel.addRecipe(stringname5, <ore:bed>, coloredWater[i]*250, beds.makeStack(i), null, 4);
mods.terrafirmacraft.Barrel.addRecipe(stringname6, petalblocks.makeStack(i), <liquid:water>*1000, null, coloredWater[i]*1500, 0);
mods.terrafirmacraft.Barrel.addRecipe(stringname7, petals.makeStack(i), <liquid:water>*100, null, coloredWater[i]*100, 0);

mods.terrafirmacraft.Barrel.addRecipe(stringname ~ "_bottled", <minecraft:glass_bottle>, coloredWater[i]*250, bottles[i], null, 0);

recipes.removeShapeless(wools.makeStack(i)*8);
recipes.removeShapeless(wools.makeStack(i));
recipes.removeShapeless(beds.makeStack(i));

}
*/
#=============================================================================================================================================		
//Agricraft (TEMP)
recipes.remove(<agricraft:crop_sticks>);
recipes.addShaped(<agricraft:crop_sticks>,[
	[<botania:manaresource:3>,<botania:manaresource:3>],
	[<botania:manaresource:3>,<botania:manaresource:3>]]);

#=============================================================================================================================================		
recipes.remove(<astikorcarts:cargocart>);
recipes.addShaped(<astikorcarts:cargocart>,[
	[<ore:plankWood>,<ore:chestWood>,<ore:plankWood>],
	[<ore:plankWood>,<ore:chestWood>,<ore:plankWood>],
	[<astikorcarts:wheel>,<ore:plankWood>,<astikorcarts:wheel>]]);
//Quark
recipes.remove(<quark:thatch>);
recipes.remove(<minecraft:wheat>);
	//Candles
	recipes.removeShaped(<quark:candle>*2,[
		[<ore:string>],
		[<ore:tallow>],
		[<ore:tallow>]]);
	recipes.addShaped(<quark:candle>*2,[
		[<contenttweaker:glowstring>],
		[<ore:tallow>],
		[<ore:tallow>]]);
<quark:thatch>.displayName = "Solid Thatch";
<quark:thatch_stairs>.displayName = "Solid Thatch Stairs";
<quark:thatch_slab>.displayName = "Solid Thatch Slab";
mods.jei.JEI.addDescription(<quark:thatch>,"Magic has made this thatch solid");
mods.jei.JEI.addDescription(<quark:thatch_stairs>,"Magic has made this thatch solid");
mods.jei.JEI.addDescription(<quark:thatch_slab>,"Magic has made this thatch solid");
	//Iron Rod
	<quark:iron_rod>.displayName = "Steel Mining Rod";
	recipes.remove(<quark:iron_rod>);
	recipes.addShaped(<quark:iron_rod>,[
	[null,<immersiveengineering:drillhead>,null],
	[<tfc:metal/shovel_head/steel>,<tfc:metal/pick_head/steel>,<tfc:metal/axe_head/steel>],
	[null,<minecraft:end_rod>,null]]);
	//Framed Glass
	recipes.remove(<quark:framed_glass>);
	recipes.addShaped(<quark:framed_glass>,[
	[<ore:blockGlassColorless>,<ore:stickIron>,<ore:blockGlassColorless>],
	[<ore:stickIron>,<ore:blockGlassColorless>,<ore:stickIron>],
	[<ore:blockGlassColorless>,<ore:stickIron>,<ore:blockGlassColorless>]]);
	//Quilted wool
	val wools = <minecraft:wool>.definition;
	val quilted_wools = <quark:quilted_wool>.definition;
	for i in 0 to 16{
	recipes.remove(quilted_wools.makeStack(i));
	recipes.addShaped(quilted_wools.makeStack(i)*4,[
	[<ore:string>,<ore:clothHighQuality>,<ore:string>],
	[<ore:clothHighQuality>,wools.makeStack(i),<ore:clothHighQuality>],
	[<ore:string>,<ore:clothHighQuality>,<ore:string>]]);
	}
	//Tallow
	furnace.remove(<quark:tallow>);
	mods.inspirations.Cauldron.addFluidTransform(<liquid:meat_broth>,  <contenttweaker:ground_meat>, <liquid:water>, 1, true);
	mods.inspirations.Cauldron.addFluidTransform(<liquid:meat_broth>,  <contenttweaker:ground_meat>, <liquid:fresh_water>, 1, true);
	mods.inspirations.Cauldron.addFluidRecipe(<quark:tallow>*4, <minecraft:ice>, <liquid:meat_broth>, 4, true);
	mods.inspirations.Cauldron.addFluidRecipe(<quark:tallow>, <minecraft:snowball>, <liquid:meat_broth>, 1, true);
	//Smoker
	recipes.addShaped(<quark:smoker>,[
	[<minecraft:netherrack>,<minecraft:netherrack>,<minecraft:netherrack>],
	[<minecraft:netherrack>,<forestry:smoker>,<minecraft:netherrack>],
	[<minecraft:netherrack>,<minecraft:netherrack>,<minecraft:netherrack>]]);
#=============================================================================================================================================		
//Rustic	

recipes.remove(<rustic:candle_gold>);
recipes.addShaped(<rustic:candle_gold>,[
	[<ore:blockCandle>],
	[<tfctech:metal/gold_rod>],
	[<tfc:metal/sheet/gold>]]);

recipes.remove(<rustic:candle>); #Iron Candle
recipes.addShaped(<rustic:candle>,[
	[<ore:blockCandle>],
	[<tfctech:metal/wrought_iron_rod>],
	[<tfc:metal/sheet/wrought_iron>]]);	

recipes.remove(<rustic:iron_lantern>);
recipes.addShaped(<rustic:iron_lantern>,[
	[null,<tfc:metal/sheet/wrought_iron>,null],
	[<tfctech:metal/wrought_iron_rod>,<ore:dustGlowstone>,<tfctech:metal/wrought_iron_rod>],
	[<tfc:metal/sheet/wrought_iron>,<ore:torch>,<tfc:metal/sheet/wrought_iron>]]);

recipes.remove(<rustic:golden_lantern>);
recipes.addShaped(<rustic:golden_lantern>,[
	[null,<tfc:metal/sheet/gold>,null],
	[<tfctech:metal/gold_rod>,<ore:dustGlowstone>,<tfctech:metal/gold_rod>],
	[<tfc:metal/sheet/gold>,<ore:torch>,<tfc:metal/sheet/gold>]]);	

//Rustichromatica
recipes.remove(<rustichromia:plate_wood>);
#=============================================================================================================================================		
//Marble
mods.terrafirmacraft.Barrel.addRecipe("Quark_marble", <tfc:raw/marble>, <liquid:bleach>*50, <quark:marble>, 4);
mods.terrafirmacraft.Barrel.addRecipe("Astral_marble", <quark:marble>, <liquid:bleach>*50, <astralsorcery:blockmarble>, 4);

//Lithium
#furnace.addRecipe(<nuclearcraft:dust:6>*4, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "brine", Amount: 1000}}));
#mods.immersiveengineering.BlastFurnace.addRecipe(<nuclearcraft:dust:6>*4, <forge:bucketfilled>.withTag({FluidName: "brine", Amount: 1000}), 2000,<minecraft:bucket>);
//AE2
	//Tiny TNT
	recipes.remove(<appliedenergistics2:tiny_tnt>);
	recipes.addShaped(<appliedenergistics2:tiny_tnt>,[
	[<ore:gunpowder>,<minecraft:flint>],
	[<minecraft:flint>,<ore:gunpowder>]]);
//Creosote
furnace.remove(<railcraft:fluid_bottle_creosote>);
//GlowString
recipes.addShaped(<contenttweaker:glowstring>,[
	[<botania:manaresource:16>,<ore:dustGlowstone>],
	[<ore:dustGlowstone>,<ore:dustGlowstone>]]);
#=============================================================================================================================================		
	
//Project Red
recipes.remove(<projectred-transmission:wire>);
recipes.remove(<projectred-core:resource_item:400>);
recipes.remove(<projectred-core:resource_item:401>);
recipes.remove(<projectred-core:resource_item:402>);
recipes.addShaped(<projectred-transmission:wire>*12,[
	[null,<tfctech:metal/red_alloy_wire>,null],
	[<tfctech:metal/red_alloy_wire>,<tfctech:metal/red_alloy_wire>,<tfctech:metal/red_alloy_wire>],
	[null,<tfctech:metal/red_alloy_wire>,null]]);
mods.jei.JEI.removeAndHide(<projectred-transmission:wire:34>, false);
mods.jei.JEI.removeAndHide(<projectred-transmission:framed_wire:34>, false);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:251>, false);
furnace.remove(<projectred-core:resource_item:104>);
furnace.remove(<projectred-core:resource_item:103>);
mods.jei.JEI.removeAndHide(<projectred-core:multimeter>, false);
mods.jei.JEI.removeAndHide(<projectred-core:screwdriver>, false);
mods.jei.JEI.hide(<projectred-core:resource_item:101>);
mods.jei.JEI.hide(<projectred-core:resource_item:102>);
mods.jei.JEI.hide(<projectred-core:resource_item:100>);
mods.jei.JEI.hide(<projectred-core:resource_item:600>);

//Electroine Powder
recipes.addShaped(<projectred-core:resource_item:105>,[
	[<ore:dustGraphite>,<astralsorcery:itemcraftingcomponent:2>],
	[<ore:dustEnder>,<ore:dustCertusQuartz>]]);

//Circuit Plates
furnace.remove(<projectred-core:resource_item>);
RollingMachine.addShaped(<projectred-core:resource_item>*2,[[<ore:ingotBrick>,<ore:ingotBrick>],[<ore:ingotBrick>,<ore:ingotBrick>]], 300);

//Sandy Coal
mods.pneumaticcraft.pressurechamber.addRecipe([<ore:gemCoal>,<ore:sand>], 1.75, [<projectred-core:resource_item:250>]);
//Silicon
furnace.remove(<appliedenergistics2:material:5>);
recipes.addShapeless(<projectred-core:resource_item:301> * 4, [<ore:sawII>.transformDamage(3), <projectred-core:resource_item:300>]);
recipes.addShapeless(<projectred-core:resource_item:301> * 6, [<ore:sawIII>.transformDamage(5), <projectred-core:resource_item:300>]);
recipes.addShapeless(<projectred-core:resource_item:301> * 8, [<ore:sawIV>.transformDamage(7), <projectred-core:resource_item:300>]);
recipes.addShapeless(<projectred-core:resource_item:301> * 8, [<ore:sawV>.transformDamage(7), <projectred-core:resource_item:300>]);
recipes.addShapeless(<projectred-core:resource_item:301> * 12, [<ore:sawVI>.transformDamage(11), <projectred-core:resource_item:300>]);
#=============================================================================================================================================		
//Hooks
recipes.removeByMod("hooked");
val Handle = <immersiveengineering:material:13>;

#Wooden
recipes.addShaped(<hooked:hook>,[
	[null,<inspirations:wooden_crook>,null],
	[null,<quark:rope>,<inspirations:wooden_crook>],
	[Handle,null,null]]);

#Iron
recipes.addShaped(<hooked:hook:1>,[
	[null,<contenttweaker:iron_hook>,<ore:pickaxeIron>],
	[null,<hooked:microcrafting:3>,<contenttweaker:iron_hook>],
	[Handle,null,null]]);

#Diamond
recipes.addShaped(<hooked:hook:2>,[
	[<contenttweaker:iron_hook>,<yurtmod:tent_upgrade_diamond>,<minecraft:diamond_pickaxe>],
	[null,<hooked:microcrafting:3>,<yurtmod:tent_upgrade_diamond>],
	[Handle,null,<contenttweaker:iron_hook>]]);

#Redstone
recipes.addShaped(<hooked:hook:3>,[
	[<contenttweaker:iron_hook>,<tfctech:wiredraw/winch>,<tfc:metal/pick/red_steel>],
	[<projectred-core:resource_item:410>,<immersiveengineering:wirecoil:5>,<tfctech:wiredraw/winch>],
	[Handle,<projectred-core:resource_item:410>,<contenttweaker:iron_hook>]]);

#Ender
recipes.addShaped(<hooked:hook:4>,[
	[<minecraft:ender_pearl>,<aunis:crystal_ender>,<quark:arrow_ender>],
	[null,<opencomputers:hologram1>,<aunis:crystal_ender>],
	[Handle,null,<minecraft:ender_pearl>]]);	

//Ropes + Chains

	//Chains
	mods.terrafirmacraft.Anvil.addRecipe("Iron_Chain_Link", <ore:ingotWroughtIron>, <hooked:microcrafting:2>, 3, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
		//Quark
		recipes.remove(<quark:chain>);
		recipes.addShaped(<quark:chain>*3,[
			[null,null,<hooked:microcrafting:2>],
			[null,<hooked:microcrafting:2>,null],
			[<hooked:microcrafting:2>,null,null]]);
		//Hooked
		recipes.remove(<hooked:microcrafting:3>);
		recipes.addShaped(<hooked:microcrafting:3>,[
			[null,null,<quark:chain>],
			[null,<quark:chain>,null],
			[<quark:chain>,null,null]]);
		//Rustic
		recipes.remove(<rustic:chain>);
		recipes.addShaped(<rustic:chain>*8,[
			[<hooked:microcrafting:2>],
			[<hooked:microcrafting:2>],
			[<hooked:microcrafting:2>]]);	
		//Inspirations
		recipes.remove(<inspirations:rope:1>);
		recipes.addShaped(<inspirations:rope:1>*8,[
			[<quark:chain>],
			[<quark:chain>],
			[<quark:chain>]]);	
		//Rustic Gold Chain
		recipes.remove(<rustic:chain_gold>);
		recipes.addShaped(<rustic:chain_gold>*8,[
			[<tfctech:metal/gold_wire>],
			[<tfctech:metal/gold_wire>],
			[<tfctech:metal/gold_wire>]]);

		//I&F Chains
		recipes.remove(<iceandfire:chain_link>);
		mods.terrafirmacraft.Anvil.addRecipe("Steel_Chain_Link", <ore:ingotSteel>, <iceandfire:chain_link>, 4, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");

		<iceandfire:chain_link>.displayName = "Steel Chain Link";
		<iceandfire:chain_sticky>.displayName = "Sticky Steel Chain";
		<iceandfire:chain>.displayName = "Steel Chain";

	//Rope
	recipes.remove(<hooked:microcrafting>);
	recipes.addShapeless(<hooked:microcrafting>*8, [<tfc:crop/product/jute_fiber>,<tfc:spindle>.transformDamage(8)]);
	/*
	recipes.addShaped(<hooked:microcrafting:1>,[
		[null,null,<hooked:microcrafting>],
		[null,<hooked:microcrafting>,null],
		[<hooked:microcrafting>,null,null]]);
	recipes.addShaped(<hooked:microcrafting:1>,[
		[null,null,<contenttweaker:creosote_string>],
		[null,<contenttweaker:creosote_string>,null],
		[<contenttweaker:creosote_string>,null,null]]);
	recipes.addShaped(<hooked:microcrafting:1>,[
		[null,null,<immersiveengineering:material:4>],
		[null,<immersiveengineering:material:4>,null],
		[<immersiveengineering:material:4>,null,null]]);
	*/	
		//Rustic
		recipes.remove(<rustic:rope>);
		recipes.addShaped(<rustic:rope>*8,[
			[<hooked:microcrafting:1>],
			[<hooked:microcrafting:1>],
			[<hooked:microcrafting:1>]]);
		//Inspirations
		recipes.remove(<inspirations:rope>);
		recipes.addShaped(<inspirations:rope>*8,[
			[<hooked:microcrafting:1>,<hooked:microcrafting:1>],
			[<hooked:microcrafting:1>,<hooked:microcrafting:1>],
			[<hooked:microcrafting:1>,<hooked:microcrafting:1>]]);
		//Quark
		recipes.remove(<quark:rope>);
		recipes.addShaped(<quark:rope>*8,[
			[<hooked:microcrafting:1>,<hooked:microcrafting:1>,<hooked:microcrafting:1>],
			[<hooked:microcrafting:1>,null,<hooked:microcrafting:1>],
			[<hooked:microcrafting:1>,<hooked:microcrafting:1>,<hooked:microcrafting:1>]]);
		//moarboats
		recipes.remove(<moarboats:rope>);
		recipes.addShapeless(<moarboats:rope>.withTag({})*2,[<hooked:microcrafting:1>,<ore:shears>.transformDamage(1)]);			
	//Comforts
	recipes.remove(<comforts:rope>);
	recipes.addShaped(<comforts:rope>*2,[
		[<hooked:microcrafting:1>,<tfctech:metal/wrought_iron_rod>],
		[<hooked:microcrafting:1>,<hooked:microcrafting:1>]]);
#=============================================================================================================================================		

//OSISA
mods.jei.JEI.addDescription(<appliedenergistics2:sky_stone_chest>,"The seemingly Magic like nature of this alien stone enables storage properties many would consider to be... Unnatural.");
mods.jei.JEI.addDescription(<appliedenergistics2:smooth_sky_stone_chest>,"The seemingly Magic like nature of this alien stone enables storage properties many would consider to be... Unnatural.");
//Architecture Craft
recipes.remove(<architecturecraft:largepulley>);
recipes.addShapeless(<architecturecraft:largepulley>,[<astikorcarts:wheel>,<hooked:microcrafting:1>]);
recipes.remove(<architecturecraft:chisel>);
recipes.addShaped(<architecturecraft:chisel>,[
	[<tfc:metal/chisel_head/wrought_iron>,null],
	[<ore:dyeOrange>,<ore:rodStone>]]);	
recipes.remove(<architecturecraft:hammer>);
recipes.addShaped(<architecturecraft:hammer>,[
	[<tfc:metal/hammer_head/wrought_iron>,null],
	[<ore:rodStone>,<ore:dyeOrange>]]);
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench>,[
	[<astralsorcery:blockmarbleslab>,<ore:circlesawBronze>,<astralsorcery:blockmarbleslab>],
	[<ore:support>,<architecturecraft:largepulley>,<ore:support>],
	[<ore:support>,<ore:buttonWood>,<ore:support>]]);


//Liquid Catalyst
mods.jei.JEI.addDescription(<liquid:liquidcatalyst>,"3 Bottles worth in a cauldron can be used to make Nanomachines");
//Stone Rods
mods.jei.JEI.removeAndHide(<microblockcbe:stone_rod>);
recipes.remove(<inspirations:materials:8>);	
#=============================================================================================================================================		
//Gear Remove
mods.unidict.removalByKind.get("Crafting").remove("gear");
//Vanilla Woods Recipes
val VanillaPlanks = <minecraft:planks>.definition;
val VanillaSlabs = <minecraft:wooden_slab>.definition;
val VanillaStairs = [<minecraft:oak_stairs>,<minecraft:spruce_stairs>,<minecraft:birch_stairs>,<minecraft:jungle_stairs>,<minecraft:acacia_stairs>,<minecraft:dark_oak_stairs>] as IItemStack[];
val VanillaFences = [<minecraft:fence>,<minecraft:spruce_fence>,<minecraft:birch_fence>,<minecraft:jungle_fence>,<minecraft:acacia_fence>,<minecraft:dark_oak_fence>] as IItemStack[];
val VanillaGates = [<minecraft:fence_gate>,<minecraft:spruce_fence_gate>,<minecraft:birch_fence_gate>,<minecraft:jungle_fence_gate>,<minecraft:acacia_fence_gate>,<minecraft:dark_oak_fence_gate>] as IItemStack[];
val VanillaDoors = [<minecraft:wooden_door>,<minecraft:spruce_door>,<minecraft:birch_door>,<minecraft:jungle_door>,<minecraft:acacia_door>,<minecraft:dark_oak_door>] as IItemStack[];
val VanillaBoats = [<minecraft:boat>,<minecraft:spruce_boat>,<minecraft:birch_boat>,<minecraft:jungle_boat>,<minecraft:acacia_boat>,<minecraft:dark_oak_boat>] as IItemStack[];

for i in 0 to 6{
recipes.addShaped(VanillaSlabs.makeStack(i)*6,[
	[VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i)]]);
recipes.addShaped(VanillaFences[i]*3,[
	[VanillaPlanks.makeStack(i),<ore:stickWood>,VanillaPlanks.makeStack(i)],
	[VanillaPlanks.makeStack(i),<ore:stickWood>,VanillaPlanks.makeStack(i)]]);
recipes.addShaped(VanillaStairs[i]*8,[
	[VanillaPlanks.makeStack(i),null,null],
	[VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i),null],
	[VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i)]]);	
recipes.addShaped(VanillaGates[i],[
	[<ore:stickWood>,VanillaPlanks.makeStack(i),<ore:stickWood>],
	[<ore:stickWood>,VanillaPlanks.makeStack(i),<ore:stickWood>]]);	
recipes.addShaped(VanillaDoors[i]*3,[
	[VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i),null],
	[VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i),null],
	[VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i),null]]);	
recipes.addShaped(VanillaBoats[i],[
	[VanillaPlanks.makeStack(i),null,VanillaPlanks.makeStack(i)],
	[VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i),VanillaPlanks.makeStack(i)]]);	
}	
#=============================================================================================================================================		
//Sign Post
recipes.removeByMod("signpost");	

#=============================================================================================================================================		
//Applied Energistics
recipes.remove(<appliedenergistics2:part:140>); #quartz cable
recipes.addShaped(<appliedenergistics2:part:140>,[
	[<contenttweaker:quartz_wire>,<contenttweaker:quartz_wire>,<contenttweaker:quartz_wire>]]);
recipes.remove(<appliedenergistics2:part:16>); #fluix cable
recipes.addShaped(<appliedenergistics2:part:16>,[
	[<contenttweaker:fluix_wire>,<contenttweaker:fluix_wire>,<contenttweaker:fluix_wire>]]);	
recipes.remove(<appliedenergistics2:part:56>); #smart cable
recipes.addShaped(<appliedenergistics2:part:56>,[
	[<contenttweaker:glass_wire>,<contenttweaker:glass_wire>,<contenttweaker:glass_wire>],
	[<contenttweaker:fluix_wire>,<contenttweaker:fluix_wire>,<contenttweaker:fluix_wire>],
	[<tfctech:metal/red_alloy_wire>,<tfctech:metal/red_alloy_wire>,<tfctech:metal/red_alloy_wire>]]);		
#=============================================================================================================================================		
//Forge Mircro Saws
recipes.remove(<microblockcbe:saw_diamond>);
recipes.addShaped(<microblockcbe:saw_diamond>,[
	[<contenttweaker:diamond_saw_head>,<ore:rodStone>,null],
	[null,<contenttweaker:diamond_saw_head>,<ore:rodStone>],
	[null,null,<ore:stickTreatedWood>]]);
recipes.remove(<microblockcbe:saw_iron>);
recipes.addShaped(<microblockcbe:saw_iron>,[
	[<tfc:metal/saw_blade/wrought_iron>,<ore:rodStone>,null],
	[null,<tfc:metal/saw_blade/wrought_iron>,<ore:rodStone>],
	[null,null,<ore:stickTreatedWood>]]);
mods.jei.JEI.removeAndHide(<microblockcbe:saw_stone>);	
//Little Tiles Tools
recipes.remove(<littletiles:hammer>);
recipes.addShaped(<littletiles:hammer>,[
	[<tfc:metal/hammer_head/wrought_iron>,null],
	[<ore:rodStone>,<ore:dyeBlue>]]);
recipes.remove(<littletiles:saw>);
recipes.addShaped(<littletiles:saw>,[
	[<tfc:metal/saw_blade/wrought_iron>,null],
	[<ore:rodStone>,<ore:dyeBlue>]]);		
recipes.remove(<littletiles:wrench>);
recipes.addShaped(<littletiles:wrench>,[
	[<contenttweaker:ironwrenchhead>,null],
	[<ore:rodStone>,<ore:dyeBlue>]]);	
recipes.remove(<littletiles:chisel>);
recipes.addShaped(<littletiles:chisel>,[
	[<tfc:metal/chisel_head/wrought_iron>,null],
	[<ore:rodStone>,<ore:dyeBlue>]]);	
recipes.remove(<littletiles:colortube>);
recipes.addShaped(<littletiles:colortube>,[
	[<ore:woolWhite>,null],
	[<ore:rodStone>,<ore:dyeBlue>]]);	
recipes.remove(<littletiles:container>);
recipes.addShapeless(<littletiles:container>,[<contenttweaker:leatherbag>,<ore:dyeBlue>,<littletiles:hammer>.transformDamage(1)]);
recipes.remove(<littletiles:grabber>);
recipes.addShapeless(<littletiles:grabber>,[<contenttweaker:leatherglove>,<ore:dyeBlue>,<littletiles:hammer>.transformDamage(1)]);

//Chisel
recipes.remove(<chisel:factory>);
recipes.addShaped(<chisel:factory>*16,[
	[<tfctech:metal/wrought_iron_bolt>,<tfc:metal/sheet/wrought_iron>,<tfctech:metal/wrought_iron_bolt>],
	[<tfc:metal/sheet/wrought_iron>,null,<tfc:metal/sheet/wrought_iron>],
	[<tfctech:metal/wrought_iron_bolt>,<tfc:metal/sheet/wrought_iron>,<tfctech:metal/wrought_iron_bolt>]]);
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>,[
	[null,<tfc:metal/chisel_head/wrought_iron>],
	[<ore:rodStone>,<ore:dyeOrange>]]);	

recipes.remove(<chisel:chisel_diamond>);
mods.embers.Stamper.add(<chisel:chisel_diamond>.withTag({chiseldata: {}}),<liquid:diamond>*144, <embers:stamp_flat>,<chisel:chisel_iron>);	
recipes.remove(<chisel:chisel_hitech>);
recipes.addShaped(<chisel:chisel_hitech>.withTag({chiseldata: {}}),[
	[null,null,<chisel:chisel_diamond>],
	[null,<opencomputers:material:8>,null],
	[<ore:plasticWhite>,null,null]]);
recipes.remove(<chisel:offsettool>);
recipes.addShaped(<chisel:offsettool>,[
	[null,null,<ore:enderpearl>],
	[null,<extrabitmanipulation:sculpting_loop_head>,null],
	[<minecraft:stick>,null,null]]);
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>,[
	[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
	[<ore:rodBlackBronze>,<ore:chisel>,<ore:rodBlackBronze>],
	[<immersiveengineering:storage_slab:8>,<libvulpes:battery>,<immersiveengineering:storage_slab:8>]]);

//Chisel & Bits
mods.jei.JEI.removeAndHide(<chiselsandbits:chisel_stone>);
recipes.remove(<chiselsandbits:chisel_iron>);
recipes.addShaped(<chiselsandbits:chisel_iron>.withTag({}),[
	[null,<tfc:metal/chisel_head/wrought_iron>],
	[<ore:stickTreatedWood>,null]]);

recipes.remove(<chiselsandbits:chisel_gold>);
mods.embers.Stamper.add(<chiselsandbits:chisel_gold>.withTag({}),<liquid:gold>*144, <embers:stamp_flat>,<chiselsandbits:chisel_iron>);	
recipes.remove(<chiselsandbits:chisel_diamond>);
mods.embers.Stamper.add(<chiselsandbits:chisel_diamond>.withTag({}),<liquid:diamond>*144, <embers:stamp_flat>,<chiselsandbits:chisel_gold>);	

recipes.remove(<chiselsandbits:bitsaw_diamond>);
recipes.addShaped(<chiselsandbits:bitsaw_diamond>,[
	[null,<ore:stickTreatedWood>,<contenttweaker:diamond_saw_head>],
	[<ore:stickTreatedWood>,<contenttweaker:diamond_saw_head>,null],
	[<ore:stickTreatedWood>,null,null]]);

recipes.remove(<chiselsandbits:wrench_wood>);
recipes.addShaped(<chiselsandbits:wrench_wood>,[
	[null,<ore:lumber>,null],
	[null,<minecraft:stick>,<ore:lumber>],
	[<minecraft:stick>,null,null]]);	

recipes.remove(<chiselsandbits:bittank>);
recipes.addShaped(<chiselsandbits:bittank>,[
	[<contenttweaker:wooden_glass_casing>,<contenttweaker:wooden_glass_casing>],
	[<contenttweaker:wooden_glass_casing>,<contenttweaker:wooden_glass_casing>]]);	



recipes.remove(<extrabitmanipulation:chiseled_helmet_iron>);
recipes.addShapeless(<extrabitmanipulation:chiseled_helmet_iron>,[<tfc:metal/helmet/wrought_iron>,<ore:cbChisels>]);

recipes.remove(<extrabitmanipulation:chiseled_chestplate_iron>);
recipes.addShapeless(<extrabitmanipulation:chiseled_chestplate_iron>,[<tfc:metal/chestplate/wrought_iron>,<ore:cbChisels>]);

recipes.remove(<extrabitmanipulation:chiseled_leggings_iron>);
recipes.addShapeless(<extrabitmanipulation:chiseled_leggings_iron>,[<tfc:metal/greaves/wrought_iron>,<ore:cbChisels>]);

recipes.remove(<extrabitmanipulation:chiseled_boots_iron>);
recipes.addShapeless(<extrabitmanipulation:chiseled_boots_iron>,[<tfc:metal/boots/wrought_iron>,<ore:cbChisels>]);

#=============================================================================================================================================		

//Compact Machines

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>,[
	[null,<ore:sheetSteel>,null],
	[<advancedrocketry:lens>,<minecraft:ender_eye>,<immersiveengineering:metal_device1:9>],
	[<immersiveengineering:sheetmetal_slab:8>,<immersiveengineering:sheetmetal_slab:8>,<immersiveengineering:sheetmetal_slab:8>]]);
#=============================================================================================================================================		

//Railcraft Circuits
recipes.remove(<railcraft:circuit:2>); #Singal 
recipes.addShaped(<railcraft:circuit:2>,[
	[<forestry:soldering_iron>.reuse(),<opencomputers:material:7>,<pneumaticcraft:plastic:11>],
	[<opencomputers:material:6>,<pneumaticcraft:unassembled_pcb>,<pneumaticcraft:plastic:11>],
	[<opencomputers:material:6>,<pneumaticcraft:plastic:11>,<pneumaticcraft:plastic:11>]]);

recipes.remove(<railcraft:circuit:1>); #Receiver
recipes.addShaped(<railcraft:circuit:1>,[
	[<forestry:soldering_iron>.reuse(),<opencomputers:material:7>,<pneumaticcraft:plastic:10>],
	[<opencomputers:material:6>,<pneumaticcraft:unassembled_pcb>,<pneumaticcraft:plastic:10>],
	[<opencomputers:material:6>,<pneumaticcraft:plastic:10>,<pneumaticcraft:plastic:10>]]);

recipes.remove(<railcraft:circuit>); #Controller
recipes.addShaped(<railcraft:circuit>,[
	[<forestry:soldering_iron>.reuse(),<opencomputers:material:7>,<pneumaticcraft:plastic:1>],
	[<opencomputers:material:6>,<pneumaticcraft:unassembled_pcb>,<pneumaticcraft:plastic:1>],
	[<opencomputers:material:6>,<pneumaticcraft:plastic:1>,<pneumaticcraft:plastic:1>]]);

recipes.remove(<railcraft:circuit:3>); #Radio
recipes.addShaped(<railcraft:circuit:3>,[
	[<forestry:soldering_iron>.reuse(),<opencomputers:material:7>,<pneumaticcraft:plastic:4>],
	[<opencomputers:material:6>,<pneumaticcraft:unassembled_pcb>,<pneumaticcraft:plastic:4>],
	[<opencomputers:material:6>,<pneumaticcraft:plastic:4>,<pneumaticcraft:plastic:4>]]);
#=============================================================================================================================================		

//Modular Machines
recipes.remove(<modularmachinery:itemmodularium>);
mods.immersiveengineering.AlloySmelter.addRecipe(<modularmachinery:itemmodularium>*2, <ore:ingotCopper>, <ore:ingotRedAlloy>, 2000);

recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>,[
	[<modularmachinery:itemmodularium>,<immersiveengineering:material:27>,<modularmachinery:itemmodularium>],
	[<immersiveengineering:material:27>,<tis3d:controller>,<immersiveengineering:material:27>],
	[<modularmachinery:itemmodularium>,<immersiveengineering:material:27>,<modularmachinery:itemmodularium>]]);

val MMC = <modularmachinery:blockcasing>;

recipes.remove(MMC);
recipes.addShaped(MMC,[
	[null,<modularmachinery:itemmodularium>,null],
	[<modularmachinery:itemmodularium>,<contenttweaker:wooden_glass_casing>,<modularmachinery:itemmodularium>],
	[null,<modularmachinery:itemmodularium>,null]]);

val EOH = <modulardiversity:blockemberoutputhatch>.definition;

val DawnstoneItem = [<embers:nugget_dawnstone>,<embers:ingot_dawnstone>,<embers:plate_dawnstone>] as IItemStack[];
val PlaceHolderItems = [<embers:superheater>,<embers:archaic_circuit>,<embers:eldritch_insignia>,<embers:wildfire_core>,<embers:flame_barrier>] as IItemStack[];

for i, DSI in DawnstoneItem{
recipes.addShaped(EOH.makeStack(i),[
	[null,DSI,null],
	[DSI,MMC,DSI],
	[null,DSI,null]]);
}

for i, PHI in PlaceHolderItems{
recipes.addShaped(EOH.makeStack(i+3),[
	[null,PHI,null],
	[PHI,MMC,PHI],
	[null,PHI,null]]);
}

recipes.remove(<modularmachinery:blockenergyinputhatch:*>);

val RFIH = <modularmachinery:blockenergyinputhatch>.definition;

recipes.addShaped(RFIH.makeStack(0),[
	[null,<tfctech:metal/copper_long_rod>,null],
	[<libvulpes:battery>,MMC,<libvulpes:battery>],
	[null,<tfctech:metal/copper_long_rod>,null]]);

recipes.addShaped(RFIH.makeStack(1),[
	[<tfctech:metal/copper_long_rod>,<immersiveengineering:connector>,<tfctech:metal/copper_long_rod>],
	[<libvulpes:battery:1>,MMC,<libvulpes:battery:1>],
	[<tfctech:metal/copper_long_rod>,<immersiveengineering:connector>,<tfctech:metal/copper_long_rod>]]);	

recipes.addShaped(RFIH.makeStack(2),[
	[null,RFIH.makeStack(0),null],
	[RFIH.makeStack(0),MMC,RFIH.makeStack(0)],
	[null,RFIH.makeStack(0),null]]);

recipes.addShaped(RFIH.makeStack(3),[
	[<tfctech:metal/black_bronze_long_rod>,null,<tfctech:metal/black_bronze_long_rod>],
	[null,RFIH.makeStack(2),null],
	[<tfctech:metal/black_bronze_long_rod>,null,<tfctech:metal/black_bronze_long_rod>]]);

val IECap = <immersiveengineering:metal_device0>.definition;

for i in 4 to 7{

recipes.addShaped(RFIH.makeStack(i),[
	[null,RFIH.makeStack(i- 1),null],
	[RFIH.makeStack(i- 1),IECap.makeStack(i- 4),RFIH.makeStack(i- 1)],
	[null,RFIH.makeStack(i- 1),null]]);
}	

recipes.addShaped(RFIH.makeStack(7),[
	[null,RFIH.makeStack(6),null],
	[RFIH.makeStack(6),MMC,RFIH.makeStack(6)],
	[null,RFIH.makeStack(6),null]]);
#=============================================================================================================================================		
//Macaw's Mods

recipes.remove(<mcwroofs:tile_clay>);
furnace.remove(<mcwroofs:rec_tile>);

mods.terrafirmacraft.ClayKnapping.addRecipe("roof_tile_Knap",<mcwroofs:tile_clay>, 
																	" X X ",
																	" XXX ",
																	" XXX ",
																	" XXX ",
																	" X X "); 

ItemRegistry.registerItemHeat(<mcwroofs:tile_clay>, 1, 1599, false);
ItemRegistry.registerItemHeat(<mcwroofs:rec_tile>, 1, 1599, false);
Heating.addRecipe("roof_tile_Kiln", <mcwroofs:tile_clay>, <mcwroofs:rec_tile>, 1500, 3200);
#=============================================================================================================================================		


#=============================================================================================================================================		

//MrCrayFish Furniture
recipes.remove(<cfm:item_log>);

recipes.remove(<cfm:candle>);
recipes.addShaped(<cfm:candle>,[
	[null,<rustic:candle>,null],
	[<rustic:candle>,<tfctech:metal/wrought_iron_rod>,<rustic:candle>],
	[null,<tfc:metal/double_ingot/wrought_iron>,null]]);

//Crates 	
<cfm:crate>.displayName = "Wood Crate";
recipes.remove(<cfm:crate>);
recipes.addShaped(<cfm:crate>,[
	[<ore:support>,<ore:lumber>,<ore:support>],
	[<ore:lumber>,null,<ore:lumber>],
	[<ore:support>,<ore:lumber>,<ore:support>]]);
recipes.remove(<cfm:crate_spruce>);
recipes.addShaped(<cfm:crate_spruce>,[
	[<ore:support>,<ore:lumber>,<ore:support>],
	[<ore:lumber>,<minecraft:planks:1>,<ore:lumber>],
	[<ore:support>,<ore:lumber>,<ore:support>]]);
recipes.remove(<cfm:crate_birch>);
recipes.addShaped(<cfm:crate_birch>,[
	[<ore:support>,<ore:lumber>,<ore:support>],
	[<ore:lumber>,<minecraft:planks:2>,<ore:lumber>],
	[<ore:support>,<ore:lumber>,<ore:support>]]);
recipes.remove(<cfm:crate_jungle>);
recipes.addShaped(<cfm:crate_jungle>,[
	[<ore:support>,<ore:lumber>,<ore:support>],
	[<ore:lumber>,<minecraft:planks:3>,<ore:lumber>],
	[<ore:support>,<ore:lumber>,<ore:support>]]);
recipes.remove(<cfm:crate_acacia>);
recipes.addShaped(<cfm:crate_acacia>,[
	[<ore:support>,<ore:lumber>,<ore:support>],
	[<ore:lumber>,<minecraft:planks:4>,<ore:lumber>],
	[<ore:support>,<ore:lumber>,<ore:support>]]);
recipes.remove(<cfm:crate_dark_oak>);
recipes.addShaped(<cfm:crate_dark_oak>,[
	[<ore:support>,<ore:lumber>,<ore:support>],
	[<ore:lumber>,<minecraft:planks:5>,<ore:lumber>],
	[<ore:support>,<ore:lumber>,<ore:support>]]);
	
//Crow Bar
recipes.remove(<cfm:item_crow_bar>);
recipes.addShaped(<cfm:item_crow_bar>,[
	[null,<ore:dyeRed>,<tfc:metal/chisel_head/wrought_iron>],
	[<ore:dyeRed>,<tfctech:metal/wrought_iron_long_rod>,<ore:dyeRed>],
	[<tfc:metal/chisel_head/wrought_iron>,<ore:dyeRed>,null]]);

#=============================================================================================================================================		
//Compost
recipes.remove(<forestry:fertilizer_bio>);
<composter:compost>.displayName = "Wet Compost";
<composter:compost>.addTooltip("Sometimes things magically dry out when held");
//Peat

<cyclicmagic:peat_fuel>.displayName = "Saturated Peat";
furnace.setFuel(<cyclicmagic:peat_fuel>, 200);
mods.pyrotech.CompactingBin.addRecipe(<cyclicmagic:peat_fuel>.name~"Block",<cyclicmagic:peat_baked>,<cyclicmagic:peat_fuel>,8,true);
recipes.addShapeless(<cyclicmagic:peat_fuel>*8,[<cyclicmagic:peat_baked>,<opencomputers:material>.reuse()]);

recipes.remove(<forestry:bog_earth>);
recipes.addShaped(<forestry:bog_earth>,[
	[<ore:dirt>,<cyclicmagic:peat_fuel>,<ore:dirt>],
	[<cyclicmagic:peat_fuel>,<ore:lumpCompost>,<cyclicmagic:peat_fuel>],
	[<ore:dirt>,<cyclicmagic:peat_fuel>,<ore:dirt>]]);

mods.pyrotech.CompactingBin.addRecipe(<forestry:peat>.name~"Block",<tfc:peat>,<forestry:peat>,8,true);
recipes.addShapeless(<forestry:peat>*8,[<tfc:peat>,<opencomputers:material>.reuse()]);

recipes.addShapeless(<forestry:peat>*8,[<tfc:peat_grass>.transformReplace(<pyrotech:rock_grass>),<opencomputers:material>.reuse(),<ore:knife>.transformDamage(1)]);

recipes.remove(<forestry:bituminous_peat>);
recipes.addShaped(<forestry:bituminous_peat>*8,[
	[<forestry:peat>,<forestry:peat>,<forestry:peat>],
	[<forestry:peat>,<immersivepetroleum:material>,<forestry:peat>],
	[<forestry:peat>,<forestry:peat>,<forestry:peat>]]);

recipes.remove(<cyclicmagic:peat_fuel_enriched>);
<cyclicmagic:peat_fuel_enriched>.displayName = "Dry Peat";
furnace.setFuel(<cyclicmagic:peat_fuel_enriched>, 400);
mods.pyrotech.CrudeDryingRack.addRecipe("dry_peat",<cyclicmagic:peat_fuel_enriched>,<cyclicmagic:peat_fuel>,12000,true);
mods.integrateddynamics.Squeezer.addRecipe(<cyclicmagic:peat_baked>, <cyclicmagic:peat_fuel_enriched>*8,<liquid:water>*1000);
mods.integrateddynamics.MechanicalSqueezer.addRecipe(<cyclicmagic:peat_baked>, <cyclicmagic:peat_fuel_enriched>*8,<liquid:water>*1000,200);

mods.pyrotech.SoakingPot.addRecipe("Saturated Peat Fresh Water",<cyclicmagic:peat_baked>,<liquid:fresh_water>*1000,<cyclicmagic:peat_unbaked>,12000);
mods.pyrotech.SoakingPot.addRecipe("Peat Fresh Water",<tfc:peat>,<liquid:fresh_water>*1000,<forestry:bog_earth>,12000);

mods.terrafirmacraft.Barrel.addRecipe("Saturated Peat Fresh Water", <cyclicmagic:peat_unbaked>, <liquid:fresh_water>*1000, <cyclicmagic:peat_baked>,12);
mods.terrafirmacraft.Barrel.addRecipe("Peat Fresh Water", <forestry:bog_earth>, <liquid:fresh_water>*1000, <tfc:peat>,12);

#=============================================================================================================================================		

//refraction
recipes.remove(<refraction:spectrometer>);


mods.refraction.AssemblyTable.remove(<refraction:mirror>);
mods.refraction.AssemblyTable.remove(<refraction:prism>);
mods.refraction.AssemblyTable.remove(<refraction:reflection_chamber>);
mods.refraction.AssemblyTable.remove(<refraction:splitter>);
mods.refraction.AssemblyTable.remove(<refraction:sensor>);
mods.refraction.AssemblyTable.remove(<refraction:electric_laser>);
mods.refraction.AssemblyTable.remove(<refraction:laser>);
mods.refraction.AssemblyTable.remove(<refraction:disco_ball>);
mods.refraction.AssemblyTable.remove(<refraction:electron_exciter>);
mods.refraction.AssemblyTable.remove(<refraction:axyz>);
mods.refraction.AssemblyTable.remove(<refraction:optic_fiber>);
mods.refraction.AssemblyTable.remove(<refraction:translocator>);
#=============================================================================================================================================		

//rustichromia
mods.rustichromia.Assembler.removeAll();		
mods.rustichromia.Quern.removeAll();	
mods.rustichromia.Gin.add("Wool_Yarn", [<tfc:animal/product/wool>], [<tfc:animal/product/wool_yarn>*8], [null], 7, 25, 5);

recipes.remove(<rustichromia:thatch_block>);
recipes.remove(<rustichromia:thatch_bed>);
recipes.addShaped(<rustichromia:thatch_bed>,[
	[<quark:thatch_slab>,<quark:thatch_slab>,<quark:thatch_slab>],
	[<tfctech:wiredraw/leather_belt>,<tfctech:wiredraw/leather_belt>,<tfctech:wiredraw/leather_belt>],
	[<quark:thatch_slab>,<quark:thatch_slab>,<quark:thatch_slab>]]);

//Rolling Machines Sheets
val remove = [<ore:plateBrass>,<ore:plateZinc>,<ore:plateInvar>,<ore:plateNickel>,<ore:plateGold>,<ore:plateBronze>,<ore:plateSilver>,<ore:plateLead>,<ore:plateCopper>,<ore:plateTin>,<ore:plateSteel>,<ore:plateIron>,<railcraft:gear:3>] as IIngredient[];
for i in remove{
RollingMachine.remove(i);
}

val sheets =[<tfc:metal/sheet/bismuth>,<tfc:metal/sheet/bismuth_bronze>,<tfc:metal/sheet/black_bronze>,<tfc:metal/sheet/brass>,
<tfc:metal/sheet/bronze>,<tfc:metal/sheet/copper>,<tfc:metal/sheet/gold>,<tfc:metal/sheet/lead>,<tfc:metal/sheet/nickel>,
<tfc:metal/sheet/rose_gold>,<tfc:metal/sheet/silver>,<tfc:metal/sheet/tin>,<tfc:metal/sheet/zinc>,<tfc:metal/sheet/sterling_silver>,
<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/pig_iron>,<tfc:metal/sheet/steel>,<tfc:metal/sheet/platinum>,<tfc:metal/sheet/black_steel>,
<tfc:metal/sheet/blue_steel>,<tfc:metal/sheet/red_steel>,<tfc:metal/sheet/antimony>,<tfc:metal/sheet/constantan>,
<tfc:metal/sheet/electrum>,<tfc:metal/sheet/mithril>,<tfc:metal/sheet/invar>,<tfc:metal/sheet/aluminium>,<tfc:metal/sheet/aluminium_brass>,
<tfc:metal/sheet/ardite>,<tfc:metal/sheet/cobalt>,<tfc:metal/sheet/manyullyn>,<tfc:metal/sheet/osmium>,<tfc:metal/sheet/titanium>,
<tfc:metal/sheet/tungsten>,<tfc:metal/sheet/tungsten_steel>] as IItemStack[];

val ingots =[<tfc:metal/ingot/bismuth>,<tfc:metal/ingot/bismuth_bronze>,<tfc:metal/ingot/black_bronze>,<tfc:metal/ingot/brass>,
<tfc:metal/ingot/bronze>,<tfc:metal/ingot/copper>,<tfc:metal/ingot/gold>,<tfc:metal/ingot/lead>,<tfc:metal/ingot/nickel>,
<tfc:metal/ingot/rose_gold>,<tfc:metal/ingot/silver>,<tfc:metal/ingot/tin>,<tfc:metal/ingot/zinc>,<tfc:metal/ingot/sterling_silver>,
<tfc:metal/ingot/wrought_iron>,<tfc:metal/ingot/pig_iron>,<tfc:metal/ingot/steel>,<tfc:metal/ingot/platinum>,<tfc:metal/ingot/black_steel>,
<tfc:metal/ingot/blue_steel>,<tfc:metal/ingot/red_steel>,<tfc:metal/ingot/antimony>,<tfc:metal/ingot/constantan>,
<tfc:metal/ingot/electrum>,<tfc:metal/ingot/mithril>,<tfc:metal/ingot/invar>,<tfc:metal/ingot/aluminium>,<tfc:metal/ingot/aluminium_brass>,
<tfc:metal/ingot/ardite>,<tfc:metal/ingot/cobalt>,<tfc:metal/ingot/manyullyn>,<tfc:metal/ingot/osmium>,<tfc:metal/ingot/titanium>,
<tfc:metal/ingot/tungsten>,<tfc:metal/ingot/tungsten_steel>] as IItemStack[];

for i, iIngot in ingots{
mods.rustichromia.Assembler.add(sheets[i].name, 1, [iIngot,iIngot], [sheets[i]], 3, 20, 300);
#RollingMachine.addShaped(sheets[i]*2,[[iIngot,iIngot],[iIngot,iIngot]], 300);
}	

#=============================================================================================================================================		

//Horse Power

#recipes.remove(<horsepower:chopping_block>);
#mods.horsepower.Recipes.addShaped(<ore:logWood>, <horsepower:chopping_block>*3, [<ore:logWood>,<ore:toolAxe>.transformDamage(2)]);

recipes.remove(<horsepower:chopper>);
mods.horsepower.Recipes.addShaped(<ore:logWood>, <horsepower:chopper>, [[<ore:gearWood>,<quark:rope>,<ore:gearWood>],
																		[<ore:stickWood>,<ore:axeHead>,<ore:stickWood>],
																		[<ore:stickWood>,<ore:logWood>,<ore:stickWood>]]);

mods.jei.JEI.removeAndHide(<horsepower:hand_grindstone>);
//Honey Drop
mods.horsepower.Press.add(<ore:beeComb>, <forestry:honey_drop>*3);
//Parchment
mods.horsepower.Press.add(<ore:pulpWood>, <minecraft:paper>*3);
mods.horsepower.Press.add(<emergingtechnology:paperpulp>, <minecraft:paper>*3);
//Manual Chopping Block
mods.jei.JEI.addDescription(<horsepower:chopping_block>,"Simply place a log onto the chopping block use right click and then, with an axe in your hand left click the block, about 2 to 4 times, until lumber is acquired. ");
