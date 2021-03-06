#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.game.IGame;
import mods.contenttweaker.ItemFood;
import crafttweaker.potions.IPotion;
import mods.contenttweaker.Random;
import mods.contenttweaker.World;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.IItemColorSupplier;

//life_support_unit
var life_support_unit = VanillaFactory.createItem("life_support_unit");
life_support_unit.register();
game.setLocalization("item.contenttweaker.life_support_unit.name", "Life Support Unit");
//nano_fibre_mesh
var nano_fibre_mesh = VanillaFactory.createItem("nano_fibre_mesh");
nano_fibre_mesh.register();
game.setLocalization("item.contenttweaker.nano_fibre_mesh.name", "Nano Fibre Mesh");
//iron_chloride
var iron_chloride = VanillaFactory.createItem("iron_chloride");
iron_chloride.register();
game.setLocalization("item.contenttweaker.iron_chloride.name", "Iron(III) Chloride");
//titania_powder
var titania_powder = VanillaFactory.createItem("titania_powder");
titania_powder.register();
game.setLocalization("item.contenttweaker.titania_powder.name", "Titania Powder");
//star_fabric
var star_fabric = VanillaFactory.createItem("star_fabric");
star_fabric.register();
game.setLocalization("item.contenttweaker.star_fabric.name", "Star Fabric");
//star_string
var star_string = VanillaFactory.createItem("star_string");
star_string.register();
game.setLocalization("item.contenttweaker.star_string.name", "Star String");
//zeolite_powder
var zeolite_powder = VanillaFactory.createItem("zeolite_powder");
zeolite_powder.register();
game.setLocalization("item.contenttweaker.zeolite_powder.name", "Zeolite Powder");
//iron_sulfate
var iron_sulfate = VanillaFactory.createItem("iron_sulfate");
iron_sulfate.register();
game.setLocalization("item.contenttweaker.iron_sulfate.name", "Iron(II) Sulfate");
//solar_substrate 
var solar_substrate = VanillaFactory.createItem("solar_substrate");
solar_substrate.register();
game.setLocalization("item.contenttweaker.solar_substrate.name", "Solar Substrate");
//ashen_string
var ashen_string = VanillaFactory.createItem("ashen_string");
ashen_string.register();
game.setLocalization("item.contenttweaker.ashen_string.name", "Ashen String");
//diamond_saw_head
var diamond_saw_head = VanillaFactory.createItem("diamond_saw_head");
diamond_saw_head.register();
game.setLocalization("item.contenttweaker.diamond_saw_head.name", "Diamond Saw Head");
//unfired_archaic_lump
var unfired_archaic_lump = VanillaFactory.createItem("unfired_archaic_lump");
unfired_archaic_lump.register();
game.setLocalization("item.contenttweaker.unfired_archaic_lump.name", "Unfired Archaic Lump");
//blank_blueprint
var blank_blueprint = VanillaFactory.createItem("blank_blueprint");
blank_blueprint.register();
game.setLocalization("item.contenttweaker.blank_blueprint.name", "Blank Blueprint");
/*
//wax_anvil
var wax_anvil = VanillaFactory.createItem("wax_anvil");
wax_anvil.register();
game.setLocalization("item.contenttweaker.wax_anvil.name", "Wax Anvil");
*/
//wooden_cross_beam
var wooden_cross_beam = VanillaFactory.createItem("wooden_cross_beam");
wooden_cross_beam.register();
game.setLocalization("item.contenttweaker.wooden_cross_beam.name", "Wooden Cross Beam");
//gold_shovel_head
var gold_shovel_head = VanillaFactory.createItem("gold_shovel_head");
gold_shovel_head.register();
game.setLocalization("item.contenttweaker.gold_shovel_head.name", "Gold Shovel Head");
//obsidian_shovel_head
var obsidian_shovel_head = VanillaFactory.createItem("obsidian_shovel_head");
obsidian_shovel_head.register();
game.setLocalization("item.contenttweaker.obsidian_shovel_head.name", "Obsidian Shovel Head");
//manasteel_shovel_head
var manasteel_shovel_head = VanillaFactory.createItem("manasteel_shovel_head");
manasteel_shovel_head.register();
game.setLocalization("item.contenttweaker.manasteel_shovel_head.name", "Manasteel Shovel HSead");
//diamond_shovel_head
var diamond_shovel_head = VanillaFactory.createItem("diamond_shovel_head");
diamond_shovel_head.register();
game.setLocalization("item.contenttweaker.diamond_shovel_head.name", "Diamond Shovel Head");
//Type K Thermocouple
var tkt = VanillaFactory.createItem("tkt");
tkt.register();
game.setLocalization("item.contenttweaker.tkt.name", "Type K Thermocouple");
//pitcher
var pitcher = VanillaFactory.createItem("pitcher");
pitcher.register();
game.setLocalization("item.contenttweaker.pitcher.name", "Pitcher");
//bismuth_hammer_head
var bismuth_hammer_head = VanillaFactory.createItem("bismuth_hammer_head");
bismuth_hammer_head.register();
game.setLocalization("item.contenttweaker.bismuth_hammer_head.name", "Bismuth Hammer Head");
//bismuth_engineers_hammer_head
var bismuth_engineers_hammer_head = VanillaFactory.createItem("bismuth_engineers_hammer_head");
bismuth_engineers_hammer_head.register();
game.setLocalization("item.contenttweaker.bismuth_engineers_hammer_head.name", "Bismuth Engineer's Hammer Head");
//striking_die
var striking_die = VanillaFactory.createItem("striking_die");
striking_die.register();
game.setLocalization("item.contenttweaker.striking_die.name", "Striking Die");
//uncooked_pizza
var uncooked_pizza = VanillaFactory.createItem("uncooked_pizza");
uncooked_pizza.register();
game.setLocalization("item.contenttweaker.uncooked_pizza.name", "Uncooked Pizza Pie");
//naquadah_sheet
var naquadah_sheet = VanillaFactory.createItem("naquadah_sheet");
naquadah_sheet.register();
game.setLocalization("item.contenttweaker.naquadah_sheet.name", "Naquadah Sheet");
//uncooked_beet_noodles
var uncooked_beet_noodles = VanillaFactory.createItem("uncooked_beet_noodles");
uncooked_beet_noodles.register();
game.setLocalization("item.contenttweaker.uncooked_beet_noodles.name", "Uncooked Beetroot Noodles");
//uncooked_carrot_cake
var uncooked_carrot_cake = VanillaFactory.createItem("uncooked_carrot_cake");
uncooked_carrot_cake.register();
game.setLocalization("item.contenttweaker.uncooked_carrot_cake.name", "Uncooked Carrot Cake");
//uncooked_pumpkin_pie
var uncooked_pumpkin_pie = VanillaFactory.createItem("uncooked_pumpkin_pie");
uncooked_pumpkin_pie.register();
game.setLocalization("item.contenttweaker.uncooked_pumpkin_pie.name", "Uncooked Pumpkin Pie");
//clay_insulator
var clay_insulator = VanillaFactory.createItem("clay_insulator");
clay_insulator.register();
game.setLocalization("item.contenttweaker.clay_insulator.name", "Unfired Ceramic Insulator");
//mold_circuit
var mold_circuit = VanillaFactory.createItem("mold_circuit");
mold_circuit.register();
game.setLocalization("item.contenttweaker.mold_circuit.name", "Mold Circuit");
//ceramic_insulator
var ceramic_insulator = VanillaFactory.createItem("ceramic_insulator");
ceramic_insulator.register();
game.setLocalization("item.contenttweaker.ceramic_insulator.name", "Ceramic Insulator");
//fluix_wire
var fluix_wire = VanillaFactory.createItem("fluix_wire");
fluix_wire.register();
game.setLocalization("item.contenttweaker.fluix_wire.name", "Fluix Wire");
//quartz_wire
var quartz_wire = VanillaFactory.createItem("quartz_wire");
quartz_wire.register();
game.setLocalization("item.contenttweaker.quartz_wire.name", "Quartz_wire");
//emptyspool
var emptyspool = VanillaFactory.createItem("emptyspool");
emptyspool.register();
game.setLocalization("item.contenttweaker.emptyspool.name", "Empty Spool");
//redstoneEmitter
var redstoneEmitter = VanillaFactory.createItem("redstoneEmitter");
redstoneEmitter.register();
game.setLocalization("item.contenttweaker.redstoneEmitter.name", "Redstone Emitter");
//redstoneSensor
var redstoneSensor = VanillaFactory.createItem("redstoneSensor");
redstoneSensor.register();
game.setLocalization("item.contenttweaker.redstoneSensor.name", "Redstone Sensor");
//Glass Fibre
var glass_fibre = VanillaFactory.createItem("glass_fibre");
glass_fibre.register();
game.setLocalization("item.contenttweaker.glass_fibre.name", "Fiberglass");
//Glass Wire
var glass_wire = VanillaFactory.createItem("glass_wire");
glass_wire.register();
game.setLocalization("item.contenttweaker.glass_wire.name", "Glass Wire");
//Wooden_Glass_Casing
var Wooden_Glass_Casing = VanillaFactory.createItem("Wooden_Glass_Casing");
Wooden_Glass_Casing.register();
game.setLocalization("item.contenttweaker.Wooden_Glass_Casing.name", "Wooden Glass Casing");
//Magic_Motion_Appartus
var Magic_Motion_Appartus = VanillaFactory.createItem("Magic_Motion_Appartus");
Magic_Motion_Appartus.register();
game.setLocalization("item.contenttweaker.Magic_Motion_Appartus.name", "Magic Motion Appartus");
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
//Iron Hook
var iron_hook = VanillaFactory.createItem("iron_hook");
iron_hook.register();
game.setLocalization("item.contenttweaker.iron_hook.name", "Metal Hook");

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

