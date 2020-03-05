import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry.registerItemHeat;
import mods.terrafirmacraft.ItemRegistry.registerFood;
import mods.terrafirmacraft.Heating;


mods.emergingtechnology.Biomass.removeAll();

recipes.remove(<foodexpansion:itembaconandegg>);
recipes.addShapeless(<foodexpansion:itembaconandegg>,[<ore:foodCookedegg>,<foodexpansion:itemcookedbacon>]);

furnace.remove(<minecraft:bread>);

//Jerky
mods.jei.JEI.removeAndHide(<foodexpansion:itemdough>);
<foodexpansion:itemcompressedflesh>.displayName = "Salted Flesh";
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible:10>);
mods.tconstruct.Drying.addRecipe(<tconstruct:edible:10>,<foodexpansion:itemcompressedflesh>, 6000);
mods.tconstruct.Drying.addRecipe(<contenttweaker:dried_ground_meat>,<contenttweaker:ground_meat>, 6000);

#=============================================================================================================================================		
//Food Recipes
mods.terrafirmacraft.Barrel.addRecipe("honey_bread1", <ore:breadAny>, <liquid:honey>*10, <forestry:honeyed_slice>,1);
mods.terrafirmacraft.Barrel.addRecipe("honey_bread1", <ore:breadAny>, <liquid:for.honey>*10, <forestry:honeyed_slice>,1);

recipes.addShapeless(<contenttweaker:raw_seeds>,[<ore:seedAny>,<ore:knife>.transformDamage(2)]);

recipes.remove(<minecraft:cookie>);
recipes.addShapeless(<contenttweaker:cookie_dough>,[<ore:dough>,<nuclearcraft:ground_cocoa_nibs>,<minecraft:sugar>]);

recipes.remove(<foodexpansion:itemchocolatebar>);
recipes.addShapeless(<foodexpansion:itemchocolatebar>,[<nuclearcraft:milk_chocolate>,<nuclearcraft:dark_chocolate>]);

recipes.remove(<foodexpansion:itembacon>);
recipes.addShapeless(<foodexpansion:itembacon>*3,[<ore:knife>.transformDamage(2),<tfc:food/pork>]);

recipes.addShapeless(<contenttweaker:uncooked_pumpkin_pie>,[<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<minecraft:pumpkin>,<minecraft:sugar>]);
recipes.addShapeless(<contenttweaker:uncooked_pumpkin_pie>,[<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<minecraft:pumpkin>,<minecraft:sugar>]);

recipes.addShapeless(<contenttweaker:uncooked_pizza>,[<ore:knife>.transformDamage(5),<ore:dough>,<ore:dustSalt>,<ore:categoryMeat>,<tfc:food/tomato>,<tfc:food/cheese>,<ore:mushroomAny>,<tfc:food/garlic>]);

recipes.remove(<foodexpansion:itemcompressedflesh>);
recipes.addShapeless(<foodexpansion:itemcompressedflesh>,[<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<ore:dustSalt>]);

recipes.addShapeless(<contenttweaker:uncooked_beet_noodles>,[<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}),<ore:knife>.transformDamage(5),<ore:dough>,<ore:dustSalt>,<tfc:food/beet>,<tfc:food/beet>]);

recipes.addShapeless(<contenttweaker:snow_cream>,[<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:sugar>,<minecraft:bowl>]);
recipes.addShapeless(<contenttweaker:snow_cream>,[<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<minecraft:snowball>,<minecraft:snowball>,<minecraft:snowball>,<minecraft:sugar>,<minecraft:bowl>]);

recipes.addShapeless(<contenttweaker:pemmican>,[<ore:jerkyAny>,<contenttweaker:dried_fruit>,<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).transformReplace(<minecraft:bowl>),<ore:knife>.transformDamage(5),<ore:grain>]);
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

