import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;

//Seeds
<ore:seedPumpkin>.add(<tfc:crop/seeds/pumpkin>);
<ore:seedWheat>.add(<tfc:crop/seeds/wheat>);
<ore:seedMelon>.add(<tfc:crop/seeds/melon>);
<ore:seedBeetroot>.add(<tfc:crop/seeds/beet>);
<ore:seedSugar>.add(<inspirations:sugar_cane_seeds>);
<ore:seedSugar>.add(<tfc:crop/seeds/sugarcane>);
<ore:seedPotato>.add(<inspirations:potato_seeds>);
<ore:seedPotato>.add(<tfc:crop/seeds/potato>);
<ore:seedCarrot>.add(<inspirations:carrot_seeds>);
<ore:seedCarrot>.add(<tfc:crop/seeds/carrot>);
//glass
<ore:blockGlass>.add(<contenttweaker:dirtyglass>);
//woodPulp
<ore:pulpWood>.remove(<emergingtechnology:paperpulp>);
//Beds
val carpets = <minecraft:carpet>.definition;
for i in 0 to 16{
<ore:carpet>.add(carpets.makeStack(i));
}
//Carpet
val beds = <minecraft:bed>.definition;
for i in 0 to 16{
<ore:bed>.add(beds.makeStack(i));
}
//Petals
val petals = <botania:petal>.definition;
for i in 0 to 16{
<ore:Petals>.add(petals.makeStack(i));
}
//Aluminium
<ore:ingotAluminum>.addAll(<ore:ingotAluminium>);
<ore:ingotAluminium>.mirror(<ore:ingotAluminum>);
<ore:dustAluminum>.addAll(<ore:dustAluminium>);
<ore:dustAluminium>.mirror(<ore:dustAluminum>);
//Chests
<ore:chest>.addAll(<ore:chestWood>);
<ore:chestWood>.mirror(<ore:chest>);
//Bricks
<ore:ingotBrick>.addAll(<ore:brick>); //This adds ingot brick to all bricks
//Soot Black Dye
<ore:dyeBlack>.add(<contenttweaker:soot>);
//Marble
<ore:stoneMarble>.add(<tfc:raw/marble>);
//Aquamarine
<ore:gemAquamarine>.addAll(<ore:gemBeryl>);
//Biotite
<ore:gemEnderBiotite>.addAll(<ore:quartzDark>);
<ore:quartzDark>.mirror(<ore:gemEnderBiotite>);
//End Stone
<ore:endstone>.add(<opencomputers:endstone>);
//Brass Sleeve
<ore:sleeveBrass>.add(<railcraft:gear:3>);
//Silicon
<ore:itemSilicon>.remove(<libvulpes:productingot:3>);
<ore:waferSilicon>.remove(<libvulpes:productingot:3>);
<ore:itemSilicon>.add(<projectred-core:resource_item:301>);
<ore:waferSilicon>.addAll(<ore:itemSilicon>);
<ore:itemSilicon>.mirror(<ore:waferSilicon>);
<ore:bouleSilicon>.add(<projectred-core:resource_item:300>);
mods.jei.JEI.hide(<libvulpes:productboule:3>);
mods.jei.JEI.hide(<advancedrocketry:wafer>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:5>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem:6>);
furnace.remove(<projectred-core:resource_item:300>);
mods.appliedenergistics2.Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:13>*2);
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:20>,<ore:itemSilicon>, true, <appliedenergistics2:material:19>);
mods.nuclearcraft.alloy_furnace.addRecipe(<ore:itemSilicon>, <ore:dustGraphite>, <nuclearcraft:alloy:13>*2);
//Coal
<ore:gemCoal>.addAll(<ore:coal>);
<ore:coal>.mirror(<ore:gemCoal>);
//Sand 
<ore:tfcSand>.addItems([<tfc:sand/granite>,<tfc:sand/diorite>,<tfc:sand/gabbro>,<tfc:sand/shale>,
						   <tfc:sand/claystone>,<tfc:sand/rocksalt>,<tfc:sand/limestone>,<tfc:sand/conglomerate>,
						   <tfc:sand/dolomite>,<tfc:sand/phyllite>,<tfc:sand/slate>,<tfc:sand/quartzite>,
						   <tfc:sand/dacite>,<tfc:sand/andesite>,<tfc:sand/basalt>,<tfc:sand/rhyolite>,<tfc:sand/chalk>,
						   <tfc:sand/chert>,<tfc:sand/schist>,<tfc:sand/gneiss>,<tfc:sand/marble>]);