//meat_broth
var meat_broth = VanillaFactory.createFluid("meat_broth", Color.fromHex("806D2F"));
meat_broth.viscosity = 3000;
meat_broth.temperature= 100;
meat_broth.register();
game.setLocalization("fluid.meat_broth", "Meat Broth");

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
/*
//Botania Fluids
		var liquidElementium = VanillaFactory.createFluid("elementium", 0xf66afd);
			liquidElementium.density = 3000;
			liquidElementium.viscosity = 3000;
			liquidElementium.luminosity = 10;
			liquidElementium.material = <blockmaterial:lava>;
			liquidElementium.temperature = 800;
			liquidElementium.stillLocation = "tfc:blocks/lava_still";
			liquidElementium.flowingLocation = "tfc:blocks/lava_flow";
		liquidElementium.register();
		game.setLocalization("fluid.elementium", "Molten Elementium");

		var liquidManasteel = VanillaFactory.createFluid ("manasteel", 0x2494ff);
			liquidManasteel.density = 3000;
			liquidManasteel.viscosity = 3000;
			liquidManasteel.luminosity = 10;
			liquidManasteel.material = <blockmaterial:lava>;
			liquidManasteel.temperature = 681;
			liquidManasteel.stillLocation = "tfc:blocks/lava_still";
			liquidManasteel.flowingLocation = "tfc:blocks/lava_flow";

		liquidManasteel.register();
		game.setLocalization("fluid.manasteel", "Molten Manasteel");

		var liquidTerrasteel = VanillaFactory.createFluid("terrasteel", Color.fromHex("00ff00").getIntColor());
			liquidTerrasteel.density = 3000;
			liquidTerrasteel.viscosity = 3000;
			liquidTerrasteel.luminosity = 10;
			liquidTerrasteel.material = <blockmaterial:lava>;
			liquidTerrasteel.temperature = 760;
			liquidTerrasteel.stillLocation = "tfc:blocks/lava_still";
			liquidTerrasteel.flowingLocation = "tfc:blocks/lava_flow";
		liquidTerrasteel.register();
		game.setLocalization("fluid.terrasteel", "Molten Terrasteel");
*/
//red_mud
var red_mud = VanillaFactory.createFluid("red_mud", Color.fromHex("AF5C24"));
red_mud.viscosity = 3000;
red_mud.temperature= 100;
red_mud.register();
game.setLocalization("fluid.red_mud", "Red Mud");

