import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry.registerItemHeat;
import mods.terrafirmacraft.ItemRegistry.registerFood;
import mods.terrafirmacraft.Heating;


mods.emergingtechnology.Cooker.removeAll();

recipes.remove(<foodexpansion:itembaconandegg>);
recipes.addShapeless(<foodexpansion:itembaconandegg>,[<ore:foodCookedegg>,<foodexpansion:itemcookedbacon>]);

furnace.remove(<minecraft:bread>);

mods.jei.JEI.removeAndHide(<foodexpansion:itemdough>); #dough

/*
val Jerky = [<tconstruct:edible:10>,<tconstruct:edible:11>,<tconstruct:edible:12>,
<tconstruct:edible:13>,<tconstruct:edible:14>,<tconstruct:edible:15>,<tconstruct:edible:20>] as IItemStack[];	
val JerkyInputs = [<foodexpansion:itemcompressedflesh>,<tfc:food/cooked_beef>,<tfc:food/cooked_chicken>,
<tfc:food/cooked_pork>,<tfc:food/cooked_mutton>,<tfc:food/cooked_rabbit>,<tfc:food/fish>] as IItemStack[];
for i, J in Jerky{	
mods.tconstruct.Drying.removeRecipe(J);
mods.tconstruct.Drying.addRecipe(J,JerkyInputs[i], 6000);
}
mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_ground_meat>,<contenttweaker:ground_meat>, 6000);
*/

//Jerky
mods.integrateddynamics.DryingBasin.addRecipe(<contenttweaker:ground_meat>, null, <contenttweaker:dried_ground_meat>, null, 10);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<contenttweaker:ground_meat>, null, <contenttweaker:dried_ground_meat>, null, 10);

#=============================================================================================================================================		
//Food Recipes

<foodexpansion:itemcompressedflesh>.displayName = "Salted Flesh";
recipes.remove(<foodexpansion:itemcompressedflesh>);
recipes.addShaped(<foodexpansion:itemcompressedflesh>,[
	[<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>],
	[<minecraft:rotten_flesh>,<ore:dustSalt>,<minecraft:rotten_flesh>],
	[<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>]]);

mods.terrafirmacraft.Barrel.addRecipe("honey_bread1", <ore:breadAny>, <liquid:honey>*10, <forestry:honeyed_slice>,1);
mods.terrafirmacraft.Barrel.addRecipe("honey_bread2", <ore:breadAny>, <liquid:for.honey>*10, <forestry:honeyed_slice>,1);

recipes.addShapeless(<contenttweaker:raw_seeds>,[<ore:seedAny>,<ore:knife>.transformDamage(2)]);

recipes.remove(<minecraft:cookie>);
recipes.addShapeless(<contenttweaker:cookie_dough>,[<ore:dough>,<nuclearcraft:ground_cocoa_nibs>,<minecraft:sugar>]);

recipes.remove(<foodexpansion:itemchocolatebar>);
recipes.addShapeless(<foodexpansion:itemchocolatebar>,[<nuclearcraft:milk_chocolate>,<nuclearcraft:dark_chocolate>]);

recipes.remove(<foodexpansion:itembacon>);
recipes.addShapeless(<foodexpansion:itembacon>*3,[<ore:knife>.transformDamage(2),<tfc:food/pork>]);

recipes.addShapeless(<contenttweaker:uncooked_pumpkin_pie>,[<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<minecraft:pumpkin>,<minecraft:sugar>]);
recipes.addShapeless(<contenttweaker:uncooked_pumpkin_pie>,[<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<minecraft:pumpkin>,<minecraft:sugar>]);

recipes.addShapeless(<contenttweaker:uncooked_carrot_cake>,[<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<tfc:food/carrot>,<minecraft:sugar>]);
recipes.addShapeless(<contenttweaker:uncooked_carrot_cake>,[<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<tfc:food/carrot>,<minecraft:sugar>]);

