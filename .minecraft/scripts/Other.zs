//Quark
recipes.remove(<quark:thatch>);
recipes.removeShapeless(<minecraft:wheat>, [<quark:thatch>], false);

<quark:thatch>.displayName = "Solid Thatch";
<quark:thatch_stairs>.displayName = "Solid Thatch Stairs";
<quark:thatch_slab>.displayName = "Solid Thatch Slab";
mods.jei.JEI.addDescription(<quark:thatch>,"Magic has made this thatch solid");
mods.jei.JEI.addDescription(<quark:thatch_stairs>,"Magic has made this thatch solid");
mods.jei.JEI.addDescription(<quark:thatch_slab>,"Magic has made this thatch solid");

//Lithium
furnace.addRecipe(<nuclearcraft:dust:6>*4, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "brine", Amount: 1000}}));
mods.immersiveengineering.BlastFurnace.addRecipe(<nuclearcraft:dust:6>*4, <forge:bucketfilled>.withTag({FluidName: "brine", Amount: 1000}), 2000,<minecraft:bucket>);

//Creosote
furnace.remove(<railcraft:fluid_bottle_creosote>);
//Water Bucket
recipes.addShapeless(<minecraft:water_bucket>,[<forge:bucketfilled>.withTag({FluidName: "fresh_water", Amount: 1000})]);
recipes.addShapeless(<forge:bucketfilled>.withTag({FluidName: "fresh_water", Amount: 1000}),[<minecraft:water_bucket>]);

//Project Red
furnace.addRecipe(<projectred-core:resource_item>*2, <ore:stone>);
mods.jei.JEI.removeAndHide(<projectred-transmission:wire:34>, false);
mods.jei.JEI.removeAndHide(<projectred-transmission:framed_wire:34>, false);
recipes.addShapeless(<projectred-core:resource_item:301> * 8, [<ore:saw>.reuse().transformDamage(7), <projectred-core:resource_item:300>]);