mods.inspirations.Cauldron.addFluidRecipe(<minecraft:beetroot_soup>,<minecraft:bowl>,  <liquid:beetroot_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemcarrotseedsoup>,<minecraft:bowl>,  <liquid:carrot_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemspidersoup>,<minecraft:bowl>, <liquid:spider_eye_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemnetherwartsoup>,<minecraft:bowl>,  <liquid:nether_wart_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<foodexpansion:itemblazecream>,<minecraft:bowl>,  <liquid:blaze_cream_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<inspirations:potato_soup>,<minecraft:bowl>,  <liquid:potato_soup>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:mushroom_stew>,<minecraft:bowl>,  <liquid:mushroom_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<minecraft:rabbit_stew>,<minecraft:bowl>,  <liquid:rabbit_stew>, 1, true);
mods.inspirations.Cauldron.addFluidRecipe(<contenttweaker:i_vegetable_soup>,<minecraft:bowl>,  <liquid:vegetable_soup>, 1, true);

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

//ItemRegistry.registerFood(IIngredient input, float[] nutrients, float calories, float water, float decay);

registerFood(<minecraft:mushroom_stew>,[1,0.8,1,0,0.2],1.2,2,6);	          #mushroom stew
registerFood(<minecraft:fish:1>,[0,0.2,2,0,0],0.2,1,3);	registerItemHeat(<minecraft:fish:1>,1,480,false);          #raw salmon
registerFood(<minecraft:fish:2>,[0,0.2,2,0,0],0.2,1,3);	registerItemHeat(<minecraft:fish:2>,1,480,false);          #clownfish
registerFood(<minecraft:fish:3>,[0,0.1,1,0,2],0.2,1,3);	          #pufferfish
registerFood(<minecraft:cooked_fish:1>,[0,0,2,0,0],0.6,2,2.25);	registerItemHeat(<minecraft:cooked_fish:1>,1,480,false);          #cooked salmon
registerFood(<minecraft:cookie>,[1.5,1,0,0,0],0.2,0,0.8);	          #cookie
registerFood(<minecraft:melon>,[0,0,0,1,0],0.4,1,4);	          #melon
registerFood(<minecraft:spider_eye>,[0,0,0,0,0.2],0.1,1,3);	          #spider eye
registerFood(<minecraft:baked_potato>,[1,0,0.5,1,0],0.9,1.5,5);	registerItemHeat(<minecraft:baked_potato>,1,480,false);          #baked potato
registerFood(<minecraft:poisonous_potato>,[1,0,0,0,2],0,3,2);	          #poisonous potato
registerFood(<minecraft:pumpkin_pie>,[3.6,3,1.7,0,0],1.8,1,4);	          #pumpkin pie
registerFood(<minecraft:rabbit_stew>,[0.2,0.5,1.5,2,2],1.8,5,5);	          #rabbit stew
registerFood(<minecraft:chorus_fruit>,[0,0,0,0.1,0.2],0.1,0.1,1.3);	          #chorus fruit
registerFood(<minecraft:beetroot_soup>,[2,0,1.5,4,0],2,3,5);	          #beetroot soup
	
