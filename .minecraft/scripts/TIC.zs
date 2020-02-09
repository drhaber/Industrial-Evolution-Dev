import crafttweaker.item.IItemStack;

recipes.remove(<tconstruct:throwball:1>);
recipes.addShaped(<tconstruct:throwball:1>,[
	[<minecraft:tnt>,<minecraft:tnt>,<minecraft:tnt>],
	[<minecraft:tnt>,<minecraft:fire_charge>,<minecraft:tnt>],
	[<minecraft:tnt>,<minecraft:tnt>,<minecraft:tnt>]]);




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