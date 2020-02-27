//CO2 Recyling
mods.nuclearcraft.chemical_reactor.addRecipe(<liquid:carbon_dioxide>*100, <liquid:liquidcatalyst>*10,<liquid:liquidcarbonsolution>*100,null);
mods.nuclearcraft.crystallizer.addRecipe(<liquid:liquidcarbonsolution>*100, <tfc:powder/graphite>);
//Silicon
mods.nuclearcraft.melter.addRecipe(<ore:itemSilicon>, <liquid:silicon_molten_black>*125);
mods.nuclearcraft.melter.addRecipe(<projectred-core:resource_item:300>, <liquid:silicon_molten_black>*1000);
//Iridium
mods.nuclearcraft.infuser.addRecipe(<ore:dustCobalt>, <liquid:neutron>*100, <morebees:dustiridium>);
//Leather
mods.nuclearcraft.manufactory.removeRecipeWithOutput(<minecraft:leather>);
//Peat
mods.nuclearcraft.pressurizer.addRecipe(<tfc:peat>, <forestry:peat>*6);