registerFood(<foodexpansion:itemjelly>,[0,0.2,0.1,0.1,0.1],0.2,1,1);	          #green jelly
registerFood(<foodexpansion:itembacon>,[0,1,1.2,0,0],0.1,0.5,3);	registerItemHeat(<foodexpansion:itembacon>,1,480,false);          #bacon
registerFood(<foodexpansion:itemcookedbacon>,[0,1,1,0,0],0.4,0.1,1.5);	registerItemHeat(<foodexpansion:itemcookedbacon>,1,480,false);          #crispy bacon
registerFood(<foodexpansion:itembaconandegg>,[2,3,2.5,0,1],1,0.1,1.5);	          #bacon and egg
registerFood(<foodexpansion:itemcarrotseedsoup>,[1,0,1,3,1],1.8,3,6);	          #carrot soup
registerFood(<foodexpansion:itemcompressedflesh>,[0,0.3,2.1,0,0.1],0.4,0,0.4);	          #salted flesh
registerFood(<foodexpansion:itemchocolatebar>,[0.3,0.4,0.1,0,0],0.7,0,0.1);	          #chocolate bar
registerFood(<foodexpansion:itemspidersoup>,[1,0.2,0,2,0.3],1.7,3,3);	          #spider eye stew
registerFood(<foodexpansion:itemnetherwartsoup>,[1,0.3,0,2,0.2],1.8,2,3);	          #nether wart stew
registerFood(<foodexpansion:itemcactusfruit>,[0,0,0,0.1,0.1],0.2,3,1.3);	          #cactus fruit
registerFood(<foodexpansion:itemcookedmushroom>,[0,0,0.3,0.1,0.2],0.4,0.1,2.3);	registerItemHeat(<foodexpansion:itemcookedmushroom>,1,480,false);          #cooked mushroom
registerFood(<foodexpansion:itemcarrotpie>,[0.3,0.5,0.1,0.2,0],1.4,0.2,4);	          #carrot cake
registerFood(<foodexpansion:itembatwing>,[0,0.2,1,0,0],0.2,0.5,3);	registerItemHeat(<foodexpansion:itembatwing>,1,480,false);          #bat wing
registerFood(<foodexpansion:itemcookedbatwing>,[0,0.2,1.5,0,0],0.6,1,2);	registerItemHeat(<foodexpansion:itemcookedbatwing>,1,180,false);          #cooked bat wing
registerFood(<foodexpansion:itemblazecream>,[0.2,0.3,0.4,0,1],1.6,0.2,2);	          #blaze cream soup
registerFood(<foodexpansion:itemmelonsalad>,[0,0,0,2,0],1.2,1.4,5);	          #melon salad
registerFood(<foodexpansion:itemroastedseed>,[0.1,0.1,0.1,0.1,0],0.3,0,1);	registerItemHeat(<foodexpansion:itemroastedseed>,1,480,false);          #roasted seed
registerFood(<foodexpansion:itemocelotmeat>,[0,0.2,1.2,0,0],0.2,1,3);	registerItemHeat(<foodexpansion:itemocelotmeat>,1,480,false);          #ocelot meat
registerFood(<foodexpansion:itemcookedocelotmeat>,[0,0.2,1.7,0,0],0.6,1,2.25);	registerItemHeat(<foodexpansion:itemcookedocelotmeat>,1,480,false);          #cooked ocelot meat
registerFood(<foodexpansion:itemlollipop>,[0.1,0.1,0,0,0],0.4,0,0.1);	          #lollipop
registerFood(<foodexpansion:itembeetrootnoodles>,[2,0,1,3,0.1],1.6,1,4);	registerItemHeat(<foodexpansion:itembeetrootnoodles>,1,480,false);          #beetroot noodles
registerFood(<foodexpansion:itemparrotmeat>,[0,2,2.5,0,0],0.2,1,3);	registerItemHeat(<foodexpansion:itemparrotmeat>,1,480,false);          #raw parrot
registerFood(<foodexpansion:itemcookedparrotmeat>,[0,2,2.5,0,0],0.8,2,2.25);	registerItemHeat(<foodexpansion:itemcookedparrotmeat>,1,480,false);          #cooked parrot
registerFood(<foodexpansion:itemllamameat>,[0,0.5,2.5,0,0],0.2,1,2);	registerItemHeat(<foodexpansion:itemllamameat>,1,480,false);          #raw llama
registerFood(<foodexpansion:itemcookedllamameat>,[0,0.5,2.5,0,0],0.8,2,1.5);	registerItemHeat(<foodexpansion:itemcookedllamameat>,1,480,false);          #llama steak
registerFood(<foodexpansion:itempolarbearmeat>,[0,2.5,2.5,0.5,0],0.2,1,2);	registerItemHeat(<foodexpansion:itempolarbearmeat>,1,480,false);          #raw polar bear
registerFood(<foodexpansion:itemcookedpolarbearmeat>,[0,2.3,2.5,0.5,0],0.8,2,1.5);	registerItemHeat(<foodexpansion:itemcookedpolarbearmeat>,1,480,false);          #polar bear steak
	
registerFood(<inspirations:edibles>,[0,0,0,1,0.3],0.6,3,2);	          #heartbeet
registerFood(<inspirations:potato_soup>,[1.5,3.5,2.7,3,2],2.3,2,6);	          #potato soup
	
