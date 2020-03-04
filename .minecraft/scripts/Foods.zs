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
#            FoodItem                      carbs    Fat     Protien     Vitamins    Minerals    Calories    Water   Decay                                           Heat Capacity           Melt Temp
registerFood(<minecraft:mushroom_stew>,   [1,       0.8,    1,          0,          0.2],       1.2,        2,      6);  #registerItemHeat(<minecraft:bread>,       1,                      480, false);