recipes.addShapeless(<contenttweaker:uncooked_pizza>,[<ore:knife>.transformDamage(5),<ore:dough>,<ore:dustSalt>,<ore:categoryMeat>,<tfc:food/tomato>,<tfc:food/cheese>,<ore:mushroomAny>,<tfc:food/garlic>]);

recipes.addShapeless(<contenttweaker:uncooked_beet_noodles>,[<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),<ore:knife>.transformDamage(5),<ore:dough>,<ore:dustSalt>,<tfc:food/beet>,<tfc:food/beet>]);

recipes.addShapeless(<contenttweaker:snow_cream>,[<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:sugar>,<minecraft:bowl>]);
recipes.addShapeless(<contenttweaker:snow_cream>,[<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:sugar>,<minecraft:bowl>]);

recipes.addShapeless(<contenttweaker:pemmican>,[<contenttweaker:dried_ground_meat>,<contenttweaker:dried_fruit>,<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).transformReplace(<minecraft:bowl>),<ore:knife>.transformDamage(5),<ore:grain>]);
#=============================================================================================================================================		

//Soups and stews
mods.inspirations.Cauldron.removeFluidRecipe(<minecraft:beetroot_soup>);
mods.inspirations.Cauldron.removeFluidTransform(<liquid:beetroot_soup>, <minecraft:beetroot>, <liquid:water>);

mods.inspirations.Cauldron.removeFluidRecipe(<minecraft:mushroom_stew>);
mods.inspirations.Cauldron.removeFluidTransform(<liquid:mushroom_stew>,<ore:mushroomAny>, <liquid:water>);

mods.inspirations.Cauldron.removeFluidRecipe(<inspirations:potato_soup>);
mods.inspirations.Cauldron.removeFluidTransform(<liquid:potato_soup>, <minecraft:baked_potato>, <liquid:mushroom_stew>);

mods.inspirations.Cauldron.removeFluidRecipe(<minecraft:rabbit_stew>);
mods.inspirations.Cauldron.removeFluidTransform(<liquid:rabbit_stew>, <minecraft:cooked_rabbit>, <liquid:potato_soup>);

recipes.remove(<foodexpansion:itemspidersoup>);
recipes.remove(<foodexpansion:itemnetherwartsoup>);
recipes.remove(<foodexpansion:itemblazecream>);
recipes.remove(<inspirations:potato_soup>);
recipes.remove(<minecraft:mushroom_stew>);
recipes.remove(<foodexpansion:itemcarrotseedsoup>);
recipes.remove(<betternether:stalagnate_bowl_wart>);
recipes.remove(<betternether:stalagnate_bowl_mushroom>);

mods.inspirations.Cauldron.addFluidRecipe(<minecraft:beetroot_soup>,<minecraft:bowl>,  <liquid:beetroot_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemcarrotseedsoup>,<minecraft:bowl>,  <liquid:carrot_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemspidersoup>,<minecraft:bowl>, <liquid:spider_eye_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemnetherwartsoup>,<minecraft:bowl>,  <liquid:nether_wart_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemblazecream>,<minecraft:bowl>,  <liquid:blaze_cream_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<inspirations:potato_soup>,<minecraft:bowl>,  <liquid:potato_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:mushroom_stew>,<minecraft:bowl>,  <liquid:mushroom_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:rabbit_stew>,<minecraft:bowl>,  <liquid:rabbit_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:i_vegetable_soup>,<minecraft:bowl>,  <liquid:vegetable_soup>, 1, true);

mods.inspirations.Cauldron.addFluidRecipe(<betternether:stalagnate_bowl_wart>,<betternether:stalagnate_bowl>,  <liquid:nether_wart_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<betternether:stalagnate_bowl_mushroom>,<betternether:stalagnate_bowl>,  <liquid:mushroom_stew>, 1, true);


mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_beetroot_soup>, <liquid:beetroot_soup>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_carrot_soup>, <liquid:carrot_soup>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_spider_eye_stew>, <liquid:spider_eye_stew>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_nether_wart_stew>, <liquid:nether_wart_stew>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_blaze_cream_soup>, <liquid:blaze_cream_soup>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_potato_soup>, <liquid:potato_soup>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_mushroom_stew>, <liquid:mushroom_stew>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_rabbit_stew>, <liquid:rabbit_stew>, 4, <tfc:ceramics/fired/pot>);
mods.inspirations.Cauldron.addFillRecipe(<contenttweaker:me_vegetable_soup>, <liquid:vegetable_soup>, 4, <tfc:ceramics/fired/pot>);

val hotwater_pot = <tfctech:ceramics/fluid_bowl>.withTag({Fluid: {FluidName: "hot_water", Amount: 1000}});
val empty_pot = <tfctech:ceramics/fluid_bowl>;


recipes.addShapeless(<contenttweaker:me_beetroot_soup>,[hotwater_pot,<ore:knife>.transformDamage(5),<tfc:food/onion>,<tfc:food/potato>,<ore:dustSalt>,<tfc:food/garlic>,<tfc:food/beet>,<tfc:food/beet>]);
recipes.addShapeless(<contenttweaker:me_carrot_soup>,[hotwater_pot,<ore:knife>.transformDamage(4),<tfc:food/carrot>,<tfc:food/carrot>,<tfc:food/onion>,<ore:dustSalt>,<tfc:food/garlic>]);
recipes.addShapeless(<contenttweaker:me_spider_eye_stew>,[hotwater_pot,<ore:knife>.transformDamage(3),<minecraft:web>,<minecraft:spider_eye>,<ore:dustSalt>,<tfc:food/garlic>,<ore:flour>]);
recipes.addShapeless(<contenttweaker:me_nether_wart_stew>,[hotwater_pot,<ore:knife>.transformDamage(4),<ore:dustSalt>,<tfc:food/garlic>,<ore:flour>,<minecraft:nether_wart>,<minecraft:nether_wart>,<minecraft:nether_wart>]);
recipes.addShapeless(<contenttweaker:me_mushroom_stew>,[hotwater_pot,<ore:knife>.transformDamage(5),<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wine", Amount: 1000}}).transformReplace(<minecraft:glass_bottle>),<ore:mushroomAny>,<ore:mushroomAny>,<ore:mushroomAny>,<tfc:food/potato>,<tfc:food/onion>,<ore:dustSalt>]);
recipes.addShapeless(<contenttweaker:me_rabbit_stew>,[hotwater_pot,<ore:knife>.transformDamage(4),<tfc:food/onion>,<ore:dustSalt>,<ore:flour>,<tfc:food/carrot>,<tfc:food/rabbit>,<tfc:food/cabbage>]);
recipes.addShapeless(<contenttweaker:me_vegetable_soup>,[hotwater_pot,<ore:knife>.transformDamage(4),<ore:categoryVegetable>,<ore:categoryVegetable>,<ore:categoryVegetable>,<ore:dustSalt>,<tfc:food/garlic>,<ore:flour>]);

recipes.addShapeless(<contenttweaker:me_potato_soup>,[hotwater_pot,<ore:knife>.transformDamage(4),<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<tfc:food/carrot>,<tfc:food/onion>,<tfc:food/potato>,<tfc:food/cheese>]);
recipes.addShapeless(<contenttweaker:me_potato_soup>,[hotwater_pot,<ore:knife>.transformDamage(4),<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<tfc:food/carrot>,<tfc:food/onion>,<tfc:food/potato>,<tfc:food/cheese>]);

recipes.addShapeless(<contenttweaker:me_blaze_cream_soup>,[empty_pot,<ore:knife>.transformDamage(2),<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<ore:dustSalt>,<tfc:food/garlic>,<tfc:food/onion>,<ore:flour>,<minecraft:blaze_powder>,<minecraft:blaze_powder>]);
recipes.addShapeless(<contenttweaker:me_blaze_cream_soup>,[empty_pot,<ore:knife>.transformDamage(2),<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<ore:dustSalt>,<tfc:food/garlic>,<tfc:food/onion>,<ore:flour>,<minecraft:blaze_powder>,<minecraft:blaze_powder>]);
#============================================================================================================================================		
val rawmeats = [<minecraft:fish:1>,<foodexpansion:itemparrotmeat>,<foodexpansion:itemllamameat>,<foodexpansion:itempolarbearmeat>,<tfc:food/beef>,
<tfc:food/pork>,<tfc:food/chicken>,<tfc:food/mutton>,<tfc:food/fish>,<foodexpansion:itemcompressedflesh>,<foodexpansion:itembacon>,
<foodexpansion:itembatwing>,<quark:frog_leg>,<quark:crab_leg>,<tfc:food/bear>,<tfc:food/calamari>,<tfc:food/horse_meat>,
<tfc:food/pheasant>,<tfc:food/venison>,<tfc:food/wolf>,<tfc:food/rabbit>,<minecraft:fish:2>] as IItemStack[];
val groundqty = [1,1,1,2,2,2,2,2,2,3,1,1,1,1,2,2,2,2,2,2,2,1] as int[];

for i, RM in rawmeats{
mods.terrafirmacraft.Quern.addRecipe("ground_meat"~i, RM, <contenttweaker:ground_meat>*groundqty[i]);
}
#=============================================================================================================================================		
registerItemHeat(<tfc:food/potato>,1,480,false); 
#=============================================================================================================================================		

#Heating.addRecipe(String registryName, IItemStack input, IItemStack output, float transformTemp, float maxTemp);

furnace.remove(<minecraft:cooked_fish:1>);
Heating.addRecipe("cooked_salmon", <minecraft:fish:1>, <minecraft:cooked_fish:1>, 400, 480);

furnace.remove(<minecraft:baked_potato>);
Heating.addRecipe("baked_potato", <tfc:food/potato>, <minecraft:baked_potato>, 400, 480);

furnace.remove(<foodexpansion:itemroastedseed>);
Heating.addRecipe("cooked_seed", <contenttweaker:raw_seeds>, <foodexpansion:itemroastedseed>, 400, 480);

furnace.remove(<foodexpansion:itemcookedbacon>);
Heating.addRecipe("cooked_bacon",<foodexpansion:itembacon>, <foodexpansion:itemcookedbacon>, 400, 480);

furnace.remove(<foodexpansion:itemcookedocelotmeat>);
Heating.addRecipe("cooked_ocelot",<foodexpansion:itemocelotmeat>, <foodexpansion:itemcookedocelotmeat>, 400, 480);

furnace.remove(<foodexpansion:itemcookedparrotmeat>);
Heating.addRecipe("cooked_parrot",<foodexpansion:itemparrotmeat>, <foodexpansion:itemcookedparrotmeat>, 400, 480);

furnace.remove(<foodexpansion:itemcookedllamameat>);
Heating.addRecipe("cooked_llama",<foodexpansion:itemllamameat>, <foodexpansion:itemcookedllamameat>, 400, 480);

furnace.remove(<foodexpansion:itemcookedpolarbearmeat>);
Heating.addRecipe("cooked_polar_bear",<foodexpansion:itempolarbearmeat>, <foodexpansion:itemcookedpolarbearmeat>, 400, 480);

furnace.remove(<quark:cooked_frog_leg>);
Heating.addRecipe("cooked_frog",<quark:frog_leg>, <quark:cooked_frog_leg>, 400, 480);

furnace.remove(<quark:cooked_crab_leg>);
Heating.addRecipe("cooked_crab",<quark:crab_leg>, <quark:cooked_crab_leg>, 400, 480);

registerItemHeat(<contenttweaker:uncooked_pizza>,1,480,false);
registerItemHeat(<contenttweaker:uncooked_beet_noodles>,1,480,false);
registerItemHeat(<contenttweaker:uncooked_pumpkin_pie>,1,480,false);
registerItemHeat(<contenttweaker:uncooked_carrot_cake>,1,480,false);

registerItemHeat(<nuclearcraft:dominos>,1,480,false);
registerItemHeat(<foodexpansion:itembeetrootnoodles>,1,480,false);
registerItemHeat(<minecraft:pumpkin_pie>,1,480,false);
registerItemHeat(<foodexpansion:itemcarrotpie>,1,480,false);

recipes.remove(<nuclearcraft:dominos>);
recipes.remove(<foodexpansion:itembeetrootnoodles>);
recipes.remove(<foodexpansion:itemcarrotpie>);

Heating.addRecipe("cooked_pizza",<contenttweaker:uncooked_pizza>,<nuclearcraft:dominos>, 400, 480);
Heating.addRecipe("cooked_beetroot_noodles",<contenttweaker:uncooked_beet_noodles>,<foodexpansion:itembeetrootnoodles>, 400, 480);
Heating.addRecipe("cooked_pumpkin_pie",<contenttweaker:uncooked_pumpkin_pie>,<minecraft:pumpkin_pie>, 400, 480);
Heating.addRecipe("cooked_carrot_cake",<contenttweaker:uncooked_carrot_cake>,<foodexpansion:itemcarrotpie>, 400, 480);


registerItemHeat(<minecraft:red_mushroom>,1,480,false);
registerItemHeat(<minecraft:brown_mushroom>,1,480,false);
registerItemHeat(<quark:glowshroom>,1,480,false);
registerItemHeat(<rustic:mooncap_mushroom>,1,480,false);
registerItemHeat(<tfc:plants/porcini>,1,480,false);


furnace.remove(<foodexpansion:itemcookedmushroom>);

Heating.addRecipe("cooked_mushroom1", <minecraft:red_mushroom>, <foodexpansion:itemcookedmushroom>, 400, 480);
Heating.addRecipe("cooked_mushroom2", <minecraft:brown_mushroom>, <foodexpansion:itemcookedmushroom>, 400, 480);
Heating.addRecipe("cooked_mushroom3", <quark:glowshroom>, <foodexpansion:itemcookedmushroom>, 400, 480);
Heating.addRecipe("cooked_mushroom4", <rustic:mooncap_mushroom>, <foodexpansion:itemcookedmushroom>, 400, 480);
Heating.addRecipe("cooked_mushroom5", <tfc:plants/porcini>, <foodexpansion:itemcookedmushroom>, 400, 480);
Heating.addRecipe("cooked_mushroom6", <netherex:enoki_mushroom>, <foodexpansion:itemcookedmushroom>, 400, 480);

furnace.remove(<cfm:item_flesh_cooked>);
Heating.addRecipe("cooked_flesh", <cfm:item_flesh>, <cfm:item_flesh_cooked>, 400, 480);

furnace.remove(<netherex:ghast_meat_cooked>);
Heating.addRecipe("cooked_ghast", <netherex:ghast_meat_raw>, <netherex:ghast_meat_cooked>, 400, 480);

Heating.addRecipe("cookie", <contenttweaker:cookie_dough>, <minecraft:cookie>, 400, 480);
mods.terrafirmacraft.Quern.addRecipe("ground_cocoa_nibs", <nuclearcraft:roasted_cocoa_beans>, <nuclearcraft:ground_cocoa_nibs>*2);

registerItemHeat(<minecraft:dye:3>,1,480,false);
registerItemHeat(<nuclearcraft:roasted_cocoa_beans>,1,480,false);
furnace.remove(<nuclearcraft:roasted_cocoa_beans>);
Heating.addRecipe("roasted_cocoa_beans", <minecraft:dye:3>, <nuclearcraft:roasted_cocoa_beans>, 400, 480);
