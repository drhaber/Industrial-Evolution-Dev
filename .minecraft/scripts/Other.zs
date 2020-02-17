import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
//Missing Localization
game.setLocalization("item.railcraft.charge.electrode.carbon.name", "Silver Electrode");
game.setLocalization("item.railcraft.charge.electrode.silver.name", "Carbon Electrode");
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
//Water Bucket
recipes.addShapeless(<minecraft:water_bucket>,[<forge:bucketfilled>.withTag({FluidName: "fresh_water", Amount: 1000})]);
recipes.addShapeless(<forge:bucketfilled>.withTag({FluidName: "fresh_water", Amount: 1000}),[<minecraft:water_bucket>]);

//GlowString
recipes.addShaped(<contenttweaker:glowstring>,[
	[<ore:string>,<ore:dustGlowstone>],
	[<ore:dustGlowstone>,<ore:dustGlowstone>]]);
//Project Red
furnace.addRecipe(<projectred-core:resource_item>*2, <ore:stone>);
mods.jei.JEI.removeAndHide(<projectred-transmission:wire:34>, false);
mods.jei.JEI.removeAndHide(<projectred-transmission:framed_wire:34>, false);
recipes.addShapeless(<projectred-core:resource_item:301> * 8, [<ore:saw>.reuse().transformDamage(7), <projectred-core:resource_item:300>]);
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
//Culinary Construct
mods.jei.JEI.hide(<culinaryconstruct:sandwich>);
mods.jei.JEI.addDescription(<culinaryconstruct:sandwich_station>,"Using Bread and up to any five food items, this unique crafting station can dynamically create sandwiches.");
//OSISA
mods.jei.JEI.addDescription(<appliedenergistics2:sky_stone_chest>,"The seemingly Magic like nature of this alien stone enables storage properties many would consider to be... Unnatural.");
mods.jei.JEI.addDescription(<appliedenergistics2:smooth_sky_stone_chest>,"The seemingly Magic like nature of this alien stone enables storage properties many would consider to be... Unnatural.");
//Architecture Craft
recipes.remove(<architecturecraft:largepulley>);
recipes.addShapeless(<architecturecraft:largepulley>,[<astikorcarts:wheel>,<quark:rope>]);
//Stone Rods
mods.jei.JEI.removeAndHide(<microblockcbe:stone_rod>);
mods.jei.JEI.removeAndHide(<inspirations:materials:8>);	