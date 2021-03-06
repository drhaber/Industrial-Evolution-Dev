import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import mods.terrafirmacraft.ItemRegistry;

//Hammers
recipes.remove(<yurtmod:mallet>);
recipes.addShaped(<yurtmod:mallet>.withTag({ench: [{lvl: 2 as short, id: 34}], RepairCost: 1}),[
	[null,null,<tfc:metal/hammer_head/black_bronze>],
	[null,<minecraft:stick>,null],
	[<minecraft:stick>,<yurtmod:tent_canvas>,null]]);
recipes.remove(<yurtmod:super_mallet>);
recipes.addShaped(<yurtmod:super_mallet>.withTag({ench: [{lvl: 3 as short, id: 34}], RepairCost: 1}),[
	[null,<tfc:metal/double_ingot/gold>,<embers:adhesive>],
	[null,<minecraft:stick>,<tfc:metal/double_ingot/ardite>],
	[<minecraft:stick>,<yurtmod:tent_canvas>,null]]);
//Sections
recipes.remove(<yurtmod:yurt_wall_piece>);
recipes.addShaped(<yurtmod:yurt_wall_piece>,[
	[<ore:support>,<yurtmod:tent_canvas>,<ore:support>],
	[<ore:support>,<yurtmod:tent_canvas>,<ore:support>]]);

recipes.remove(<yurtmod:tepee_wall_piece>);
recipes.addShaped(<yurtmod:tepee_wall_piece>,[
	[null,<minecraft:stick>,null],
	[null,<minecraft:leather>,null],
	[<minecraft:stick>,<minecraft:leather>,<minecraft:stick>]]);

recipes.remove(<yurtmod:bed_wall_piece>);
recipes.addShaped(<yurtmod:bed_wall_piece>,[
	[<tfc:crop/product/burlap_cloth>,<tfc:crop/product/burlap_cloth>,<tfc:crop/product/burlap_cloth>],
	[<tfc:crop/product/burlap_cloth>,<ore:support>,<tfc:crop/product/burlap_cloth>],
	[<tfc:crop/product/burlap_cloth>,<ore:support>,<tfc:crop/product/burlap_cloth>]]);

recipes.remove(<yurtmod:indlu_wall_piece>);
recipes.addShaped(<yurtmod:indlu_wall_piece>,[
	[<minecraft:stick>,<tfc:thatch>,<minecraft:stick>],
	[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>],
	[<minecraft:stick>,<tfc:thatch>,<minecraft:stick>]]);

recipes.remove(<yurtmod:shamiana_wall_piece>);
recipes.addShaped(<yurtmod:shamiana_wall_piece>,[
	[<minecraft:stick>,<ore:clothHighQuality>,<minecraft:stick>],
	[<ore:clothHighQuality>,<ore:clothHighQuality>,<ore:clothHighQuality>],
	[<minecraft:stick>,<ore:clothHighQuality>,<minecraft:stick>]]);    

//Shovels
recipes.remove(<yurtmod:depth_upgrade_stone>);
recipes.addShaped(<yurtmod:depth_upgrade_stone>,[
	[null,null,<ore:tfcRockShovelHead>],
	[null,<minecraft:stick>,null],
	[<botania:manaresource:18>,<yurtmod:tent_canvas>,null]]);

recipes.remove(<yurtmod:depth_upgrade_iron>);
recipes.addShaped(<yurtmod:depth_upgrade_iron>,[
	[null,null,<tfc:metal/shovel_head/wrought_iron>],
	[null,<minecraft:stick>,null],
	[<botania:manaresource:18>,<yurtmod:tent_canvas>,null]]);

recipes.remove(<yurtmod:depth_upgrade_gold>);
recipes.addShaped(<yurtmod:depth_upgrade_gold>,[
	[null,null,<contenttweaker:gold_shovel_head>],
	[null,<minecraft:stick>,null],
	[<botania:manaresource:18>,<yurtmod:tent_canvas>,null]]);

recipes.remove(<yurtmod:depth_upgrade_obsidian>);
recipes.addShaped(<yurtmod:depth_upgrade_obsidian>,[
	[null,null,<contenttweaker:obsidian_shovel_head>],
	[null,<minecraft:stick>,null],
	[<botania:manaresource:18>,<yurtmod:tent_canvas>,null]]);
    
recipes.remove(<yurtmod:depth_upgrade_diamond>);
recipes.addShaped(<yurtmod:depth_upgrade_diamond>,[
	[null,null,<contenttweaker:diamond_shovel_head>],
	[null,<minecraft:stick>,null],
	[<botania:manaresource:18>,<yurtmod:tent_canvas>,null]]);

//Crossbeams
val WCB = <contenttweaker:wooden_cross_beam>;
recipes.remove(<yurtmod:tent_upgrade_gold>);
recipes.remove(<yurtmod:tent_upgrade_obsidian>);
recipes.remove(<yurtmod:tent_upgrade_diamond>);

recipes.addShaped(WCB,[
	[<minecraft:stick>,null,<minecraft:stick>],
	[null,<minecraft:stick>,null],
	[<minecraft:stick>,null,<minecraft:stick>]]);

mods.embers.Stamper.add(<yurtmod:tent_upgrade_gold>,<liquid:gold>*10368, <embers:stamp_flat>,WCB);
mods.embers.Stamper.add(<yurtmod:tent_upgrade_obsidian>,<liquid:crystal>*10368, <embers:stamp_flat>,<yurtmod:tent_upgrade_gold>);
mods.embers.Stamper.add(<yurtmod:tent_upgrade_diamond>,<liquid:diamond>*10368, <embers:stamp_flat>,<yurtmod:tent_upgrade_obsidian>);

mods.embers.Stamper.add(<contenttweaker:diamond_shovel_head>,<liquid:diamond>*666, <embers:stamp_flat>,<contenttweaker:manasteel_shovel_head>);
mods.embers.Stamper.add(<contenttweaker:obsidian_shovel_head>,<liquid:crystal>*250, <embers:stamp_flat>,<contenttweaker:diamond_shovel_head>);
