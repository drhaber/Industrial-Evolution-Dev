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

/*
//Jerky
mods.jei.JEI.removeAndHide(<foodexpansion:itemdough>);
<foodexpansion:itemcompressedflesh>.displayName = "Salted Flesh";
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

#=============================================================================================================================================		
//Food Recipes
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

recipes.remove(<foodexpansion:itemcompressedflesh>);
recipes.addShapeless(<foodexpansion:itemcompressedflesh>,[<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<ore:dustSalt>]);

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

registerFood(<minecraft:mushroom_stew>,2,2,1.2,6,1,0.2,0,1,0.8);	<ore:categoryMeal>.add(<minecraft:mushroom_stew>);      	          #mushroom stew
registerFood(<minecraft:fish:1>,1,1,0.2,3,0,0,0,2,0.2);	<ore:categoryMeat>.add(<minecraft:fish:1>);      	registerItemHeat(<minecraft:fish:1>,1,480,false);          #raw salmon
registerFood(<minecraft:fish:2>,1,1,0.2,3,0,0,0,2,0.2);	<ore:categoryMeat>.add(<minecraft:fish:2>);      	registerItemHeat(<minecraft:fish:2>,1,480,false);          #clownfish
registerFood(<minecraft:fish:3>,1,1,0.2,3,0,2,0,1,0.1);	<ore:category>.add(<minecraft:fish:3>);      	          #pufferfish
registerFood(<minecraft:cooked_fish:1>,1,2,0.6,2.25,0,0,0,2,0);	<ore:categoryCookedMeat>.add(<minecraft:cooked_fish:1>);      	registerItemHeat(<minecraft:cooked_fish:1>,1,480,false);          #cooked salmon
registerFood(<minecraft:cookie>,1,0,0.2,0.8,1.5,0,0,0,1);	<ore:categoryMeal>.add(<minecraft:cookie>);      	          #cookie
registerFood(<minecraft:melon>,1,1,0.4,4,0,0,1,0,0);	<ore:categoryFruit>.add(<minecraft:melon>);      	          #melon
registerFood(<minecraft:spider_eye>,1,1,0.1,3,0,0.2,0,0,0);	<ore:category>.add(<minecraft:spider_eye>);      	          #spider eye
registerFood(<minecraft:baked_potato>,1,1.5,0.9,5,1,0,1,0.5,0);	<ore:categoryMeal>.add(<minecraft:baked_potato>);      	registerItemHeat(<minecraft:baked_potato>,1,480,false);          #baked potato
registerFood(<minecraft:poisonous_potato>,1,3,0,2,1,2,0,0,0);	<ore:category>.add(<minecraft:poisonous_potato>);      	          #poisonous potato
registerFood(<minecraft:pumpkin_pie>,3,1,1.8,4,3.6,0,0,1.7,3);	<ore:categoryMeal>.add(<minecraft:pumpkin_pie>);      	          #pumpkin pie
registerFood(<minecraft:rabbit_stew>,3,5,1.8,5,0.2,2,2,1.5,0.5);	<ore:categoryMeal>.add(<minecraft:rabbit_stew>);      	          #rabbit stew
registerFood(<minecraft:chorus_fruit>,1,0.1,0.1,1.3,0,0.2,0.1,0,0);	<ore:categoryFruit>.add(<minecraft:chorus_fruit>);      	          #chorus fruit
registerFood(<minecraft:beetroot_soup>,4,3,2,5,2,0,4,1.5,0);	<ore:categoryMeal>.add(<minecraft:beetroot_soup>);      	          #beetroot soup
		
registerFood(<foodexpansion:itemjelly>,1,1,0.2,1,0,0.1,0.1,0.1,0.2);	<ore:category>.add(<foodexpansion:itemjelly>);      	          #green jelly
registerFood(<foodexpansion:itembacon>,1,0.5,0.1,3,0,0,0,1.2,1);	<ore:categoryMeat>.add(<foodexpansion:itembacon>);      	registerItemHeat(<foodexpansion:itembacon>,1,480,false);          #bacon
registerFood(<foodexpansion:itemcookedbacon>,1,0.1,0.4,1.5,0,0,0,1,1);	<ore:categoryCookedMeat>.add(<foodexpansion:itemcookedbacon>);      	registerItemHeat(<foodexpansion:itemcookedbacon>,1,480,false);          #crispy bacon
registerFood(<foodexpansion:itembaconandegg>,2,0.1,1,1.5,2,1,0,2.5,3);	<ore:categoryMeal>.add(<foodexpansion:itembaconandegg>);      	          #bacon and egg
registerFood(<foodexpansion:itemcarrotseedsoup>,3,3,1.8,6,1,1,3,1,0);	<ore:categoryMeal>.add(<foodexpansion:itemcarrotseedsoup>);      	          #carrot soup
registerFood(<foodexpansion:itemcompressedflesh>,1,0,0.4,0.4,0,0.1,0,2.1,0.3);	<ore:categoryMeat>.add(<foodexpansion:itemcompressedflesh>);      	          #salted flesh
registerFood(<foodexpansion:itemchocolatebar>,1,0,0.7,0.1,0.3,0,0,0.1,0.4);	<ore:categoryMeal>.add(<foodexpansion:itemchocolatebar>);      	          #chocolate bar
registerFood(<foodexpansion:itemspidersoup>,3,3,1.7,3,1,0.3,2,0,0.2);	<ore:categoryMeal>.add(<foodexpansion:itemspidersoup>);      	          #spider eye stew
registerFood(<foodexpansion:itemnetherwartsoup>,3,2,1.8,3,1,0.2,2,0,0.3);	<ore:categoryMeal>.add(<foodexpansion:itemnetherwartsoup>);      	          #nether wart stew
registerFood(<foodexpansion:itemcactusfruit>,1,3,0.2,1.3,0,0.1,0.1,0,0);	<ore:categoryFruit>.add(<foodexpansion:itemcactusfruit>);      	          #cactus fruit
registerFood(<foodexpansion:itemcookedmushroom>,1,0.1,0.4,2.3,0,0.2,0.1,0.3,0);	<ore:categoryMeal>.add(<foodexpansion:itemcookedmushroom>);      	registerItemHeat(<foodexpansion:itemcookedmushroom>,1,480,false);          #cooked mushroom
registerFood(<foodexpansion:itemcarrotpie>,2,0.2,1.4,4,0.3,0,0.2,0.1,0.5);	<ore:categoryMeal>.add(<foodexpansion:itemcarrotpie>);      	          #carrot cake
registerFood(<foodexpansion:itembatwing>,1,0.5,0.2,3,0,0,0,1,0.2);	<ore:categoryMeat>.add(<foodexpansion:itembatwing>);      	registerItemHeat(<foodexpansion:itembatwing>,1,480,false);          #bat wing
registerFood(<foodexpansion:itemcookedbatwing>,1,1,0.6,2,0,0,0,1.5,0.2);	<ore:categoryCookedMeat>.add(<foodexpansion:itemcookedbatwing>);      	registerItemHeat(<foodexpansion:itemcookedbatwing>,1,180,false);          #cooked bat wing
registerFood(<foodexpansion:itemblazecream>,3,0.2,1.6,2,0.2,1,0,0.4,0.3);	<ore:categoryMeal>.add(<foodexpansion:itemblazecream>);      	          #blaze cream soup
registerFood(<foodexpansion:itemmelonsalad>,2,1.4,1.2,5,0,0,2,0,0);	<ore:categoryMeal>.add(<foodexpansion:itemmelonsalad>);      	          #melon salad
registerFood(<foodexpansion:itemroastedseed>,1,0,0.3,1,0.1,0,0.1,0.1,0.1);	<ore:categoryVegetable>.add(<foodexpansion:itemroastedseed>);      	registerItemHeat(<foodexpansion:itemroastedseed>,1,480,false);          #roasted seed
registerFood(<foodexpansion:itemocelotmeat>,1,1,0.2,3,0,0,0,1.2,0.2);	<ore:categoryMeat>.add(<foodexpansion:itemocelotmeat>);      	registerItemHeat(<foodexpansion:itemocelotmeat>,1,480,false);          #ocelot meat
registerFood(<foodexpansion:itemcookedocelotmeat>,1,1,0.6,2.25,0,0,0,1.7,0.2);	<ore:categoryCookedMeat>.add(<foodexpansion:itemcookedocelotmeat>);      	registerItemHeat(<foodexpansion:itemcookedocelotmeat>,1,480,false);          #cooked ocelot meat
registerFood(<foodexpansion:itemlollipop>,1,0,0.4,0.1,0.1,0,0,0,0.1);	<ore:categoryMeal>.add(<foodexpansion:itemlollipop>);      	          #lollipop
registerFood(<foodexpansion:itembeetrootnoodles>,3,1,1.6,4,2,0.1,3,1,0);	<ore:categoryMeal>.add(<foodexpansion:itembeetrootnoodles>);      	registerItemHeat(<foodexpansion:itembeetrootnoodles>,1,480,false);          #beetroot noodles
registerFood(<foodexpansion:itemparrotmeat>,1,1,0.2,3,0,0,0,2.5,2);	<ore:categoryMeat>.add(<foodexpansion:itemparrotmeat>);      	registerItemHeat(<foodexpansion:itemparrotmeat>,1,480,false);          #raw parrot
registerFood(<foodexpansion:itemcookedparrotmeat>,1,2,0.8,2.25,0,0,0,2.5,2);	<ore:categoryCookedMeat>.add(<foodexpansion:itemcookedparrotmeat>);      	registerItemHeat(<foodexpansion:itemcookedparrotmeat>,1,480,false);          #cooked parrot
registerFood(<foodexpansion:itemllamameat>,1,1,0.2,2,0,0,0,2.5,0.5);	<ore:categoryMeat>.add(<foodexpansion:itemllamameat>);      	registerItemHeat(<foodexpansion:itemllamameat>,1,480,false);          #raw llama
registerFood(<foodexpansion:itemcookedllamameat>,1,2,0.8,1.5,0,0,0,2.5,0.5);	<ore:categoryCookedMeat>.add(<foodexpansion:itemcookedllamameat>);      	registerItemHeat(<foodexpansion:itemcookedllamameat>,1,480,false);          #llama steak
registerFood(<foodexpansion:itempolarbearmeat>,1,1,0.2,2,0,0,0.5,2.5,2.5);	<ore:categoryMeat>.add(<foodexpansion:itempolarbearmeat>);      	registerItemHeat(<foodexpansion:itempolarbearmeat>,1,480,false);          #raw polar bear
registerFood(<foodexpansion:itemcookedpolarbearmeat>,1,2,0.8,1.5,0,0,0.5,2.5,2.3);	<ore:categoryCookedMeat>.add(<foodexpansion:itemcookedpolarbearmeat>);      	registerItemHeat(<foodexpansion:itemcookedpolarbearmeat>,1,480,false);          #polar bear steak
		
registerFood(<inspirations:edibles>,1,3,0.6,2,0,0.3,1,0,0);	<ore:categoryVegetable>.add(<inspirations:edibles>);      	          #heartbeet
registerFood(<inspirations:potato_soup>,4,2,2.3,6,1.5,2,3,2.7,3.5);	<ore:categoryMeal>.add(<inspirations:potato_soup>);      	          #potato soup
		
registerFood(<quark:root>,1,0.6,0.2,0.7,0.1,0.8,0,0,0);	<ore:categoryVegetable>.add(<quark:root>);      	          #cave root
registerFood(<quark:root_flower>,1,0.7,0.3,1.2,0.1,0.9,0,0,0);	<ore:categoryFruit>.add(<quark:root_flower>);      	          #blue sprout
registerFood(<quark:root_flower:1>,1,0.7,0.3,1.2,0.1,0.9,0,0,0);	<ore:categoryFruit>.add(<quark:root_flower:1>);      	          #black sprout
registerFood(<quark:root_flower:2>,1,0.7,0.3,1.2,0.1,0.9,0,0,0);	<ore:categoryFruit>.add(<quark:root_flower:2>);      	          #white sprout
registerFood(<quark:frog_leg>,1,1,0.2,3,0,0,0,1,0);	<ore:categoryMeat>.add(<quark:frog_leg>);      	registerItemHeat(<quark:frog_leg>,1,480,false);          #frog leg
registerFood(<quark:cooked_frog_leg>,1,1,0.4,2.25,0,0,0,1,0);	<ore:categoryCookedMeat>.add(<quark:cooked_frog_leg>);      	registerItemHeat(<quark:cooked_frog_leg>,1,480,false);          #cooked frog leg
registerFood(<quark:golden_frog_leg>,1,0,0.2,2.25,0,1,0,1,0);	<ore:categoryMeal>.add(<quark:golden_frog_leg>);      	          #golden frog leg
registerFood(<quark:crab_leg>,1,1,0.2,3,0,0,0,1.2,0);	<ore:categoryMeat>.add(<quark:crab_leg>);      	registerItemHeat(<quark:crab_leg>,1,480,false);          #crab leg
registerFood(<quark:cooked_crab_leg>,1,1,0.4,2.25,0,0,0,1.4,0);	<ore:categoryCookedMeat>.add(<quark:cooked_crab_leg>);      	registerItemHeat(<quark:cooked_crab_leg>,1,480,false);          #cooked crab leg
		
registerFood(<emergingtechnology:algaebarcooked>,1,1,0.6,0.4,0,0.2,0.4,0.1,0);	<ore:categoryMeal>.add(<emergingtechnology:algaebarcooked>);      	registerItemHeat(<emergingtechnology:algaebarcooked>,1,480,false);          #Cooked Algae Bar
		
registerFood(<forestry:fruits:1>,1,0,0.1,0.1,0,0,0.2,0.1,0.4);	<ore:categoryFruit>.add(<forestry:fruits:1>);      	          #walnut
registerFood(<forestry:fruits:2>,1,0,0.1,0.1,0,0,0.2,0.1,0.3);	<ore:categoryFruit>.add(<forestry:fruits:2>);      	          #chestnut
registerFood(<forestry:fruits:5>,1,3.2,0.4,4,0,0,0.4,0,0);	<ore:categoryFruit>.add(<forestry:fruits:5>);      	          #date
registerFood(<forestry:fruits:6>,1,3,0.4,4,0,0,0.3,0,0);	<ore:categoryFruit>.add(<forestry:fruits:6>);      	          #papaya
registerFood(<forestry:honeyed_slice>,2,0,1,0.6,2,0,0.2,0.5,0.5);	<ore:categoryMeal>.add(<forestry:honeyed_slice>);      	          #honeyed slice
registerFood(<forestry:ambrosia>,2,0.2,1,0,0,0.1,0,0.1,0);	<ore:categoryMeal>.add(<forestry:ambrosia>);      	          #Ambrosia
registerFood(<forestry:honey_pot>,2,0.2,1,0,0,0.1,0,0.1,0);	<ore:categoryFruit>.add(<forestry:honey_pot>);      	          #Honey pot
		
registerFood(<nuclearcraft:graham_cracker>,1,0,0.3,0.8,0.2,0,0,0,0.1);	<ore:categoryGrain>.add(<nuclearcraft:graham_cracker>);      	          #Graham Cracker
registerFood(<nuclearcraft:dominos>,6,0.3,3,2,2,2,1,2.5,0.5);	<ore:categoryMeal>.add(<nuclearcraft:dominos>);      	registerItemHeat(<nuclearcraft:dominos>,1,480,false);          #Domino's Special
registerFood(<nuclearcraft:ground_cocoa_nibs>,1,0,0.1,0.1,0.1,0,0,0.1,0.2);	<ore:category>.add(<nuclearcraft:ground_cocoa_nibs>);      	          #Ground Cocoa Nibs
registerFood(<nuclearcraft:cocoa_butter>,1,0,0.3,0.1,0.3,0,0,0.1,0.5);	<ore:category>.add(<nuclearcraft:cocoa_butter>);      	          #Solidified Cocoa Butter
registerFood(<nuclearcraft:unsweetened_chocolate>,1,0,0.4,0.1,0.2,0,0,0.1,0.3);	<ore:categoryDairy>.add(<nuclearcraft:unsweetened_chocolate>);      	          #Unsweetened Chocolate
registerFood(<nuclearcraft:dark_chocolate>,1,0,0.3,0.1,0.2,0,0,0.1,0.3);	<ore:categoryDairy>.add(<nuclearcraft:dark_chocolate>);      	          #Dark Chocolate
registerFood(<nuclearcraft:milk_chocolate>,1,0,0.4,0.1,0.3,0,0,0.1,0.5);	<ore:categoryDairy>.add(<nuclearcraft:milk_chocolate>);      	          #Milk Chocolate
registerFood(<nuclearcraft:marshmallow>,1,0.2,0.7,0.3,0,0,0,0.2,0.4);	<ore:categoryDairy>.add(<nuclearcraft:marshmallow>);      	          #Marshmallow
registerFood(<nuclearcraft:smore>,2,0.2,1.3,2,0.5,0.1,0,0.2,0.8);	<ore:categoryMeal>.add(<nuclearcraft:smore>);      	          #S'more S'mingot
registerFood(<nuclearcraft:moresmore>,4,0.4,2.3,2,1,0.2,0,0.4,1.6);	<ore:categoryMeal>.add(<nuclearcraft:moresmore>);      	          #MoreS'more Double
		
registerFood(<rustic:cloudsbluff>,1,0.1,0.1,1.3,0,0.2,0.1,0,0);	<ore:categoryFruit>.add(<rustic:cloudsbluff>);      	          #Clouds Bluff
registerFood(<rustic:core_root>,1,0.6,0.2,0.7,0.1,0.8,0,0,0);	<ore:categoryVegetable>.add(<rustic:core_root>);      	          #Core Root
registerFood(<rustic:ginseng>,1,0.6,0.2,0.7,0.1,0.8,0,0,0);	<ore:categoryVegetable>.add(<rustic:ginseng>);      	          #Ginseng Root
registerFood(<rustic:marsh_mallow>,1,0.6,0.2,0.7,0.1,0.8,0,0,0);	<ore:categoryFruit>.add(<rustic:marsh_mallow>);      	          #Marsh Mallow Root
registerFood(<rustic:ironberries>,1,2,0.3,0.7,0,0.3,0,0,0);	<ore:categoryFruit>.add(<rustic:ironberries>);      	          #Iron Berries
registerFood(<rustic:chili_pepper>,1,3,0.4,2.5,0,0,1,0,0);	<ore:categoryVegetable>.add(<rustic:chili_pepper>);      	          #Chili Pepper
registerFood(<rustic:grapes>,1,5,0.4,4.25,0,0,0.5,0,0);	<ore:categoryFruit>.add(<rustic:grapes>);      	          #Grapes
registerFood(<rustic:wildberries>,1,5,0.4,4.25,0,0,0.5,0,0);	<ore:categoryFruit>.add(<rustic:wildberries>);      	          #WildBerry
/*		
registerFood(<tconstruct:edible:1>,1,2,0.2,0,0,0,0,0.2,0.3);	<ore:category>.add(<tconstruct:edible:1>);      	          #Slimeball cyan
registerFood(<tconstruct:edible:2>,1,2,0.2,0,0,0,0,0.2,0.3);	<ore:category>.add(<tconstruct:edible:2>);      	          #Slimeball purple
registerFood(<tconstruct:edible:3>,1,2,0.2,0,0,1,0,0.2,0.3);	<ore:category>.add(<tconstruct:edible:3>);      	          #Coagulated Blood
registerFood(<tconstruct:edible:4>,1,2,0.2,0,0,0,0,0.2,0.3);	<ore:category>.add(<tconstruct:edible:4>);      	          #Slimeball orange
registerFood(<tconstruct:edible:10>,1,0,0.6,0.1,0,0,0,1,0);	<ore:categoryCookedMeat>.add(<tconstruct:edible:10>);      	          #Monster Jerky
registerFood(<tconstruct:edible:11>,1,0,0.8,0.1,0,0,0,2,0.5);	<ore:categoryCookedMeat>.add(<tconstruct:edible:11>);      	          #Beef Jerky
registerFood(<tconstruct:edible:12>,1,0,0.6,0.1,0,0,0,2,0);	<ore:categoryCookedMeat>.add(<tconstruct:edible:12>);      	          #Chicken Jerky
registerFood(<tconstruct:edible:13>,1,0,0.4,0.1,0,0,0,2,0.5);	<ore:categoryCookedMeat>.add(<tconstruct:edible:13>);      	          #Bacon Jerky
registerFood(<tconstruct:edible:14>,1,0,0.8,0.1,0,0,0,2,0.5);	<ore:categoryCookedMeat>.add(<tconstruct:edible:14>);      	          #Mutton Jerky
registerFood(<tconstruct:edible:15>,1,0,0.6,0.1,0,0,0,1,0);	<ore:categoryCookedMeat>.add(<tconstruct:edible:15>);      	          #Rabbit jerky
registerFood(<tconstruct:edible:20>,1,0,0.6,0.1,0,0,0,1.5,0);	<ore:categoryCookedMeat>.add(<tconstruct:edible:20>);      	          #Fish Jerky
registerFood(<tconstruct:edible:21>,1,0,0.6,0.1,0,0,0,1.5,0);	<ore:categoryCookedMeat>.add(<tconstruct:edible:21>);      	          #Salmon Jerky
registerFood(<tconstruct:edible:22>,1,0,0.6,0.1,0,0,0,1.5,0);	<ore:categoryCookedMeat>.add(<tconstruct:edible:22>);      	          #Clownfish Jerky
registerFood(<tconstruct:edible:23>,1,0,0.6,0.1,0,0,0,1,0);	<ore:categoryCookedMeat>.add(<tconstruct:edible:23>);      	          #Fugu Jerky
registerFood(<tconstruct:edible:30>,1,0.2,0.2,0,0,0,0,0.2,0.3);	<ore:categoryMeal>.add(<tconstruct:edible:30>);      	          #Green Slime Drop
registerFood(<tconstruct:edible:31>,1,0.2,0.2,0,0,0,0,0.2,0.3);	<ore:categoryMeal>.add(<tconstruct:edible:31>);      	          #Cyan Slime drop
registerFood(<tconstruct:edible:32>,1,0.2,0.2,0,0,0,0,0.2,0.3);	<ore:categoryMeal>.add(<tconstruct:edible:32>);      	          #Purple Slime drop
registerFood(<tconstruct:edible:33>,1,0.2,0.2,0,0,1,0,0.2,0.3);	<ore:categoryMeal>.add(<tconstruct:edible:33>);      	          #Coagulated Blood Drop
registerFood(<tconstruct:edible:34>,1,0.2,0.2,0,0,0,0,0.2,0.3);	<ore:categoryMeal>.add(<tconstruct:edible:34>);      	          #Orange Slime Drop
*/		
registerFood(<contenttweaker:dried_fruit>,1,0,0.4,0.1,0.5,0.5,0.5,0,0);	<ore:categoryFruit>.add(<contenttweaker:dried_fruit>);      	          #Dried Fruit
registerFood(<contenttweaker:i_vegetable_soup>,3,2,1.8,6,2,0,1,1,0);	<ore:categoryMeal>.add(<contenttweaker:i_vegetable_soup>);      	          #Vegetable Soup
registerFood(<contenttweaker:smoothie>,1,4,0.4,6,0,0.5,0.5,0,0);	<ore:categoryMeal>.add(<contenttweaker:smoothie>);      	          #Smoothie
registerFood(<contenttweaker:pemmican>,4,1,2.3,0,0.2,0.5,0.5,1.5,1);	<ore:categoryMeal>.add(<contenttweaker:pemmican>);      	          #Pemmican
registerFood(<contenttweaker:snow_cream>,3,1,1.7,6,1,0,0,0.2,2.3);	<ore:categoryMeal>.add(<contenttweaker:snow_cream>);      	          #Snow Cream
registerFood(<contenttweaker:dried_ground_meat>,1,0,0.6,0.1,0,0,0,1,0.3);	<ore:categoryCookedMeat>.add(<contenttweaker:dried_ground_meat>);      	          #Dried Ground Meat
registerFood(<contenttweaker:ground_meat>,1,0.2,0.6,2,0,0,0,1,0.3);	<ore:categoryMeat>.add(<contenttweaker:ground_meat>);      	          #Ground Meat
registerFood(<contenttweaker:cookie_dough>,1,0.1,0.1,9,1.5,0,0,0,1);	<ore:categoryGrain>.add(<contenttweaker:cookie_dough>);      	registerItemHeat(<contenttweaker:cookie_dough>,1,480,false);          #Cookie Dough
registerFood(<contenttweaker:raw_seeds>,1,0.2,0.2,0.1,0.1,0.1,0,0,0);	<ore:categoryVegetable>.add(<contenttweaker:raw_seeds>);      	registerItemHeat(<contenttweaker:raw_seeds>,1,480,false);          #Raw Seeds
registerFood(<contenttweaker:water_glass>,1,4,0,0,0,0,0,0,0);	<ore:category>.add(<contenttweaker:water_glass>);      	          #Water Glass
		
