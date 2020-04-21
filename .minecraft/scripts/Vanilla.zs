import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.CompactingBin;


//Cobble Stone Slab
recipes.addShaped(<minecraft:stone_slab:3>,[[<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>]]);

//Clay Blocks
recipes.remove(<minecraft:clay>);
recipes.removeShapeless(<minecraft:clay_ball>*4, [<minecraft:clay>]);
CompactingBin.addRecipe(<minecraft:clay>.name,<minecraft:clay>,<minecraft:clay_ball>,9,true);
mods.immersiveengineering.Crusher.removeRecipe(<minecraft:clay_ball>);

//Eye of Ender
mods.forestry.Carpenter.addRecipe(<minecraft:ender_eye>,[
    [<minecraft:spider_eye>,<ore:dustVoid>,<ore:enderpearl>]],180,<liquid:glowstone>*250);
//Bucket
#mods.tconstruct.Casting.removeTableRecipe(<minecraft:bucket>);
recipes.remove(<minecraft:bucket>);
RollingMachine.addShapeless(<minecraft:bucket>, [<ore:sheetDoubleSteel>]);
mods.terrafirmacraft.ItemRegistry.registerItemMetal(<minecraft:bucket>, "WROUGHT_IRON", 200, true);

//Black Stained Glass
recipes.addShaped(<minecraft:stained_glass:15>*8,[
	[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>],
	[<minecraft:glass>,<ore:dyeBlack>,<minecraft:glass>],
	[<minecraft:glass>,<minecraft:glass>,<minecraft:glass>]]);
//Coal Block
val Coals = [<tfc:ore/bituminous_coal>,<minecraft:coal>] as IItemStack[];
for CO in Coals{
CompactingBin.addRecipe(CO.name~"Block",<minecraft:coal_block>,CO,9,true);
}	
GraniteAnvil.addRecipe(<minecraft:coal_block>.name,<tfc:ore/bituminous_coal>*9,<minecraft:coal_block>,4,"hammer",true);

//Logs
recipes.addShapeless(<minecraft:planks:0>*4,[<ore:saw>.transformDamage(3),<minecraft:log>]);
recipes.addShapeless(<minecraft:planks:1>*4,[<ore:saw>.transformDamage(3),<minecraft:log:1>]);
recipes.addShapeless(<minecraft:planks:2>*4,[<ore:saw>.transformDamage(3),<minecraft:log:2>]);
recipes.addShapeless(<minecraft:planks:3>*4,[<ore:saw>.transformDamage(3),<minecraft:log:3>]);
recipes.addShapeless(<minecraft:planks:4>*4,[<ore:saw>.transformDamage(3),<minecraft:log2>]);
recipes.addShapeless(<minecraft:planks:5>*4,[<ore:saw>.transformDamage(3),<minecraft:log2:1>]);

//Lapis Lazuli Block
recipes.remove(<minecraft:lapis_block>);
recipes.remove(<minecraft:dye:4>);

GraniteAnvil.addRecipe(<minecraft:lapis_block>.name,<minecraft:dye:4>*9,<minecraft:lapis_block>,4,"hammer",true);
CompactingBin.addRecipe(<minecraft:lapis_block>.name,<minecraft:lapis_block>,<ore:gemLapis>,9,true);

//Vanilla Chest
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>,[
	[<minecraft:planks>,<minecraft:planks>,<minecraft:planks>],
	[<minecraft:planks>,<ore:chestWood>,<minecraft:planks>],
	[<minecraft:planks>,<minecraft:planks>,<minecraft:planks>]]);
recipes.addShaped(<minecraft:chest>,[
	[<botania:livingwood>,<botania:livingwood>,<botania:livingwood>],
	[<botania:livingwood>,null,<botania:livingwood>],
	[<botania:livingwood>,<botania:livingwood>,<botania:livingwood>]]);
//Torch Recipes
recipes.remove(<minecraft:torch>);

//Beacon
recipes.addShaped(<minecraft:beacon>,[
	[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
	[<ore:blockGlass>,<ore:netherStar>,<ore:blockGlass>],
	[<ore:obsidian>,<ore:obsidian>,<ore:obsidian>]]);
//Piston
recipes.addShaped(<minecraft:piston>,[
	[<ore:lumber>,<ore:lumber>,<ore:lumber>],
	[null,<ore:ingotBrass>,null],
	[<ore:ingotBrick>,<tfc:bellows>,<ore:ingotBrick>]]);
recipes.addShaped(<minecraft:piston>,[
	[<ore:lumber>,<ore:lumber>,<ore:lumber>],
	[null,<ore:ingotBronze>,null],
	[<ore:ingotBrick>,<tfc:bellows>,<ore:ingotBrick>]]);	
recipes.addShapeless(<minecraft:sticky_piston>,[<minecraft:piston>,<ore:slimeball>]);	
recipes.addShapeless(<minecraft:sticky_piston>,[<minecraft:piston>,<ore:dropHoney>]);	
//Cauldron
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>,[
	[<ore:sheetBlackBronze>,null,<ore:sheetBlackBronze>],
	[<ore:sheetBlackBronze>,null,<ore:sheetBlackBronze>],
	[<ore:sheetBlackBronze>,<ore:sheetBlackBronze>,<ore:sheetBlackBronze>]]);
