import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry.registerItemHeat;
import mods.terrafirmacraft.ItemRegistry.registerFood;

#<tfc:ceramics/fired/bowl>.displayName = "Clay Bowl";
#mods.terrafirmacraft.ItemRegistry.registerItemHeat(<minecraft:glass>, 0.35, 1300, true);
#mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:splashbottle>, 0.35, 1300, true);
#mods.terrafirmacraft.Anvil.addRecipe("Splash_Bottle", <minecraft:glass_bottle>, <contenttweaker:splashbottle>, 1, "general","BEND_NOT_LAST","SHRINK_NOT_LAST","DRAW_LAST");
#<tfc:ore/bituminous_coal>.maxStackSize = 32;
#mods.terrafirmacraft.Heating.addRecipe("Seared_Brick", <tconstruct:soil>, <tconstruct:seared:1>, 1500, 3200);

recipes.remove(<foodexpansion:itembaconandegg>);
recipes.addShapeless(<foodexpansion:itembaconandegg>,[<ore:foodCookedegg>,<foodexpansion:itemcookedbacon>]);

furnace.remove(<minecraft:bread>);
mods.jei.JEI.removeAndHide(<foodexpansion:itemdough>);
<foodexpansion:itemcompressedflesh>.displayName = "Salted Flesh";
mods.tconstruct.Drying.removeRecipe(<tconstruct:edible:10>);
mods.tconstruct.Drying.addRecipe(<tconstruct:edible:10>,<foodexpansion:itemcompressedflesh>, 6000);
#=============================================================================================================================================		
//Uncooked Items
recipes.addShapeless(<contenttweaker:cookie_dough>,[<ore:dough>,<nuclearcraft:ground_cocoa_nibs>,<minecraft:sugar>]);
recipes.remove(<foodexpansion:itembacon>);
recipes.addShapeless(<foodexpansion:itembacon>*3,[<ore:knife>.transformDamage(2),<tfc:food/pork>]);

recipes.addShapeless(<contenttweaker:uncooked_pumpkin_pie>,[<minecraft:milk_bucket>.transformReplace(<minecraft:bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<minecraft:pumpkin>,<minecraft:sugar>]);
recipes.addShapeless(<contenttweaker:uncooked_pumpkin_pie>,[<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "milk", Amount: 1000}}).transformReplace(<tfc:wooden_bucket>),<ore:knife>.transformDamage(1),<ore:flour>,<minecraft:pumpkin>,<minecraft:sugar>]);

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


#recipes.addShapeless(<contenttweaker:me_beetroot_soup>,[hotwater_pot,<ore:knife>.transformDamage(3)]);
#recipes.addShapeless(<contenttweaker:me_carrot_soup>,[hotwater_pot,<ore:knife>.transformDamage(3)]);
#recipes.addShapeless(<contenttweaker:me_spider_eye_stew>,[hotwater_pot,<ore:knife>.transformDamage(3)]);
#recipes.addShapeless(<contenttweaker:me_nether_wart_stew>,[hotwater_pot,<ore:knife>.transformDamage(3)]);
#recipes.addShapeless(<contenttweaker:me_blaze_cream_soup>,[hotwater_pot,<ore:knife>.transformDamage(3)]);
#recipes.addShapeless(<contenttweaker:me_potato_soup>,[hotwater_pot,<ore:knife>.transformDamage(3)]);
recipes.addShapeless(<contenttweaker:me_mushroom_stew>,[hotwater_pot,<ore:knife>.transformDamage(5),<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wine", Amount: 1000}}).transformReplace(<minecraft:glass_bottle>),<ore:mushroomAny>,<ore:mushroomAny>,<ore:mushroomAny>,<tfc:food/potato>,<tfc:food/onion>,<ore:dustSalt>]);
recipes.addShapeless(<contenttweaker:me_rabbit_stew>,[hotwater_pot,<ore:knife>.transformDamage(4),<tfc:food/onion>,<ore:dustSalt>,<ore:flour>,<tfc:food/carrot>,<tfc:food/rabbit>,<tfc:food/cabbage>]);
#recipes.addShapeless(<contenttweaker:me_vegetable_soup>,[hotwater_pot,<ore:knife>.transformDamage(3)]);

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
#            FoodItem                       carbs    Fat     Protien     Vitamins    Minerals    Calories    Water   Decay                                           Heat Capacity           Melt Temp
#registerFood(<minecraft:mushroom_stew>,   [1,       0.8,    1,          0,          0.2],       1.2,        2,      6);  #registerItemHeat(<minecraft:bread>,       1,                      480, false);

registerFood(<minecraft:mushroom_stew>,[1,0.8,1,0,0.2],1.2,2,6);          #mushroom stew
registerFood(<minecraft:fish:1>,[0,0.2,2,0,0],0.2,1,3);          #raw salmon
registerFood(<minecraft:fish:2>,[0,0.2,2,0,0],0.2,1,3);          #clownfish
registerFood(<minecraft:fish:3>,[0,0.1,1,0,2],0.2,1,3);          #pufferfish
registerFood(<minecraft:cooked_fish:1>,[0,0,2,0,0],0.6,2,2.25);          #cooked salmon
registerFood(<minecraft:cookie>,[1.5,1,0,0,0],0.2,0,0.8);          #cookie
registerFood(<minecraft:melon>,[0,0,0,1,0],0.4,10,4);          #melon
registerFood(<minecraft:spider_eye>,[0,0,0,0,0.2],0.1,1,3);          #spider eye
registerFood(<minecraft:baked_potato>,[1,0,0.5,1,0],0.9,1.5,5);          #baked potato
registerFood(<minecraft:poisonous_potato>,[1,0,0,0,2],0,3,2);          #poisonous potato
registerFood(<minecraft:pumpkin_pie>,[3.6,3,1.7,0,0],1.8,1,4);          #pumpkin pie
registerFood(<minecraft:rabbit_stew>,[0.2,0.5,1.5,2,2],1.8,5,5);          #rabbit stew
registerFood(<minecraft:chorus_fruit>,[0,0,0,0.1,0.2],0.1,0.1,1.3);          #chorus fruit
registerFood(<minecraft:beetroot_soup>,[2,0,1.5,4,0],2,3,5);          #beetroot soup