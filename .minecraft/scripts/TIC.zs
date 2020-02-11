import crafttweaker.item.IItemStack;
//ENFL
recipes.remove(<tconstruct:throwball:1>);
recipes.addShaped(<tconstruct:throwball:1>,[
	[<minecraft:tnt>,<minecraft:tnt>,<minecraft:tnt>],
	[<minecraft:tnt>,<minecraft:fire_charge>,<minecraft:tnt>],
	[<minecraft:tnt>,<minecraft:tnt>,<minecraft:tnt>]]);
//Stone Torch
recipes.remove(<tconstruct:stone_torch>);
recipes.addShaped(<tconstruct:stone_torch>*2,[
	[null,<minecraft:glowstone_dust>],
	[null,<ore:rodStone>]]);
//Wooden Hopper
recipes.addShaped(<tconstruct:wooden_hopper>,[
	[<ore:plankWood>,null,<ore:plankWood>],
	[<ore:plankWood>,<ore:chest>,<ore:plankWood>],
	[null,<ore:plankWood>,null]]);
//AE2 Inscriber Plates
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:14>, <contenttweaker:fired_material_engineering_processor_press>, <liquid:iron>, 144);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:13>, <contenttweaker:fired_material_calculation_processor_press>, <liquid:iron>, 144);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:15>, <contenttweaker:fired_material_logic_processor_press>, <liquid:iron>, 144);
mods.tconstruct.Casting.addTableRecipe(<appliedenergistics2:material:19>, <contenttweaker:fired_material_silicon_press>, <liquid:iron>, 144);
recipes.remove(<tconstruct:stone_stick>);

/*
val material = [	"wood","stone","flint","cactus","bone","obsidian",
	"prismarine","endstone","paper","sponge","firewood",
	"iron","pigiron","knightslime","slime","blueslime",
	"magmaslime","netherrack","cobalt","ardite","manyullyn",
	"copper","bronze","lead","silver","electrum","steel",
	"string","slimevine_blue","slimevine_purple","vine",
	"blaze","reed","ice","endrod","feather","slimeleaf_blue",
	"slimeleaf_orange","slimeleaf_purple","leaf","treatedwood",
	"hemp","constantan","boron","tough","hard_carbon",
	"boron_nitride","thorium","uranium","magnesium",
	"chocolate","black_steel","blue_steel","red_steel",
	"sterling_silver","rose_gold","wrought_iron","bismuth",
	"bismuth_bronze","black_bronze","zinc","platinum","nickel"] as string[];
	
val ToolPart = [<tconstruct:sharpening_kit>,<tconstruct:pick_head>,<tconstruct:shovel_head>,<tconstruct:axe_head>,
<tconstruct:sword_blade>,<tconstruct:hammer_head>,<tconstruct:excavator_head>,<tconstruct:kama_head>,
<tconstruct:pan_head>,<tconstruct:sign_head>,<tconstruct:tool_rod>,<tconstruct:tough_tool_rod>,<tconstruct:binding>,<tconstruct:wide_guard>,
<tconstruct:hand_guard>,<tconstruct:cross_guard>,<tconstruct:large_plate>,<tconstruct:knife_blade>] as IItemStack[];

for mat in material {
	for TP in ToolPart{
	mods.tconstruct.Casting.removeTableRecipe(TP.withTag({Material: mat}));
	mods.jei.JEI.hide(TP.withTag({Material: mat}));
	}
}
*/