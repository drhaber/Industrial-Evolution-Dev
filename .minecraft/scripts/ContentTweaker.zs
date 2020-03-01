#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.game.IGame;
import mods.contenttweaker.ItemFood;

//tanned_flesh
var tanned_flesh = VanillaFactory.createItem("tanned_flesh");
tanned_flesh.register();
game.setLocalization("item.contenttweaker.tanned_flesh.name", "Tanned Flesh");
//squeezed_flesh
var squeezed_flesh = VanillaFactory.createItem("squeezed_flesh");
squeezed_flesh.register();
game.setLocalization("item.contenttweaker.squeezed_flesh.name", "Squeezed Flesh");
//creosote_string
var creosote_string = VanillaFactory.createItem("creosote_string");
creosote_string.register();
game.setLocalization("item.contenttweaker.creosote_string.name", "Treated String");
//tanned_small
var tanned_small = VanillaFactory.createItem("tanned_small");
tanned_small.register();
game.setLocalization("item.contenttweaker.tanned_small.name", "Tanned Hide");
//casing_electron_tube
var casing_electron_tube = VanillaFactory.createItem("casing_electron_tube");
casing_electron_tube.register();
game.setLocalization("item.contenttweaker.casing_electron_tube.name", "Vacuum Tube Casing");
//winding_apparatus
var winding_apparatus = VanillaFactory.createItem("winding_apparatus");
winding_apparatus.register();
game.setLocalization("item.contenttweaker.winding_apparatus.name", "Winding Apparatus");
//magic_motion_rune
var magic_motion_rune = VanillaFactory.createItem("magic_motion_rune");
magic_motion_rune.register();
game.setLocalization("item.contenttweaker.magic_motion_rune.name", "Magic Motion Rune");
//miniturization_rune
var miniturization_rune = VanillaFactory.createItem("miniturization_rune");
miniturization_rune.register();
game.setLocalization("item.contenttweaker.miniturization_rune.name", "Miniaturization Rune");
//sodiumcarbonate
var sodiumcarbonate = VanillaFactory.createItem("sodiumcarbonate");
sodiumcarbonate.register();
game.setLocalization("item.contenttweaker.sodiumcarbonate.name", "Sodium Carbonate");
//potassiumcarbonate
var potassiumcarbonate = VanillaFactory.createItem("potassiumcarbonate");
potassiumcarbonate.register();
game.setLocalization("item.contenttweaker.potassiumcarbonate.name", "Potassium Carbonate");
//LeatherBag
var leatherbag = VanillaFactory.createItem("leatherbag");
leatherbag.register();
game.setLocalization("item.contenttweaker.leatherbag.name", "Leather Bag");
//LeatherGlove
var leatherglove = VanillaFactory.createItem("leatherglove");
leatherglove.register();
game.setLocalization("item.contenttweaker.leatherglove.name", "Leather Glove");
//Iron_Wrench_Head
var ironwrenchhead = VanillaFactory.createItem("ironwrenchhead");
ironwrenchhead.register();
game.setLocalization("item.contenttweaker.ironwrenchhead.name", "Wrought Iron Wrench Head");
//Glow String
var glowstring = VanillaFactory.createItem("glowstring");
glowstring.register();
game.setLocalization("item.contenttweaker.glowstring.name", "Glow String");
//Treated Lumber
var treatedlumber = VanillaFactory.createItem("treatedlumber");
treatedlumber.register();
game.setLocalization("item.contenttweaker.treatedlumber.name", "Treated Lumber");
//Soot
var soot = VanillaFactory.createItem("soot");
soot.register();
game.setLocalization("item.contenttweaker.soot.name", "Soot");
//Bauxite Dust
var bauxitedust = VanillaFactory.createItem("bauxitedust");
bauxitedust.register();
game.setLocalization("item.contenttweaker.bauxitedust.name", "Bauxite Dust");
//AE2 Inscriber Casts
	//Material Calculation Processor Cast
	var unfired_material_calculation_processor_press = VanillaFactory.createItem("unfired_material_calculation_processor_press");
	unfired_material_calculation_processor_press.register();
	game.setLocalization("item.contenttweaker.unfired_material_calculation_processor_press.name", "Unfired Calculation Processor Cast");

	var fired_material_calculation_processor_press = VanillaFactory.createItem("fired_material_calculation_processor_press");
	fired_material_calculation_processor_press.register();
	game.setLocalization("item.contenttweaker.fired_material_calculation_processor_press.name", "Fired Calculation Processor Cast");
