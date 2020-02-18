import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val dyes2 = [<ore:dyeBlack>,<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBrown>,<ore:dyeBlue>,<ore:dyePurple>,<ore:dyeCyan>,<ore:dyeLightGray>,<ore:dyeGray>,
<ore:dyePink>,<ore:dyeLime>,<ore:dyeYellow>,<ore:dyeLightBlue>,<ore:dyeMagenta>,<ore:dyeOrange>,<ore:dyeWhite>] as IOreDictEntry[];
val Fl = <fairylights:light>.definition;
val Illumars = <projectred-core:resource_item>.definition;
val hook = <jaff:iron_hook>;

for i in 0 to 16{
val Ill = Illumars.makeStack(515-i);

var Fairy	=Fl.makeStack(i);
var Paper	=Fl.makeStack(i+16);
var Orb 	=Fl.makeStack(i+32);
var Flower	=Fl.makeStack(i+48);
var Ornate =Fl.makeStack(i+64);
var Oil 	=Fl.makeStack(i+80);
var Jack	=Fl.makeStack(i+112);
var Skull	=Fl.makeStack(i+128);
var Ghost	=Fl.makeStack(i+144);
var Spider	=Fl.makeStack(i+160);
var Witch	=Fl.makeStack(i+176);
var Snow	=Fl.makeStack(i+192);
var Icicle	=Fl.makeStack(i+208);
var Meteor	=Fl.makeStack(i+224);

recipes.remove(Fairy);
recipes.addShaped(Fairy,[
	[null,hook,null],
	[null,Ill,null],
	[null,<minecraft:glass_bottle>,null]]);
recipes.remove(Paper);
recipes.addShaped(Paper,[
	[null,hook,null],
	[<ore:paper>,Ill,<ore:paper>],
	[<ore:wireGold>,<ore:paper>,<ore:wireGold>]]);
recipes.remove(Orb);
recipes.addShaped(Orb,[
	[null,hook,null],
	[<ore:clothHighQuality>,Ill,<ore:clothHighQuality>],
	[<ore:string>,<ore:clothHighQuality>,<ore:string>]]);
recipes.remove(Flower);
recipes.addShaped(Flower,[
	[null,hook,null],
	[<ore:Petals>,Ill,<ore:Petals>],
	[null,<ore:Petals>,null]]);
recipes.remove(Ornate);
recipes.addShaped(Ornate,[
	[null,hook,null],
	[<ore:sheetBlackBronze>,Ill,<ore:sheetBlackBronze>],
	[null,<ore:sheetBlackBronze>,null]]);
recipes.remove(Oil);
recipes.addShaped(Oil,[
	[null,hook,null],
	[<tfc:metal/sheet/bronze>,Ill,<ore:sheetBronze>],
	[null,<tfctech:metal/black_bronze_screw>,null]]);
recipes.remove(Jack);
recipes.addShaped(Jack,[
	[null,hook,null],
	[null,Ill,null],
	[null,<minecraft:lit_pumpkin>,null]]);
recipes.remove(Skull);
recipes.addShaped(Skull,[
	[null,hook,null],
	[null,Ill,null],
	[null,<minecraft:skull>,null]]);
recipes.remove(Ghost);
recipes.addShaped(Ghost,[
	[null,hook,null],
	[null,<ore:clothHighQuality>,null],
	[<ore:clothHighQuality>,Ill,<ore:clothHighQuality>]]);
recipes.remove(Spider);
recipes.addShaped(Spider,[
	[null,hook,null],
	[<minecraft:web>,Ill,<minecraft:web>],
	[<minecraft:string>,<minecraft:spider_eye>,<minecraft:string>]]);
recipes.remove(Witch);
recipes.addShaped(Witch,[
	[null,hook,null],
	[null,<quark:witch_hat>,null],
	[null,Ill,null]]);
recipes.remove(Snow);
recipes.addShaped(Snow,[
	[null,hook,null],
	[<minecraft:snowball>,Ill,<minecraft:snowball>],
	[null,<ore:paneGlass>,null]]);	
recipes.remove(Icicle);
recipes.addShaped(Icicle,[
	[null,hook,null],
	[<forestry:crafting_material:5>,Ill,<forestry:crafting_material:5>],
	[null,<forestry:crafting_material:5>,null]]);
recipes.remove(Meteor);
recipes.addShaped(Meteor,[
	[null,hook,null],
	[<ore:paneGlass>,Ill,<ore:paneGlass>],
	[<ore:paneGlass>,<immersiveengineering:fluorescent_tube>,<ore:paneGlass>]]);
}