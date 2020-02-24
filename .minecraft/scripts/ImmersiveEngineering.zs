mods.immersiveengineering.Crusher.removeRecipe(<tfc:metal/dust/wrought_iron>);
#mods.immersiveengineering.AlloySmelter.addRecipe(<tfc:metal/ingot/wrought_iron>, <minecraft:iron_ingot>, <ore:dustFlux>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide:1>, <tfc:ore/thorianite>, 2048, <nuclearcraft:dust_oxide>);
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 2048);
mods.immersiveengineering.CokeOven.addRecipe( <immersiveengineering:material:6>, 500,<tfc:ore/bituminous_coal>, 2000);
mods.terrafirmacraft.Barrel.addRecipe("Hemp_Fibre", <tfc:crop/product/jute_fiber>, <liquid:creosote>*10, <immersiveengineering:material:4>, <liquid:creosote>*8, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_Lumber", <ore:lumber>, <liquid:creosote>*250, <contenttweaker:treatedlumber>, <liquid:creosote>*150, 4);
mods.terrafirmacraft.Barrel.addRecipe("Treated_Stick", <ore:stickWood>, <liquid:creosote>*50, <immersiveengineering:material>, <liquid:creosote>*25, 4);
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

mods.immersivetechnology.Distiller.addRecipe(<liquid:fresh_water>*10,<liquid:salt_water>*30,<tfc:powder/salt>);
mods.immersivetechnology.Distiller.addRecipe(<liquid:water>*1000,<liquid:fresh_water>*1000,<tfc:powder/salt>);
//Glove
recipes.remove(<immersiveengineering:toolupgrade:12>);
recipes.addShaped(<immersiveengineering:toolupgrade:12>,[
	[null,null,<contenttweaker:leatherglove>],
	[null,<railcraft:charge>,null],
	[<ore:itemBattery>,null,null]]);
//Scaffold
recipes.remove(<immersiveengineering:wooden_decoration:1>);
recipes.addShaped(<immersiveengineering:wooden_decoration:1>,[
	[<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>,<contenttweaker:treatedlumber>],
	[null,<immersiveengineering:material>,null],
	[<immersiveengineering:material>,null,<immersiveengineering:material>]]);
//Kiln Brick
val n = <minecraft:netherbrick>;
val f = <tfc:ceramics/fired/fire_brick>;
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10>,[
	[n,f,n],
	[f,n,f],
	[n,f,n]]);
//Liquid Catalyst
mods.immersiveengineering.ArcFurnace.addRecipe(<forge:bucketfilled>.withTag({FluidName: "liquidcatalyst", Amount: 1000}), <minecraft:bucket>,<immersiveengineering:material:7>, 2000, 2048, [<ore:dustObsidian>,<tfc:powder/salt>, <ore:dustGlowstone>,<ore:dustTin>]);
//Graphite
mods.immersiveengineering.CokeOven.addRecipe(<tfc:ore/graphite>, 0, <ore:fuelCoke>, 2400);
//Potassium Carbonate
mods.immersiveengineering.CokeOven.addRecipe(<contenttweaker:potassiumcarbonate>, 0, <ore:dustPotash>, 2400);
//Powered Lantern
recipes.remove(<immersiveengineering:metal_device1:4>);
recipes.addShaped("Tungsten_Lantern",<immersiveengineering:metal_device1:4>,[
	[null,<ore:plateLead>,null],
	[<ore:paneGlass>,<tfctech:metal/tungsten_wire>,<ore:paneGlass>],
	[<ore:plateCopper>,<ore:plateLead>,<ore:plateCopper>]]);
recipes.addShaped("Magic_Lantern",<immersiveengineering:metal_device1:4>,[
	[null,<ore:plateLead>,null],
	[<ore:paneGlass>,<astralsorcery:itemrockcrystalsimple>,<ore:paneGlass>],
	[<ore:plateCopper>,<ore:plateLead>,<ore:plateCopper>]]);
//Iron Rod
recipes.remove(<immersiveengineering:material:1>);
//Silicon
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*2, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustCoal>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<projectred-core:resource_item:300>*4, <ore:dustQuartz>, <forge:bucketfilled>.withTag({FluidName: "carbon_dioxide", Amount: 1000}), 2000, 2048, [<minecraft:bucket>, <ore:dustGraphite>]);