registerFood(<extrabotany:friedchicken>,2,1,1,0.1,0,0.5,0,2,1.5);	<ore:categoryMeal>.add(<extrabotany:friedchicken>);      	          #Fried Chicken Leg
registerFood(<extrabotany:gildedmashedpotato>,1,2,0.6,0,1,0,1,0.5,0);	<ore:categoryMeal>.add(<extrabotany:gildedmashedpotato>);      	          #Gilded Mashed Potatos
registerFood(<extrabotany:manadrink>,1,3,0.4,0,0,0.6,0,0,0);	<ore:categoryMeal>.add(<extrabotany:manadrink>);      	          #Mana Cocktail
registerFood(<extrabotany:candy>,1,0,0.3,0,0.2,0,0,0,0.3);	<ore:categoryMeal>.add(<extrabotany:candy>);      	          #Candy Eins
registerFood(<extrabotany:candy:1>,1,0,0.3,0,0.2,0,0,0,0.3);	<ore:categoryMeal>.add(<extrabotany:candy:1>);      	          #Candy Zwei
registerFood(<extrabotany:candy:2>,1,0,0.3,0,0.2,0,0,0,0.3);	<ore:categoryMeal>.add(<extrabotany:candy:2>);      	          #Candy Drei
		
#registerFood(<tconstruct:moms_spaghetti>,1,0.3,0.3,3,0.7,0,0,0,0.1);	<ore:categoryMeal>.add(<tconstruct:moms_spaghetti>);      	          #Mom's Spaghetti
		