#=============================================================================================================================================		
	//Material Engineering Processor Cast
	var unfired_material_engineering_processor_press = VanillaFactory.createItem("unfired_material_engineering_processor_press");
	unfired_material_engineering_processor_press.register();
	game.setLocalization("item.contenttweaker.unfired_material_engineering_processor_press.name", "Unfired Engineering Processor Cast");

	var fired_material_engineering_processor_press = VanillaFactory.createItem("fired_material_engineering_processor_press");
	fired_material_engineering_processor_press.register();
	game.setLocalization("item.contenttweaker.fired_material_engineering_processor_press.name", "Fired Engineering Processor Cast");
#=============================================================================================================================================		
	//Material logic Processor Cast
	var unfired_material_logic_processor_press = VanillaFactory.createItem("unfired_material_logic_processor_press");
	unfired_material_logic_processor_press.register();
	game.setLocalization("item.contenttweaker.unfired_material_logic_processor_press.name", "Unfired logic Processor Cast");

	var fired_material_logic_processor_press = VanillaFactory.createItem("fired_material_logic_processor_press");
	fired_material_logic_processor_press.register();
	game.setLocalization("item.contenttweaker.fired_material_logic_processor_press.name", "Fired logic Processor Cast");
#=============================================================================================================================================	
	//Material Silicon Processor Cast
	var unfired_material_silicon_press = VanillaFactory.createItem("unfired_material_silicon_press");
	unfired_material_silicon_press.register();
	game.setLocalization("item.contenttweaker.unfired_material_silicon_press.name", "Unfired Silicon Processor Cast");

	var fired_material_silicon_press = VanillaFactory.createItem("fired_material_silicon_press");
	fired_material_silicon_press.register();
	game.setLocalization("item.contenttweaker.fired_material_silicon_press.name", "Fired Silicon Processor Cast");
#=============================================================================================================================================	

//me_rabbit_stew
var me_rabbit_stew = VanillaFactory.createItem("me_rabbit_stew");
me_rabbit_stew.register();
game.setLocalization("item.contenttweaker.me_rabbit_stew.name", "Mise En Place Rabbit Stew");
//me_mushroom_stew
var me_mushroom_stew = VanillaFactory.createItem("me_mushroom_stew");
me_mushroom_stew.register();
game.setLocalization("item.contenttweaker.me_mushroom_stew.name", "Mise En Place Mushroom Stew");
//me_potato_soup
var me_potato_soup = VanillaFactory.createItem("me_potato_soup");
me_potato_soup.register();
game.setLocalization("item.contenttweaker.me_potato_soup.name", "Mise En Place Potato Soup");
//me_blaze_cream_soup
var me_blaze_cream_soup = VanillaFactory.createItem("me_blaze_cream_soup");
me_blaze_cream_soup.register();
game.setLocalization("item.contenttweaker.me_blaze_cream_soup.name", "Mise En Place Blaze Cream Soup");
//me_nether_wart_stew
var me_nether_wart_stew = VanillaFactory.createItem("me_nether_wart_stew");
me_nether_wart_stew.register();
game.setLocalization("item.contenttweaker.me_nether_wart_stew.name", "Mise En Place Nether Wart Stew");
//me_spider_eye_stew
var me_spider_eye_stew = VanillaFactory.createItem("me_spider_eye_stew");
me_spider_eye_stew.register();
game.setLocalization("item.contenttweaker.me_spider_eye_stew.name", "Mise En Place Spider Eye Stew");
//me_carrot_soup
var me_carrot_soup = VanillaFactory.createItem("me_carrot_soup");
me_carrot_soup.register();
game.setLocalization("item.contenttweaker.me_carrot_soup.name", "Mise En Place Carrot Soup");
//me_beetroot_soup
var me_beetroot_soup = VanillaFactory.createItem("me_beetroot_soup");
me_beetroot_soup.register();
game.setLocalization("item.contenttweaker.me_beetroot_soup.name", "Mise En Place Beetroot Soup");
//me_vegetable_soup
var me_vegetable_soup = VanillaFactory.createItem("me_vegetable_soup");
me_vegetable_soup.register();
game.setLocalization("item.contenttweaker.me_vegetable_soup.name", "Mise En Place Vegetable Soup");
#=============================================================================================================================================	

//vegetable_soup
var vegetable_soup = VanillaFactory.createFluid("vegetable_soup", Color.fromHex("B89C44"));
vegetable_soup.viscosity = 3000;
vegetable_soup.temperature= 100;
vegetable_soup.register();
game.setLocalization("fluid.vegetable_soup", "Vegetable Soup");

