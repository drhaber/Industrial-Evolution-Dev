
recipes.remove(<minecraft:glass_bottle>);
//Black Stained Glass
recipes.addShaped(<minecraft:stained_glass:15>*8,[
	[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>],
	[<minecraft:glass>,<ore:dyeBlack>,<minecraft:glass>],
	[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>]]);
//Coal Block
val CO = <ore:coal>;
recipes.addShapeless(<tfc:ore/bituminous_coal>*9,[<minecraft:coal_block>]);
recipes.addShaped(<minecraft:coal_block>,[
	[CO,CO,CO],
	[CO,CO,CO],
	[CO,CO,CO]]);
//Torch Recipes
recipes.remove(<minecraft:torch>);
//Cauldron
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>,[
	[<ore:sheetBlackBronze>,null,<ore:sheetBlackBronze>],
	[<ore:sheetBlackBronze>,null,<ore:sheetBlackBronze>],
	[<ore:sheetBlackBronze>,<ore:sheetBlackBronze>,<ore:sheetBlackBronze>]]);
//Pressure Plate
<minecraft:wooden_pressure_plate>.displayName = "Wooden Pressure Plate";
recipes.remove(<minecraft:wooden_pressure_plate>);
recipes.addShaped(<minecraft:wooden_pressure_plate>*2,[
	[<ore:saw>.transformDamage(1)],
	[<ore:lumber>,<ore:lumber>]]);
//Crafting Table COnversion
recipes.addShapeless(<minecraft:crafting_table>,[<astralsorcery:itemcraftingcomponent:5>,<ore:craftingTableWood>]);
//Furnace
val CB = <ore:cobblestone>;
recipes.addShaped(<minecraft:furnace>,[
	[CB,CB,CB],
	[CB,<tfc:bloomery>,CB],
	[CB,CB,CB]]);
//End Portal
recipes.addShaped(<minecraft:end_portal_frame>,[
	[<nuclearcraft:alloy:2>,<opencomputers:material:13>,<nuclearcraft:alloy:2>],
	[<minecraft:end_stone>,<aunis:crystal_ender>,<minecraft:end_stone>],
	[<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>]]);	
//Anvil
recipes.remove(<railcraft:anvil>);
recipes.addShapeless(<minecraft:anvil>,[<tfc:metal/anvil/black_bronze>]);
recipes.addShapeless(<railcraft:anvil>,[<tfc:metal/anvil/wrought_iron>]);	
<minecraft:anvil>.displayName = "Black Bronze Enchanting Anvil";
<railcraft:anvil>.displayName = "Wrought Iron Enchanting Anvil";
//Sand 
#mods.terrafirmacraft.Barrel.addRecipe("Vanilla_sand", <ore:tfcSand>, <liquid:hot_water>*250, <minecraft:sand>, <liquid:hot_water>*0, 4);
mods.jei.JEI.addDescription(<minecraft:sand>,"Exposing Liquid Starlight to Lava seems to have a rather peculiar reaction...");
//Paper
mods.terrafirmacraft.Barrel.addRecipe("Paper", <astralsorcery:itemcraftingcomponent:5>, <liquid:hot_water>*250, <minecraft:paper>, <liquid:hot_water>*0, 4);
//Sandstone
recipes.addShaped(<minecraft:sandstone>,[
[<minecraft:sand>,<minecraft:sand>],
[<minecraft:sand>,<minecraft:sand>]]);
//Charcoal 
furnace.remove(<minecraft:coal:1>);
//Leads
recipes.addShaped(<minecraft:lead>,[
	[null,<ore:string>,<ore:string>],
	[null,<ore:string>,<ore:string>],
	[<ore:string>,null,null]]);
//Redstone Lamp
recipes.addShaped(<minecraft:redstone_lamp>,[
	[<minecraft:glowstone>],
	[<quark:framed_glass>],
	[<minecraft:redstone_torch>]]);