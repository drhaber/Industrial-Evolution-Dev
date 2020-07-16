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


//C&B Chisels
<ore:cbChisels>.addItems([<chiselsandbits:chisel_iron>,<chiselsandbits:chisel_gold>,<chiselsandbits:chisel_diamond>]);

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
#<ore:swordIron>.addItems([<minecraft:iron_sword>,<tfc:metal/sword/wrought_iron>]);
<ore:swordSteel>.addItems([<immersiveengineering:sword_steel>,<railcraft:tool_sword_steel>,<tfc:metal/sword/steel>]);

//Hoes
<ore:hoeIron>.addItems([<minecraft:iron_hoe>,<tfc:metal/hoe/wrought_iron>]);
<ore:hoeSteel>.addItems([<railcraft:tool_hoe_steel>,<tfc:metal/hoe/steel>]);

//Shears
<ore:shearsSteel>.addItems([<railcraft:tool_shears_steel>]);

//Helmet
<ore:helmetIron>.addItems([<minecraft:iron_helmet>,<tfc:metal/helmet/wrought_iron>]);
//Chestplate
<ore:chestplateIron>.addItems([<minecraft:iron_chestplate>,<tfc:metal/chestplate/wrought_iron>]);
//Leggings
<ore:leggingsIron>.addItems([<minecraft:iron_leggings>,<tfc:metal/greaves/wrought_iron>]);
//Boots
<ore:bootsIron>.addItems([<minecraft:iron_boots>,<tfc:metal/boots/wrought_iron>]);


//Diamond Tools
mods.embers.Stamper.add(<minecraft:diamond_sword>,<liquid:diamond>*1332, <embers:stamp_flat>,<botania:manasteelsword>);
mods.embers.Stamper.add(<minecraft:diamond_pickaxe>,<liquid:diamond>*1998, <embers:stamp_flat>,<botania:manasteelpick>);
mods.embers.Stamper.add(<minecraft:diamond_axe>,<liquid:diamond>*1998, <embers:stamp_flat>,<botania:manasteelaxe>);

//Diamond Shovel
recipes.remove(<minecraft:diamond_shovel>);
recipes.addShaped(<minecraft:diamond_shovel>,[
	[<contenttweaker:diamond_shovel_head>],
	[<minecraft:stick>]]);
//Gold Shovel
recipes.remove(<minecraft:golden_shovel>);
recipes.addShaped(<minecraft:golden_shovel>,[
	[<contenttweaker:gold_shovel_head>],
	[<minecraft:stick>]]);

//Embers Recipes
val toolRecipes = [
<embers:pickaxe_copper>,<embers:axe_copper>,<embers:shovel_copper>,<embers:hoe_copper>,<embers:sword_copper>,
<embers:pickaxe_silver>,<embers:axe_silver>,<embers:shovel_silver>,<embers:hoe_silver>,<embers:sword_silver>,
<embers:pickaxe_lead>,<embers:axe_lead>,<embers:shovel_lead>,<embers:hoe_lead>,<embers:sword_lead>,
#<embers:pickaxe_dawnstone>,<embers:axe_dawnstone>,<embers:shovel_dawnstone>,<embers:hoe_dawnstone>,<embers:sword_dawnstone>,
<embers:pickaxe_aluminum>,<embers:axe_aluminum>,<embers:shovel_aluminum>,<embers:hoe_aluminum>,<embers:sword_aluminum>,
<embers:pickaxe_bronze>,<embers:axe_bronze>,<embers:shovel_bronze>,<embers:hoe_bronze>,<embers:sword_bronze>,
<embers:pickaxe_electrum>,<embers:axe_electrum>,<embers:shovel_electrum>,<embers:hoe_electrum>,<embers:sword_electrum>,
<embers:pickaxe_nickel>,<embers:axe_nickel>,<embers:shovel_nickel>,<embers:hoe_nickel>,<embers:sword_nickel>,
<embers:pickaxe_tin>,<embers:axe_tin>,<embers:shovel_tin>,<embers:hoe_tin>,<embers:sword_tin>,<pyrotech:crude_shovel>,
<pyrotech:bone_shovel>,<pyrotech:flint_shovel>,<pyrotech:obsidian_shovel>,<cyclicmagic:emerald_spade>,
<cyclicmagic:netherbrick_spade>,<cyclicmagic:sandstone_spade>,<railcraft:tool_pickaxe_steel>,<railcraft:tool_axe_steel>,
<railcraft:tool_shovel_steel>,<railcraft:tool_hoe_steel>,<railcraft:tool_sword_steel>,<railcraft:tool_shears_steel>,
<railcraft:armor_helmet_steel>,<railcraft:armor_chestplate_steel>,<railcraft:armor_leggings_steel>,<railcraft:armor_boots_steel>] as IItemStack[];
for i, TR in toolRecipes{
	recipes.remove(TR);
}


#<tcomplement:steel_helmet>,<tcomplement:steel_chestplate>,<tcomplement:steel_leggings>,<tcomplement:steel_boots>

//Fishing RODS
<minecraft:fishing_rod>.displayName = "Void Fishing Rod";	
recipes.addShaped(<minecraft:fishing_rod>,[
	[null,null,<ore:dreamwoodTwig>],
	[null,<ore:dreamwoodTwig>,<ore:manaString>],
	[<ore:stickWood>,null,<jaff:iron_hook>]]);
recipes.remove(<jaff:wooden_fishing_rod>);
recipes.addShaped(<jaff:wooden_fishing_rod>,[
	[null,null,<ore:stickWood>],
	[null,<ore:stickWood>,<ore:string>],
	[<ore:stickWood>,null,<jaff:iron_hook>]]);
recipes.remove(<jaff:iron_fishing_rod>);
recipes.addShaped(<jaff:iron_fishing_rod>,[
	[null,null,<ore:stickIron>],
	[null,<ore:stickIron>,<ore:string>],
	[<ore:stickWood>,null,<jaff:iron_hook>]]);
recipes.remove(<jaff:golden_fishing_rod>);
recipes.addShaped(<jaff:golden_fishing_rod>,[
	[null,null,<ore:rodGold>],
	[null,<ore:rodGold>,<ore:string>],
	[<ore:stickWood>,null,<jaff:iron_hook>]]);
recipes.remove(<jaff:diamond_fishing_rod>);
mods.embers.Stamper.add(<jaff:diamond_fishing_rod>,<liquid:diamond>*1332, <embers:stamp_flat>,<jaff:golden_fishing_rod>);

<pyrotech:crude_fishing_rod>.displayName = "Crude Void Fishing Rod";	
recipes.remove(<pyrotech:crude_fishing_rod>);
recipes.addShaped(<pyrotech:crude_fishing_rod>,[
	[null,null,<ore:livingwoodTwig>],
	[null,<ore:livingwoodTwig>,<ore:manaString>],
	[<ore:livingwoodTwig>,null,<ore:dustVoid>]]);

#=============================================================================================================================================		


recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);