//titanium_tetrachloride
var titanium_tetrachloride = VanillaFactory.createFluid("titanium_tetrachloride", Color.fromHex("CBCDC0"));
titanium_tetrachloride.viscosity = 1000;
titanium_tetrachloride.temperature= 100;
titanium_tetrachloride.gaseous = true;
titanium_tetrachloride.density = -10;
titanium_tetrachloride.register();
game.setLocalization("fluid.titanium_tetrachloride", "Titanium Tetrachloride");

//sodium_aluminate
var sodium_aluminate = VanillaFactory.createFluid("sodium_aluminate", Color.fromHex("C8C7C3"));
sodium_aluminate.viscosity = 9000;
sodium_aluminate.temperature= 100;
sodium_aluminate.register();
game.setLocalization("fluid.sodium_aluminate", "Sodium Aluminate Solution");
/*
//chlorine
var chlorine = VanillaFactory.createFluid("chlorine", Color.fromHex("9AA953"));
chlorine.viscosity = 1000;
chlorine.temperature = 100;
chlorine.gaseous = true;
chlorine.density = -10;
chlorine.register();
game.setLocalization("fluid.chlorine", "Chlorine Gas");
*/
//hydrogen_chloride
var hydrogen_chloride = VanillaFactory.createFluid("hydrogen_chloride", Color.fromHex("CBCDC0"));
hydrogen_chloride.viscosity = 1000;
hydrogen_chloride.temperature = 100;
hydrogen_chloride.gaseous = true;
hydrogen_chloride.density = -10;
hydrogen_chloride.register();
game.setLocalization("fluid.hydrogen_chloride", "Hydrogen Chloride");
/*
//hydrochloric_acid
var hydrochloric_acid = VanillaFactory.createFluid("hydrochloric_acid", Color.fromHex("CBCDC0"));
hydrochloric_acid.viscosity = 3000;
hydrochloric_acid.temperature= 100;
hydrochloric_acid.register();
game.setLocalization("fluid.hydrochloric_acid", "Hydrochloric Acid");
*/
//liquid_grog
var grog = VanillaFactory.createFluid("grog", Color.fromHex("42FF5C"));
grog.viscosity = 9000;
grog.temperature= 100;
grog.register();
game.setLocalization("fluid.grog", "Liquid Grog");

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