registerFood(<cfm:item_flesh>,1,0,0.6,5.5,0,0,0,1.5,0);	<ore:categoryMeat>.add(<cfm:item_flesh>);      	registerItemHeat(<cfm:item_flesh>,1,480,false);          #Flesh
registerFood(<cfm:item_flesh_cooked>,1,0,0.6,5,0,0,0,1.7,0);	<ore:categoryCookedMeat>.add(<cfm:item_flesh_cooked>);      	registerItemHeat(<cfm:item_flesh_cooked>,1,480,false);          #Cooked Flesh
registerFood(<cfm:item_bread_slice>,1,0,0.5,2,1.5,0,0,0.1,0.5);	<ore:categoryGrain>.add(<cfm:item_bread_slice>);      	          #Bread Slice
registerFood(<cfm:item_toast>,1,0,0.5,2.5,1.5,0,0,0.1,0.5);	<ore:categoryGrain>.add(<cfm:item_toast>);      	          #Toast
registerFood(<cfm:item_sausage>,1,0.2,0.1,2,0,0,0,0.2,0.1);	<ore:categoryMeat>.add(<cfm:item_sausage>);      	          #Sausage
registerFood(<cfm:item_sausage_cooked>,1,0.1,0.2,1.5,0,0,0,0.2,0.2);	<ore:categoryCookedMeat>.add(<cfm:item_sausage_cooked>);      	          #Cooked Sausage
registerFood(<cfm:item_kebab>,1,0.5,0.1,3,0,0,0,0.1,0.2);	<ore:categoryMeat>.add(<cfm:item_kebab>);      	          #raw Kebab
registerFood(<cfm:item_kebab_cooked>,1,1,0.3,2.25,0,0,0,0.2,0.2);	<ore:categoryCookedMeat>.add(<cfm:item_kebab_cooked>);      	          #Cooked Kebab
		
