furnace.setFuel(<tfc:ore/bituminous_coal>, 1600);
recipes.remove(<minecraft:glass_bottle>);

//Coal Block
val CO = <ore:coal>;
recipes.addShapeless(<tfc:ore/bituminous_coal>*9,[<minecraft:coal_block>]);
recipes.addShaped(<minecraft:coal_block>,[
	[CO,CO,CO],
	[CO,CO,CO],
	[CO,CO,CO]]);

//End Portal
recipes.addShaped(<minecraft:end_portal_frame>,[
	[<nuclearcraft:alloy:2>,<opencomputers:material:13>,<nuclearcraft:alloy:2>],
	[<minecraft:end_stone>,<aunis:crystal_ender>,<minecraft:end_stone>],
	[<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>]]);	
//Anvil
recipes.remove(<railcraft:anvil>);
recipes.addShapeless(<minecraft:anvil>,[<tfc:metal/anvil/wrought_iron>]);
recipes.addShapeless(<railcraft:anvil>,[<tfc:metal/anvil/black_steel>]);	