#=============================================================================================================================================	
//cookie_dough
var cookie_dough = VanillaFactory.createItemFood("cookie_dough",1);
cookie_dough.saturation = 0.1;
cookie_dough.alwaysEdible = true;
cookie_dough.onItemFoodEaten = function(stack, world, player) {
	var rand = world.getRandom();
    if (!world.isRemote() & rand.nextInt(100)<7) {
        player.addPotionEffect(<potion:minecraft:weakness>.makePotionEffect(200, 1));
    }
};
cookie_dough.register();
game.setLocalization("item.contenttweaker.cookie_dough.name", "Cookie Dough");

//dried_fruit
var dried_fruit = VanillaFactory.createItemFood("dried_fruit",1);
dried_fruit.saturation = 0.2;
dried_fruit.register();
game.setLocalization("item.contenttweaker.dried_fruit.name", "Dried Fruit");

//raw_seeds
var raw_seeds = VanillaFactory.createItemFood("raw_seeds",1);
raw_seeds.saturation = 0.1;
raw_seeds.register();
game.setLocalization("item.contenttweaker.raw_seeds.name", "Raw Seeds");

//ground_meat
var ground_meat = VanillaFactory.createItemFood("ground_meat",1);
ground_meat.saturation = 0.2;
ground_meat.register();
game.setLocalization("item.contenttweaker.ground_meat.name", "Ground Meat");

//dried_ground_meat
var dried_ground_meat = VanillaFactory.createItemFood("dried_ground_meat",1);
dried_ground_meat.saturation = 0.1;
dried_ground_meat.register();
game.setLocalization("item.contenttweaker.dried_ground_meat.name", "Dried Ground Meat");

//vegetable_soup
var i_vegetable_soup = VanillaFactory.createItemFood("i_vegetable_soup",6);
i_vegetable_soup.saturation = 1;
i_vegetable_soup.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:minecraft:bowl>);
    }
};	
i_vegetable_soup.register();
game.setLocalization("item.contenttweaker.i_vegetable_soup.name", "Vegetable Soup");

//smoothie
var smoothie = VanillaFactory.createItemFood("smoothie",4);
smoothie.saturation = 0.6;
smoothie.itemUseAction ="DRINK";
smoothie.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:extrabotany:material:4>);
    }
};
smoothie.register();
game.setLocalization("item.contenttweaker.smoothie.name", "Fruit Smoothie");

//water_glass
var water_glass = VanillaFactory.createItemFood("water_glass",0);
water_glass.saturation = 0;
water_glass.alwaysEdible= true;
water_glass.itemUseAction ="DRINK";
water_glass.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:extrabotany:material:4>);
    }
};
water_glass.register();
game.setLocalization("item.contenttweaker.water_glass.name", "Glass of Water");

//snow_cream
var snow_cream = VanillaFactory.createItemFood("snow_cream",4);
snow_cream.saturation = 1;
snow_cream.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.give(<item:minecraft:bowl>);
    }
};	
snow_cream.register();
game.setLocalization("item.contenttweaker.snow_cream.name", "Snow Cream");

//pemmican
var pemmican = VanillaFactory.createItemFood("pemmican",8);
pemmican.saturation = 1.2;
pemmican.register();
game.setLocalization("item.contenttweaker.pemmican.name", "Pemmican");
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

var anvilmold = VanillaFactory.createBlock("anvilmold", <blockmaterial:clay>);
anvilmold.setFullBlock(false);
anvilmold.setBlockHardness(5.0);
anvilmold.setBlockResistance(5.0);
anvilmold.setToolClass("shovel");
anvilmold.setToolLevel(0);
anvilmold.setBlockSoundType(<soundtype:sand>);
anvilmold.register();
game.setLocalization("tile.contenttweaker.anvilmold.name", "Anvil Sand Cast");

var waxanvil = VanillaFactory.createBlock("waxanvil", <blockmaterial:clay>);
waxanvil.setFullBlock(false);
waxanvil.setBlockHardness(5.0);
waxanvil.setBlockResistance(5.0);
waxanvil.setToolClass("shovel");
waxanvil.setToolLevel(0);
waxanvil.setBlockSoundType(<soundtype:sand>);
waxanvil.register();
game.setLocalization("tile.contenttweaker.waxanvil.name", "Wax Anvil");