//Aluminium Plate
<ore:plateAluminum>.addAll(<ore:plateAluminium>);
<ore:plateAluminium>.mirror(<ore:plateAluminum>);
//Gears
<ore:gearIron>.addAll(<ore:gearWroughtIron>);
mods.jei.JEI.removeAndHide(<railcraft:gear:3>);
//Rods/Sticks
<ore:stickIron>.addAll(<ore:rodWroughtIron>);
<ore:stickSteel>.addAll(<ore:rodSteel>);
<ore:stickCopper>.addAll(<ore:rodCopper>);
<ore:stickSteel>.addAll(<ore:rodSteel>);
<ore:stickTitanium>.addAll(<ore:rodTitanium>);
<ore:stickAluminum>.addAll(<ore:rodAluminium>);
#=============================================================================================================================================		
//foods
<ore:foodApple>.addItems([<minecraft:apple>,<tfc:food/red_apple>]);
<ore:foodWheatbread>.addItems([<minecraft:bread>,<tfc:food/wheat_bread>]);
<ore:foodRawpork>.addItems([<minecraft:porkchop>,<tfc:food/pork>,<emergingtechnology:syntheticpigraw>]);
<ore:foodCookedpork>.addItems([<minecraft:cooked_porkchop>,<tfc:food/cooked_pork>,<emergingtechnology:syntheticpigcooked>]);
<ore:foodRawfish>.addItems([<minecraft:fish>,<tfc:food/fish>]);
<ore:foodCookedfish>.addItems([<minecraft:cooked_fish>,<tfc:food/cooked_fish>]);
<ore:foodRawmutton>.addItems([<minecraft:mutton>,<tfc:food/mutton>]);
<ore:foodCookedmutton>.addItems([<minecraft:cooked_mutton>,<tfc:food/cooked_mutton>]);
<ore:foodRawchicken>.addItems([<minecraft:chicken>,<tfc:food/chicken>,<emergingtechnology:syntheticchickenraw>]);
<ore:foodCookedchicken>.addItems([<minecraft:cooked_chicken>,<tfc:food/cooked_chicken>,<emergingtechnology:syntheticchickencooked>]);
<ore:foodRawbeef>.addItems([<minecraft:beef>,<tfc:food/beef>,<emergingtechnology:syntheticcowraw>]);
<ore:foodCookedbeef>.addItems([<minecraft:cooked_beef>,<tfc:food/cooked_beef>,<emergingtechnology:syntheticcowcooked>]);
<ore:foodRawrabbit>.addItems([<minecraft:rabbit>,<tfc:food/rabbit>]);
<ore:foodCookedrabbit>.addItems([<minecraft:cooked_rabbit>,<tfc:food/cooked_rabbit>]);
<ore:foodBeet>.addItems([<minecraft:beetroot>,<tfc:food/beet>]);
<ore:foodCarrot>.addItems([<minecraft:carrot>,<tfc:food/carrot>]);
<ore:foodPotato>.addItems([<minecraft:potato>,<tfc:food/potato>]);
<ore:foodRawsquid>.addItems([<foodexpansion:itemsquid>,<tfc:food/calamari>]);
<ore:foodCookedsquid>.addItems([<foodexpansion:itemcookedsquid>,<tfc:food/cooked_calamari>]);
<ore:foodRawhorse>.addItems([<foodexpansion:itemhorsemeat>,<tfc:food/horse_meat>]);
<ore:foodCookedhorse>.addItems([<foodexpansion:itemcookedhorsemeat>,<tfc:food/cooked_horse_meat>]);
<ore:foodRawwolf>.addItems([<foodexpansion:itemwolfmeat>,<tfc:food/wolf>]);
<ore:foodCookedwolf>.addItems([<foodexpansion:itemcookedwolfmeat>,<tfc:food/cooked_wolf>]);
<ore:foodCherry>.addItems([<forestry:fruits>,<tfc:food/cherry>]);
<ore:foodLemon>.addItems([<forestry:fruits:3>,<tfc:food/lemon>]);
<ore:foodPlum>.addItems([<forestry:fruits:4>,<tfc:food/plum>]);
<ore:foodOlive>.addItems([<rustic:olives>,<tfc:food/olive>]);
<ore:foodTomato>.addItems([<rustic:tomato>,<tfc:food/tomato>]);
<ore:foodBerrieswild>.addItems([<rustic:wildberries>,<tfc:food/bunch_berry>]);