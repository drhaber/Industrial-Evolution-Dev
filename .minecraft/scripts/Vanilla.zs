furnace.setFuel(<tfc:ore/bituminous_coal>, 1600);
recipes.remove(<minecraft:glass_bottle>);

//Coal Block
val CO = <ore:coal>;
recipes.addShapeless(<tfc:ore/bituminous_coal>*9,[<minecraft:coal_block>]);
recipes.addShaped(<minecraft:coal_block>,[
	[CO,CO,CO],
	[CO,CO,CO],
	[CO,CO,CO]]);