//Pressure Plate
<minecraft:wooden_pressure_plate>.displayName = "Wooden Pressure Plate";
recipes.remove(<minecraft:wooden_pressure_plate>);
recipes.addShaped(<minecraft:wooden_pressure_plate>*2,[
	[<ore:saw>.transformDamage(1)],
	[<ore:lumber>,<ore:lumber>]]);
//Crafting Table Conversion
mods.jei.JEI.addDescription(<minecraft:crafting_table>,"If I place a crafting table directly into the collector crystal by shift right clicking maybe I can aquire the specific table notch created...");
mods.jei.JEI.addDescription(<ore:craftingTableWood>,"Placing a crafting table into the magical feild of a collector crystal yeilds some interesting results. However, it appears not all tables are created equal...");
#recipes.addShapeless(<minecraft:crafting_table>,[<astralsorcery:itemcraftingcomponent:5>,<ore:craftingTableWood>]);
//Furnace
val CB = <ore:cobblestone>;
recipes.addShaped(<minecraft:furnace>,[
	[CB,CB,CB],
	[CB,null,CB],
	[CB,CB,CB]]);
//End Portal
#recipes.addShaped(<minecraft:end_portal_frame>,[
#	[<nuclearcraft:alloy:2>,<opencomputers:material:13>,<nuclearcraft:alloy:2>],
#	[<minecraft:end_stone>,<aunis:crystal_ender>,<minecraft:end_stone>],
#	[<minecraft:end_stone>,<minecraft:end_stone>,<minecraft:end_stone>]]);	
//Anvil
recipes.remove(<railcraft:anvil>);
recipes.addShapeless(<minecraft:anvil>,[<tfc:metal/anvil/black_bronze>]);
recipes.addShapeless(<railcraft:anvil>,[<tfc:metal/anvil/wrought_iron>]);	
<minecraft:anvil>.displayName = "Black Bronze Enchanting Anvil";
<railcraft:anvil>.displayName = "Wrought Iron Enchanting Anvil";
//Sand 
#mods.terrafirmacraft.Barrel.addRecipe("Vanilla_sand", <ore:tfcSand>, <liquid:hot_water>*250, <minecraft:sand>, <liquid:hot_water>*0, 4);
mods.jei.JEI.addDescription(<minecraft:sand>,"Exposing Liquid Starlight to Lava seems to have a rather peculiar reaction...");
//Paper
mods.rustic.CrushingTub.addRecipe(<liquid:fresh_water>*125, <minecraft:paper>, <emergingtechnology:paperpulp>*3);
recipes.remove(<minecraft:paper>);
recipes.addShaped(<minecraft:paper>,[
	[<ore:pulpWood>,<ore:pulpWood>,<ore:pulpWood>]]);
//Sandstone
recipes.addShaped(<minecraft:sandstone>,[
[<minecraft:sand>,<minecraft:sand>],
[<minecraft:sand>,<minecraft:sand>]]);
//Charcoal 
furnace.remove(<minecraft:coal:1>);
//Redstone Lamp
recipes.addShaped(<minecraft:redstone_lamp>,[
	[<minecraft:glowstone>],
	[<quark:framed_glass>],
	[<minecraft:redstone_torch>]]);
//Concrete
val Concrete = <minecraft:concrete>.definition;
val ConcretePowder = <minecraft:concrete_powder>.definition;
for i in 0 to 16{
	var stringname = "concrete" ~ i as string;
mods.terrafirmacraft.Barrel.addRecipe(stringname, ConcretePowder.makeStack(i), <liquid:water>*125, Concrete.makeStack(i), 8);
}
//Sticks
recipes.addShapeless(<minecraft:stick>*2,[<ore:lumber>,<ore:saw>.transformDamage(1)]);

val FurnaceFoods = [<pyrotech:mushroom_red_roasted>,<netherex:congealed_magma_cream>,<quark:cooked_frog_leg>,
<foodexpansion:itemcookedbatwing>,<quark:cooked_crab_leg>,<pyrotech:apple_baked>,<pyrotech:egg_roasted>,
<emergingtechnology:algaebarcooked>,<pyrotech:carrot_roasted>,<pyrotech:beetroot_roasted>,<pyrotech:mushroom_brown_roasted>,
<minecraft:cooked_beef>,<minecraft:cooked_chicken>,<minecraft:cooked_mutton>,<minecraft:cooked_porkchop>,<minecraft:cooked_fish>,
<minecraft:cooked_rabbit>,<foodexpansion:itemcookedhorsemeat>,<foodexpansion:itemcookedsquid>,<foodexpansion:itemcookedwolfmeat>,
<emergingtechnology:syntheticcowcooked>,<emergingtechnology:syntheticchickencooked>,<emergingtechnology:syntheticpigcooked>] as IItemStack[];
for i, FF in FurnaceFoods{
furnace.remove(FF);
}