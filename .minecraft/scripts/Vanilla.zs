furnace.setFuel(<tfc:ore/bituminous_coal>, 1600);
recipes.remove(<minecraft:glass_bottle>);

//Coal Block
val CO = <ore:coal>;
recipes.addShapeless(<tfc:ore/bituminous_coal>*9,[<minecraft:coal_block>]);
recipes.addShaped(<minecraft:coal_block>,[
	[CO,CO,CO],
	[CO,CO,CO],
	[CO,CO,CO]]);
//Torch Recipes
recipes.remove(<minecraft:torch>);
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
recipes.addShapeless(<minecraft:anvil>,[<tfc:metal/anvil/wrought_iron>]);
recipes.addShapeless(<railcraft:anvil>,[<tfc:metal/anvil/black_steel>]);	
//Sand 
mods.terrafirmacraft.Barrel.addRecipe("Vanilla_sand", <ore:tfcSand>, <liquid:hot_water>*250, <minecraft:sand>, <liquid:hot_water>*0, 4);
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