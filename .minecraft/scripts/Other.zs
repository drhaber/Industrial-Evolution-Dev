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