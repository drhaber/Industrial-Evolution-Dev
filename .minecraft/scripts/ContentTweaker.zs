#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import crafttweaker.game.IGame;

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