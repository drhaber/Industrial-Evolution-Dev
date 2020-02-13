#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import crafttweaker.game.IGame;

//Glow String
var glowstring = VanillaFactory.createItem("glowstring");
glowstring.register();
game.setLocalization("item.contenttweaker.glowstring.name", "Glow String");
//Treated Lumber
var treatedlumber = VanillaFactory.createItem("treatedlumber");
treatedlumber.register();
game.setLocalization("item.contenttweaker.treatedlumber.name", "Treated Lumber");

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