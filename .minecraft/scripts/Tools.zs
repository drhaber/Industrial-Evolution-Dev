import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//Vanilla Stone & wooden Tools
mods.jei.JEI.removeAndHide(<minecraft:stone_hoe>);
mods.jei.JEI.removeAndHide(<minecraft:stone_sword>);
mods.jei.JEI.removeAndHide(<minecraft:stone_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:stone_axe>);
mods.jei.JEI.removeAndHide(<minecraft:stone_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_shovel>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_hoe>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_sword>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_pickaxe>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_axe>);

<ore:stickWood>.addItems([<minecraft:stone_hoe>,<minecraft:stone_pickaxe>,<minecraft:stone_axe>,
							<minecraft:wooden_hoe>,<minecraft:wooden_sword>,<minecraft:wooden_shovel>,<minecraft:wooden_pickaxe>,<minecraft:wooden_axe>]);


//Shovels
<ore:shovelIron>.addItems([<minecraft:iron_shovel>,<tfc:metal/shovel/wrought_iron>]);
<ore:shovelBronze>.addItems([<forestry:bronze_shovel>,<tfc:metal/shovel/bronze>]);
<ore:shovelSteel>.addItems([<immersiveengineering:shovel_steel>,<railcraft:tool_shovel_steel>,<tfc:metal/shovel/steel>]);

//Pickaxes
<ore:pickaxeIron>.addItems([<minecraft:iron_pickaxe>,<tfc:metal/pick/wrought_iron>]);
<ore:pickaxeBronze>.addItems([<forestry:bronze_pickaxe>,<tfc:metal/pick/bronze>]);
<ore:pickaxeSteel>.addItems([<immersiveengineering:pickaxe_steel>,<railcraft:tool_pickaxe_steel>,<tfc:metal/pick/steel>]);

//Axes
<ore:axeIron>.addItems([<minecraft:iron_axe>,<tfc:metal/axe/wrought_iron>]);
<ore:axeSteel>.addItems([<immersiveengineering:axe_steel>,<railcraft:tool_axe_steel>,<tfc:metal/axe/steel>]);

//Swords
<ore:swordIron>.addItems([<minecraft:iron_sword>,<tfc:metal/sword/wrought_iron>]);
<ore:swordSteel>.addItems([<immersiveengineering:sword_steel>,<railcraft:tool_sword_steel>,<tfc:metal/sword/steel>]);

//Hoes
<ore:hoeIron>.addItems([<minecraft:iron_hoe>,<tfc:metal/hoe/wrought_iron>]);
<ore:hoeSteel>.addItems([<railcraft:tool_hoe_steel>,<tfc:metal/hoe/steel>]);

//Diamond Tools
mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond_sword>, <botania:manasteelsword>, <liquid:diamond>, 1332, true, 1800);
mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond_shovel>, <botania:manasteelshovel>, <liquid:diamond>, 666, true, 1800);
mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond_pickaxe>, <botania:manasteelpick>, <liquid:diamond>, 1998, true, 1800);
mods.tconstruct.Casting.addTableRecipe(<minecraft:diamond_axe>, <botania:manasteelaxe>, <liquid:diamond>, 1998, true, 1800);