registerFood(<quark:root>,[0.1,0,0,0,0.8],0.2,0.6,0.7);	          #cave root
registerFood(<quark:root_flower>,[0.1,0,0,0,0.9],0.3,0.7,1.2);	          #blue sprout
registerFood(<quark:root_flower:1>,[0.1,0,0,0,0.9],0.3,0.7,1.2);	          #black sprout
registerFood(<quark:root_flower:2>,[0.1,0,0,0,0.9],0.3,0.7,1.2);	          #white sprout
registerFood(<quark:frog_leg>,[0,0,1,0,0],0.2,1,3);	registerItemHeat(<quark:frog_leg>,1,480,false);          #frog leg
registerFood(<quark:cooked_frog_leg>,[0,0,1,0,0],0.4,1,2.25);	registerItemHeat(<quark:cooked_frog_leg>,1,480,false);          #cooked frog leg
registerFood(<quark:golden_frog_leg>,[0,0,1,0,1],0.2,0,2.25);	          #golden frog leg
registerFood(<quark:crab_leg>,[0,0,1.2,0,0],0.2,1,3);	registerItemHeat(<quark:crab_leg>,1,480,false);          #crab leg
registerFood(<quark:cooked_crab_leg>,[0,0,1.4,0,0],0.4,1,2.25);	registerItemHeat(<quark:cooked_crab_leg>,1,480,false);          #cooked crab leg
	
registerFood(<emergingtechnology:algaebarcooked>,[0,0,0.1,0.4,0.2],0.6,1,0.4);	registerItemHeat(<emergingtechnology:algaebarcooked>,1,480,false);          #Cooked Algae Bar
	
registerFood(<forestry:fruits:1>,[0,0.4,0.1,0.2,0],0.1,0,0.1);	          #walnut
registerFood(<forestry:fruits:2>,[0,0.3,0.1,0.2,0],0.1,0,0.1);	          #chestnut
registerFood(<forestry:fruits:5>,[0,0,0,0.4,0],0.4,3.2,4);	          #date
registerFood(<forestry:fruits:6>,[0,0,0,0.3,0],0.4,3,4);	          #papaya
registerFood(<forestry:honeyed_slice>,[2,0.5,0.5,0.2,0],1,0,0.6);	          #honeyed slice
registerFood(<forestry:ambrosia>,[0,0,0.1,0,0.1],1,0.2,0);	          #Ambrosia
registerFood(<forestry:honey_pot>,[0,0,0.1,0,0.1],1,0.2,0);	          #Honey pot
	
registerFood(<nuclearcraft:graham_cracker>,[0.2,0.1,0,0,0],0.3,0,0.8);	          #Graham Cracker
registerFood(<nuclearcraft:dominos>,[2,0.5,2.5,1,2],3,0.3,2);	registerItemHeat(<nuclearcraft:dominos>,1,480,false);          #Domino's Special
registerFood(<nuclearcraft:ground_cocoa_nibs>,[0.1,0.2,0.1,0,0],0.1,0,0.1);	          #Ground Cocoa Nibs
registerFood(<nuclearcraft:cocoa_butter>,[0.3,0.5,0.1,0,0],0.3,0,0.1);	          #Solidified Cocoa Butter
registerFood(<nuclearcraft:unsweetened_chocolate>,[0.2,0.3,0.1,0,0],0.4,0,0.1);	          #Unsweetened Chocolate
registerFood(<nuclearcraft:dark_chocolate>,[0.2,0.3,0.1,0,0],0.3,0,0.1);	          #Dark Chocolate
registerFood(<nuclearcraft:milk_chocolate>,[0.3,0.5,0.1,0,0],0.4,0,0.1);	          #Milk Chocolate
registerFood(<nuclearcraft:marshmallow>,[0,0.4,0.2,0,0],0.7,0.2,0.3);	          #Marshmallow
registerFood(<nuclearcraft:smore>,[0.5,0.8,0.2,0,0.1],1.3,0.2,2);	          #S'more S'mingot
registerFood(<nuclearcraft:moresmore>,[1,1.6,0.4,0,0.2],2.3,0.4,2);	          #MoreS'more Double
	
