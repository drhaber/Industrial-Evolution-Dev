import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;

//Missing Localization
game.setLocalization("item.railcraft.charge.electrode.carbon.name", "Silver Electrode");
game.setLocalization("item.railcraft.charge.electrode.silver.name", "Carbon Electrode");
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

//Quark
recipes.remove(<quark:thatch>);
	//Candles
	recipes.removeShaped(<quark:candle>*2,[
		[<ore:string>],
		[<quark:tallow>],
		[<quark:tallow>]]);
	recipes.addShaped(<quark:candle>*2,[
		[<contenttweaker:glowstring>],
		[<quark:tallow>],
		[<quark:tallow>]]);
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
#=============================================================================================================================================		

//Marble
mods.terrafirmacraft.Barrel.addRecipe("Quark_marble", <tfc:raw/marble>, <liquid:hot_water>*250, <quark:marble>, <liquid:hot_water>*0, 4);
//Lithium
furnace.addRecipe(<nuclearcraft:dust:6>*4, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "brine", Amount: 1000}}));
mods.immersiveengineering.BlastFurnace.addRecipe(<nuclearcraft:dust:6>*4, <forge:bucketfilled>.withTag({FluidName: "brine", Amount: 1000}), 2000,<minecraft:bucket>);
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
furnace.addRecipe(<projectred-core:resource_item>*2, <ore:stone>);
mods.jei.JEI.removeAndHide(<projectred-transmission:wire:34>, false);
mods.jei.JEI.removeAndHide(<projectred-transmission:framed_wire:34>, false);
recipes.addShapeless(<projectred-core:resource_item:301> * 8, [<ore:saw>.transformDamage(7), <projectred-core:resource_item:300>]);
furnace.remove(<projectred-core:resource_item:104>);
furnace.remove(<projectred-core:resource_item:342>);
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

//Culinary Construct
mods.jei.JEI.hide(<culinaryconstruct:sandwich>);
mods.jei.JEI.addDescription(<culinaryconstruct:sandwich_station>,"Using Bread and up to any five food items, this unique crafting station can dynamically create sandwiches.");
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
