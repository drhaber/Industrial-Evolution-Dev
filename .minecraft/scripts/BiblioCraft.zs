import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val TLumber = <contenttweaker:treatedlumber>;

//Lanterns
	recipes.removeShaped(<bibliocraft:lanterngold>,[
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>],
		[<minecraft:gold_ingot>,<minecraft:torch>,<minecraft:gold_ingot>],
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>]]);
	recipes.addShaped(<bibliocraft:lanterngold>,[
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>],
		[<ore:ingotGold>,<quark:candle>,<ore:ingotGold>],
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>]]);
	recipes.removeShaped(<bibliocraft:lanterniron>,[
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>],
		[<minecraft:iron_ingot>,<minecraft:torch>,<minecraft:iron_ingot>],
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>]]);
	recipes.addShaped(<bibliocraft:lanterniron>,[
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>],
		[<ore:ingotIron>,<quark:candle>,<ore:ingotIron>],
		[<minecraft:glass_pane>,<minecraft:glowstone_dust>,<minecraft:glass_pane>]]);
//Frames
recipes.remove(<bibliocraft:framingsheet>);
recipes.addShapeless(<bibliocraft:framingsheet>*2,[<ore:saw>.transformDamage(2),TLumber]);
recipes.remove(<bibliocraft:framingboard>);
recipes.addShapeless(<bibliocraft:framingboard>*2,[<ore:saw>.transformDamage(2),<bibliocraft:framingsheet>]);