registerFood(<rustic:cloudsbluff>,[0,0,0,0.1,0.2],0.1,0.1,1.3);	          #Clouds Bluff
registerFood(<rustic:core_root>,[0.1,0,0,0,0.8],0.2,0.6,0.7);	          #Core Root
registerFood(<rustic:ginseng>,[0.1,0,0,0,0.8],0.2,0.6,0.7);	          #Ginseng Root
registerFood(<rustic:marsh_mallow>,[0.1,0,0,0,0.8],0.2,0.6,0.7);	          #Marsh Mallow Root
registerFood(<rustic:ironberries>,[0,0,0,0,0.3],0.3,2,0.7);	          #Iron Berries
registerFood(<rustic:chili_pepper>,[0,0,0,1,0],0.4,3,2.5);	          #Chili Pepper
registerFood(<rustic:grapes>,[0,0,0,0.5,0],0.4,5,4.25);	          #Grapes
registerFood(<rustic:wildberries>,[0,0,0,0.5,0],0.4,5,4.25);	          #WildBerry
	
registerFood(<tconstruct:edible:1>,[0,0.3,0.2,0,0],0.2,2,0);	          #Slimeball cyan
registerFood(<tconstruct:edible:2>,[0,0.3,0.2,0,0],0.2,2,0);	          #Slimeball purple
registerFood(<tconstruct:edible:3>,[0,0.3,0.2,0,1],0.2,2,0);	          #Coagulated Blood
registerFood(<tconstruct:edible:4>,[0,0.3,0.2,0,0],0.2,2,0);	          #Slimeball orange
registerFood(<tconstruct:edible:10>,[0,0,1,0,0],0.6,0,0.1);	          #Monster Jerky
registerFood(<tconstruct:edible:11>,[0,0.5,2,0,0],0.8,0,0.1);	          #Beef Jerky
registerFood(<tconstruct:edible:12>,[0,0,2,0,0],0.6,0,0.1);	          #Chicken Jerky
registerFood(<tconstruct:edible:13>,[0,0.5,2,0,0],0.4,0,0.1);	          #Bacon Jerky
registerFood(<tconstruct:edible:14>,[0,0.5,2,0,0],0.8,0,0.1);	          #Mutton Jerky
registerFood(<tconstruct:edible:15>,[0,0,1,0,0],0.6,0,0.1);	          #Rabbit jerky
registerFood(<tconstruct:edible:20>,[0,0,1.5,0,0],0.6,0,0.1);	          #Fish Jerky
registerFood(<tconstruct:edible:21>,[0,0,1.5,0,0],0.6,0,0.1);	          #Salmon Jerky
registerFood(<tconstruct:edible:22>,[0,0,1.5,0,0],0.6,0,0.1);	          #Clownfish Jerky
registerFood(<tconstruct:edible:23>,[0,0,1,0,0],0.6,0,0.1);	          #Fugu Jerky
registerFood(<tconstruct:edible:30>,[0,0.3,0.2,0,0],0.2,0.2,0);	          #Green Slime Drop
registerFood(<tconstruct:edible:31>,[0,0.3,0.2,0,0],0.2,0.2,0);	          #Cyan Slime drop
registerFood(<tconstruct:edible:32>,[0,0.3,0.2,0,0],0.2,0.2,0);	          #Purple Slime drop
registerFood(<tconstruct:edible:33>,[0,0.3,0.2,0,1],0.2,0.2,0);	          #Coagulated Blood Drop
registerFood(<tconstruct:edible:34>,[0,0.3,0.2,0,0],0.2,0.2,0);	          #Orange Slime Drop
	
