#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import crafttweaker.game.IGame;

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