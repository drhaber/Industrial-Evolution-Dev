import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;

//Hook Rename
<jaff:iron_hook>.displayName = "Iron Hook";
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
//Torch Lever
recipes.remove(<inspirations:torch_lever>);
recipes.addShapeless(<inspirations:torch_lever>, [<tconstruct:stone_torch>,<minecraft:lever>]);
//Coal Coke Block
mods.jei.JEI.removeAndHide(<railcraft:generic:6>);
//Missing Localization
game.setLocalization("item.railcraft.charge.electrode.carbon.name", "Silver Electrode");
game.setLocalization("item.railcraft.charge.electrode.silver.name", "Carbon Electrode");
//Rails
recipes.remove(<railcraft:tie>);
recipes.addShaped(<railcraft:tie>,[
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>]]);
recipes.remove(<tconstruct:wood_rail>);
recipes.addShaped(<tconstruct:wood_rail>*4,[
	[<ore:stickTreatedWood>,null,<ore:stickTreatedWood>],
	[<ore:stickTreatedWood>,<railcraft:railbed>,<ore:stickTreatedWood>],
	[<ore:stickTreatedWood>,null,<ore:stickTreatedWood>]]);
recipes.remove(<tconstruct:wood_rail_trapdoor>);
recipes.addShapeless(<tconstruct:wood_rail_trapdoor>, [<tconstruct:wood_rail>,<ore:trapdoorWood>]);
//Paper Pulp
mods.terrafirmacraft.Barrel.addRecipe("Paper", <tfctech:powder/wood>*4, <liquid:hot_water>*150, <emergingtechnology:paperpulp>, 4);
//Paper
mods.forestry.Carpenter.removeRecipe(<minecraft:paper>);
//Winding Apparatus
recipes.addShaped(<contenttweaker:wooden_glass_casing>,[
	[null,<ore:stickWood>,null],
	[<ore:stickWood>,<ore:blockGlass>,<ore:stickWood>],
	[null,<ore:stickWood>,null]]);
recipes.addShaped(<contenttweaker:winding_apparatus>,[
	[null,<contenttweaker:wooden_glass_casing>,<ore:rodStone>],
	[<ore:wireBrass>,<ore:gearBrass>,null],
	[<ore:wireBrass>,<ore:wireBrass>,null]]);	
#=============================================================================================================================================		
//Colored Water 
recipes.removeByMod("colored_water");
val dyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,
<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];

val coloredWater = [<liquid:water_white>,<liquid:water_orange>,<liquid:water_magenta>,<liquid:water_light_blue>,<liquid:water_yellow>,<liquid:water_lime>,<liquid:water_pink>,<liquid:water_gray>,<liquid:water_silver>,
<liquid:water_cyan>,<liquid:water_purple>,<liquid:water_blue>,<liquid:water_brown>,<liquid:water_green>,<liquid:water_red>,<liquid:water_black>] as ILiquidStack[];

val glowingcoloredWater = [<liquid:glowing_water_white>,<liquid:glowing_water_orange>,<liquid:glowing_water_magenta>,<liquid:glowing_water_light_blue>,<liquid:glowing_water_yellow>,<liquid:glowing_water_lime>,<liquid:glowing_water_pink>,<liquid:glowing_water_gray>,<liquid:glowing_water_silver>,
<liquid:glowing_water_cyan>,<liquid:glowing_water_purple>,<liquid:glowing_water_blue>,<liquid:glowing_water_brown>,<liquid:glowing_water_green>,<liquid:glowing_water_red>,<liquid:glowing_water_black>] as ILiquidStack[];

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

recipes.removeShapeless(wools.makeStack(i)*8);
recipes.removeShapeless(wools.makeStack(i));
recipes.removeShapeless(beds.makeStack(i));

}

#=============================================================================================================================================		
//Flopper
recipes.remove(<flopper:flopper>);
recipes.addShaped(<flopper:flopper>,[
	[null,<tfc:wooden_bucket>,null],
	[<ore:sheetIron>,<tconstruct:wooden_hopper>,<ore:sheetIron>],
	[null,<ore:sheetIron>,null]]);
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
	//Rope
	recipes.addShaped(<quark:rope>*2,[
		[<tfc:crop/product/jute_fiber>,<tfc:crop/product/jute_fiber>,<tfc:crop/product/jute_fiber>],
		[<tfc:crop/product/jute_fiber>,null,<tfc:crop/product/jute_fiber>],
		[<tfc:crop/product/jute_fiber>,<tfc:crop/product/jute_fiber>,<tfc:crop/product/jute_fiber>]]);
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
furnace.addRecipe(<projectred-core:resource_item>*2, <ore:stone>);
mods.jei.JEI.removeAndHide(<projectred-transmission:wire:34>, false);
mods.jei.JEI.removeAndHide(<projectred-transmission:framed_wire:34>, false);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:252>, false);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:251>, false);
recipes.addShapeless(<projectred-core:resource_item:301> * 8, [<ore:saw>.transformDamage(7), <projectred-core:resource_item:300>]);
furnace.remove(<projectred-core:resource_item:104>);
furnace.remove(<projectred-core:resource_item:342>);
furnace.remove(<projectred-core:resource_item:103>);
mods.jei.JEI.removeAndHide(<projectred-core:resource_item:312>, false);
mods.jei.JEI.removeAndHide(<projectred-core:multimeter>, false);
mods.jei.JEI.removeAndHide(<projectred-core:screwdriver>, false);
mods.jei.JEI.hide(<projectred-core:resource_item:105>);
mods.jei.JEI.hide(<projectred-core:resource_item:104>);
mods.jei.JEI.hide(<projectred-core:resource_item:342>);
mods.jei.JEI.hide(<projectred-core:resource_item:101>);
mods.jei.JEI.hide(<projectred-core:resource_item:102>);
mods.jei.JEI.hide(<projectred-core:resource_item:100>);
mods.jei.JEI.hide(<projectred-core:resource_item:600>);
#=============================================================================================================================================		

//OSISA
mods.jei.JEI.addDescription(<appliedenergistics2:sky_stone_chest>,"The seemingly Magic like nature of this alien stone enables storage properties many would consider to be... Unnatural.");
mods.jei.JEI.addDescription(<appliedenergistics2:smooth_sky_stone_chest>,"The seemingly Magic like nature of this alien stone enables storage properties many would consider to be... Unnatural.");
//Architecture Craft
recipes.remove(<architecturecraft:largepulley>);
recipes.addShapeless(<architecturecraft:largepulley>,[<astikorcarts:wheel>,<quark:rope>]);
//Liquid Catalyst
mods.jei.JEI.addDescription(<liquid:liquidcatalyst>,"3 Bottles worth in a cauldron can be used to make Nanomachines");
//Stone Rods
mods.jei.JEI.removeAndHide(<microblockcbe:stone_rod>);
mods.jei.JEI.removeAndHide(<inspirations:materials:8>);	
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

//Compact Machines

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector>,[
	[null,<ore:sheetSteel>,null],
	[<advancedrocketry:lens>,<minecraft:ender_eye>,<immersiveengineering:metal_device1:9>],
	[<immersiveengineering:sheetmetal_slab:8>,<immersiveengineering:sheetmetal_slab:8>,<immersiveengineering:sheetmetal_slab:8>]]);
#=============================================================================================================================================		

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
RollingMachine.addShaped(sheets[i]*2,[[iIngot,iIngot],[iIngot,iIngot]], 300);
}