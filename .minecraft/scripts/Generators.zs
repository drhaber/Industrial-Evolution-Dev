import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.tfctech.WireDrawing;
import mods.appliedenergistics2.Inscriber;

mods.jei.JEI.removeAndHide(<libvulpes:coalgenerator>);

//Coal Generator

recipes.remove(<integrateddynamics:coal_generator>);
recipes.addShaped(<integrateddynamics:coal_generator>,[
	[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>],
	[<integrateddynamics:crystalized_menril_chunk>,<minecraft:furnace>,<integrateddynamics:crystalized_menril_chunk>],
	[<libvulpes:battery>,<integrateddynamics:menril_log>,<libvulpes:battery>]]);

//Solar

Inscriber.addRecipe(<contenttweaker:solar_substrate>, <nuclearcraft:part:13>, false, <projectred-core:resource_item:341>, <projectred-core:resource_item:342>);

val solarCell = <advancedrocketry:solarpanel>;
val solarSubstrate = <contenttweaker:solar_substrate>;

solarCell.addTooltip(format.darkBlue("Crafting Componet"));
solarCell.addShiftTooltip(format.red("Will Not Generate Power"));
solarCell.displayName = "Primitive Solar Cell";
<advancedrocketry:solargenerator>.displayName = "Primitive Solar Generator";
<advancedrocketry:solargenerator>.addShiftTooltip(format.darkAqua("Produces 1 RF/t constantly during daytime."));

recipes.remove(solarCell); #Crafting Panel
recipes.addShaped(solarCell,[
	[<ore:paneGlassColorless>,<ore:paneGlassColorless>,<ore:paneGlassColorless>],
	[<tfc:metal/sheet/tin>,<advancedrocketry:lens>,<tfc:metal/sheet/tin>],
	[<immersiveengineering:material:27>,<projectred-core:resource_item:342>,<immersiveengineering:material:27>]]);

recipes.remove(<nuclearcraft:solar_panel_basic>); #5 RF/t
recipes.addShaped(<nuclearcraft:solar_panel_basic>,[
	[solarCell,solarCell,solarCell],
	[solarCell,solarCell,solarCell],
	[<libvulpes:battery>,<immersiveengineering:material:27>,<libvulpes:battery>]]);

recipes.remove(<nuclearcraft:solar_panel_advanced>); #20 RF/t
recipes.addShaped(<nuclearcraft:solar_panel_advanced>,[
	[<nuclearcraft:solar_panel_basic>,<nuclearcraft:solar_panel_basic>,<nuclearcraft:solar_panel_basic>],
	[<nuclearcraft:solar_panel_basic>,<projectred-transmission:framed_wire:17>,<nuclearcraft:solar_panel_basic>],
	[<libvulpes:battery:1>,<pneumaticcraft:printed_circuit_board>,<libvulpes:battery:1>]]);    

recipes.remove(<emergingtechnology:solar>); #15 RF/t
recipes.addShaped(<emergingtechnology:solar>,[
	[<tfc:metal/sheet/wrought_iron>,<ore:paneGlassColorless>,null],
	[<immersiveengineering:connector>,solarSubstrate,<ore:paneGlassColorless>],
	[<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/wrought_iron>]]);

recipes.remove(<engineersdecor:small_solar_panel>); #50 RF/t
recipes.addShaped(<engineersdecor:small_solar_panel>,[
	[solarSubstrate,solarSubstrate,solarSubstrate],
	[<tfctech:metal/steel_rod>,<projectred-core:resource_item:410>,<tfctech:metal/steel_rod>],
	[<tfc:metal/sheet/steel>,<ore:slabTreatedWood>,<tfc:metal/sheet/steel>]]);

recipes.remove(<emergingtechnology:solarglass>); # 2.5 RF/t
recipes.addShaped(<emergingtechnology:solarglass>,[
	[<ore:blockGlass>,<immersiveengineering:connector>,<ore:blockGlass>],
	[<ore:blockGlass>,solarSubstrate,<ore:blockGlass>],
	[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]]);    