registerFood(<betternether:black_apple>,1,2,0.6,3.25,0.5,0,1,0,0);	<ore:categoryFruit>.add(<betternether:black_apple>);      	          #Black Apple
registerFood(<betternether:stalagnate_bowl_wart>,3,2,1.8,3.5,1,0.2,2,0,0.3);	<ore:categoryMeal>.add(<betternether:stalagnate_bowl_wart>);      	          #Nether Wart Soup
registerFood(<betternether:stalagnate_bowl_mushroom>,2,2,1.2,4,1,0.2,0,1,0.8);	<ore:categoryMeal>.add(<betternether:stalagnate_bowl_mushroom>);      	          #Mushroom Stew
registerFood(<betternether:stalagnate_bowl_apple>,1,2,0.8,2,0.5,0,1,0,0);	<ore:categoryMeal>.add(<betternether:stalagnate_bowl_apple>);      	          #Black Apple Bowl
		
registerFood(<netherex:enoki_mushroom>,1,0.1,0.4,2.3,0,0.2,0.1,0.3,0);	<ore:categoryFruit>.add(<netherex:enoki_mushroom>);      	registerItemHeat(<netherex:enoki_mushroom>,1,480,false);          #Enori Mushroom
registerFood(<netherex:congealed_magma_cream>,1,2,0.2,0,0,0,0,0.2,0.3);	<ore:categoryMeal>.add(<netherex:congealed_magma_cream>);      	          #Congeled Magma Cream
registerFood(<netherex:ghast_meat_raw>,1,1,0.2,-1,0,0.3,0.5,2.5,2);	<ore:categoryMeat>.add(<netherex:ghast_meat_raw>);      	registerItemHeat(<netherex:ghast_meat_raw>,1,480,false);          #Raw Ghast Meat
registerFood(<netherex:ghast_meat_cooked>,1,2,0.8,-1,0,0,0.5,2.5,2);	<ore:categoryCookedMeat>.add(<netherex:ghast_meat_cooked>);      	registerItemHeat(<netherex:ghast_meat_cooked>,1,480,false);          #Cooked Ghast Meat          #Cooked Ghast Meat   #Cooked Ghast Meat        #Cooked Ghast Meat

registerFood(<integrateddynamics:menril_berries>,1,5,0.4,4.25,0,0,0.5,0,0);	<ore:categoryFruit>.add(<integrateddynamics:menril_berries>);      	          #Menril Berries
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

mods.integrateddynamics.DryingBasin.addRecipe(<contenttweaker:ground_meat>, null, <contenttweaker:dried_ground_meat>, null, 10);
mods.integrateddynamics.MechanicalDryingBasin.addRecipe(<contenttweaker:ground_meat>, null, <contenttweaker:dried_ground_meat>, null, 10);