//spider_eye_stew
var spider_eye_stew = VanillaFactory.createFluid("spider_eye_stew", Color.fromHex("6A1515"));
spider_eye_stew.viscosity = 3000;
spider_eye_stew.temperature= 100;
spider_eye_stew.register();
game.setLocalization("fluid.spider_eye_stew", "Spider Eye Stew");

//nether_wart_stew
var nether_wart_stew = VanillaFactory.createFluid("nether_wart_stew", Color.fromHex("A3473B"));
nether_wart_stew.viscosity = 3000;
nether_wart_stew.temperature= 100;
nether_wart_stew.register();
game.setLocalization("fluid.nether_wart_stew", "Nether Wart Stew");

//blaze_cream_soup
var blaze_cream_soup = VanillaFactory.createFluid("blaze_cream_soup", Color.fromHex("FFFE31"));
blaze_cream_soup.viscosity = 3000;
blaze_cream_soup.temperature= 100;
blaze_cream_soup.register();
game.setLocalization("fluid.blaze_cream_soup", "Blaze Cream Soup");

//carrot_soup
var carrot_soup = VanillaFactory.createFluid("carrot_soup", Color.fromHex("FF5F0F"));
carrot_soup.viscosity = 3000;
carrot_soup.temperature= 100;
carrot_soup.register();
game.setLocalization("fluid.carrot_soup", "Carrot Soup");
#=============================================================================================================================================	

//kerosene
var kerosene = VanillaFactory.createFluid("kerosene", Color.fromHex("040B6E"));
kerosene.viscosity = 3000;
kerosene.temperature= 100;
kerosene.register();
game.setLocalization("fluid.kerosene", "Kerosene");

//liquidCatalyst
var liquidCatalyst = VanillaFactory.createFluid("liquidCatalyst", Color.fromHex("C4C1BC"));
liquidCatalyst.viscosity = 3000;
liquidCatalyst.temperature= 100;
liquidCatalyst.register();
game.setLocalization("fluid.liquidCatalyst", "Liquid Catalyst");

//LiquidCarbonSolution
var LiquidCarbonSolution = VanillaFactory.createFluid("LiquidCarbonSolution", Color.fromHex("0D0D0D"));
LiquidCarbonSolution.viscosity = 3000;
LiquidCarbonSolution.temperature= 100;
LiquidCarbonSolution.register();
game.setLocalization("fluid.LiquidCarbonSolution", "Liquid Carbon Solution");

//Bleach
var bleach = VanillaFactory.createFluid("bleach", Color.fromHex("CFD74F"));
bleach.viscosity = 3000;
bleach.temperature= 100;
bleach.register();
game.setLocalization("fluid.bleach", "Bleach");

//Waste
var waste = VanillaFactory.createFluid("waste", Color.fromHex("5C2F07"));
waste.viscosity = 9000;
waste.temperature= 100;
waste.register();
game.setLocalization("fluid.waste", "Waste");

//Molten Red Alloy
var moltenredalloy = VanillaFactory.createFluid("moltenredalloy", Color.fromHex("FF6145"));
moltenredalloy.viscosity = 1000;
moltenredalloy.temperature= 1200;
moltenredalloy.register();
game.setLocalization("fluid.moltenredalloy", "Molten Red Alloy");
#=============================================================================================================================================	
//dried_fruit
var dried_fruit = VanillaFactory.createItemFood("dried_fruit",4);
dried_fruit.saturation = 0.6;
dried_fruit.register();
game.setLocalization("item.contenttweaker.dried_fruit.name", "Dried Fruit");

//vegetable_soup
var i_vegetable_soup = VanillaFactory.createItemFood("i_vegetable_soup",6);
i_vegetable_soup.saturation = 1;
i_vegetable_soup.register();
game.setLocalization("item.contenttweaker.i_vegetable_soup.name", "Vegetable Soup");
#=============================================================================================================================================	

var dirtyglass = VanillaFactory.createBlock("dirtyglass", <blockmaterial:glass>);
dirtyglass.setFullBlock(false);
dirtyglass.setBlockLayer("TRANSLUCENT");
dirtyglass.setLightOpacity(3);
dirtyglass.setLightValue(0);
dirtyglass.setTranslucent(true);
dirtyglass.setBlockHardness(5.0);
dirtyglass.setBlockResistance(5.0);
dirtyglass.setToolClass("pickaxe");
dirtyglass.setToolLevel(0);
dirtyglass.setBlockSoundType(<soundtype:glass>);
dirtyglass.register();
game.setLocalization("tile.contenttweaker.dirtyglass.name", "Dirty Glass");