registerFood(<contenttweaker:dried_fruit>,[0.5,0,0,0.5,0.5],0.4,0,0.1);	          #Dried Fruit
registerFood(<contenttweaker:i_vegetable_soup>,[2,0,1,1,0],1.8,2,6);	          #Vegetable Soup
registerFood(<contenttweaker:smoothie>,[0,0,0,0.5,0.5],0.4,4,6);	          #Smoothie
registerFood(<contenttweaker:pemmican>,[0.2,1,1.5,0.5,0.5],2.3,1,0);	          #Pemmican
registerFood(<contenttweaker:snow_cream>,[1,2.3,0.2,0,0],1.7,1,6);	          #Snow Cream
registerFood(<contenttweaker:dried_ground_meat>,[0,0.3,1,0,0],0.6,0,0.1);	          #Dried Ground Meat
registerFood(<contenttweaker:ground_meat>,[0,0.3,1,0,0],0.6,0.2,2);	          #Ground Meat
registerFood(<contenttweaker:cookie_dough>,[1.5,1,0,0,0],0.1,0.1,9);	registerItemHeat(<contenttweaker:cookie_dough>,1,480,false);          #Cookie Dough
registerFood(<contenttweaker:raw_seeds>,[0.1,0,0,0,0.1],0.2,0.2,0.1);	registerItemHeat(<contenttweaker:raw_seeds>,1,480,false);          #Raw Seeds
registerFood(<contenttweaker:water_glass>,[0,0,0,0,0],0,4,0);	          #Water Glass
	
registerFood(<extrabotany:friedchicken>,[0,1.5,2,0,0.5],1,1,0.1);	          #Fried Chicken Leg
registerFood(<extrabotany:gildedmashedpotato>,[1,0,0.5,1,0],0.6,2,0);	          #Gilded Mashed Potatos
registerFood(<extrabotany:manadrink>,[0,0,0,0,0.6],0.4,3,0);	          #Mana Cocktail
registerFood(<extrabotany:candy>,[0.2,0.3,0,0,0],0.3,0,0);	          #Candy Eins
registerFood(<extrabotany:candy:1>,[0.2,0.3,0,0,0],0.3,0,0);	          #Candy Zwei
registerFood(<extrabotany:candy:2>,[0.2,0.3,0,0,0],0.3,0,0);	          #Candy Drei

#=============================================================================================================================================		

#Heating.addRecipe(String registryName, IItemStack input, IItemStack output, float transformTemp, float maxTemp);

furnace.remove(<minecraft:cooked_fish:1>);
Heating.addRecipe("cooked_salmon", <minecraft:fish:1>, <minecraft:cooked_fish:1>, 250, 480);

furnace.remove(<minecraft:baked_potato>);
Heating.addRecipe("baked_potato", <tfc:food/potato>, <minecraft:baked_potato>, 250, 480);

furnace.remove(<foodexpansion:itemcookedmushroom>);
val shrooms = <ore:mushroomAny>.items;
for i, shroom in shrooms{
Heating.addRecipe("cooked_mushroom"~i, shroom, <foodexpansion:itemcookedmushroom>, 250, 480);
}

furnace.remove(<foodexpansion:itemroastedseed>);
Heating.addRecipe("cooked_seed", <contenttweaker:raw_seeds>, <foodexpansion:itemroastedseed>, 250, 480);

furnace.remove(<foodexpansion:itemcookedbacon>);
Heating.addRecipe("cooked_bacon",<foodexpansion:itembacon>, <foodexpansion:itemcookedbacon>, 250, 480);

furnace.remove(<foodexpansion:itemcookedocelotmeat>);
Heating.addRecipe("cooked_ocelot",<foodexpansion:itemocelotmeat>, <foodexpansion:itemcookedocelotmeat>, 250, 480);

furnace.remove(<foodexpansion:itemcookedparrotmeat>);
Heating.addRecipe("cooked_parrot",<foodexpansion:itemparrotmeat>, <foodexpansion:itemcookedparrotmeat>, 250, 480);

furnace.remove(<foodexpansion:itemcookedllamameat>);
Heating.addRecipe("cooked_llama",<foodexpansion:itemllamameat>, <foodexpansion:itemcookedllamameat>, 250, 480);

furnace.remove(<foodexpansion:itemcookedpolarbearmeat>);
Heating.addRecipe("cooked_polar_bear",<foodexpansion:itempolarbearmeat>, <foodexpansion:itemcookedpolarbearmeat>, 250, 480);

furnace.remove(<quark:cooked_frog_leg>);
Heating.addRecipe("cooked_frog",<quark:frog_leg>, <quark:cooked_frog_leg>, 250, 480);

furnace.remove(<quark:cooked_crab_leg>);
Heating.addRecipe("cooked_crab",<quark:crab_leg>, <quark:cooked_crab_leg>, 250, 480);




