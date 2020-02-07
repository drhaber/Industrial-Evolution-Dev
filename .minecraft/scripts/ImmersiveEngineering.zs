mods.immersiveengineering.Crusher.removeRecipe(<tfc:metal/dust/wrought_iron>);
mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/wrought_iron>, <minecraft:iron_ingot>, <ore:dustFlux>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide:1>, <tfc:ore/thorianite>, 2048, <nuclearcraft:dust_oxide>);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 2048);
mods.immersiveengineering.CokeOven.addRecipe( <immersiveengineering:material:6>, 500,<tfc:ore/bituminous_coal>, 2000);
//Wires
val wires = <immersiveengineering:material>.definition;
for i in 20 to 24{
	recipes.remove(wires.makeStack(i));
}
recipes.remove(<alternatingflux:material>);

val plates = <immersiveengineering:metal:30>.definition;
for i in 30 to 41{
	recipes.remove(plates.makeStack(i));
}