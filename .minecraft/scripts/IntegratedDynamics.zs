import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;

recipes.remove(<integrateddynamics:menril_torch>);
recipes.addShaped(<integrateddynamics:menril_torch>,[
	[null,<integrateddynamics:menril_berries>,null],
	[<integrateddynamics:crystalized_menril_chunk>,<ore:ringIron>,<integrateddynamics:crystalized_menril_chunk>],
	[null,<minecraft:stick>,null]]);

recipes.remove(<integrateddynamics:menril_torch_stone>);
recipes.addShaped(<integrateddynamics:menril_torch_stone>,[
	[null,<integrateddynamics:menril_berries>,null],
	[<integrateddynamics:crystalized_menril_chunk>,<ore:ringIron>,<integrateddynamics:crystalized_menril_chunk>],
	[null,<ore:rodStone>,null]]); 

//Energy Ineterfaces
recipes.addShaped(<integratedtunnels:part_interface_energy_item>,[
	[<integrateddynamics:crystalized_menril_chunk>,<immersiveengineering:connector>,<integrateddynamics:crystalized_menril_chunk>],
	[<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>,<integrateddynamics:crystalized_menril_chunk>]]);

recipes.remove(<integratedtunnels:part_importer_energy_item>);
recipes.addShaped(<integratedtunnels:part_importer_energy_item>,[
	[<integrateddynamics:crystalized_menril_chunk>,<integratedtunnels:part_interface_energy_item>,<integrateddynamics:crystalized_menril_chunk>],
	[<immersiveengineering:connector:4>,<integrateddynamics:variable_transformer:1>,<immersiveengineering:connector:4>],
	[<integrateddynamics:crystalized_menril_chunk>,<immersiveengineering:wirecoil:2>,<integrateddynamics:crystalized_menril_chunk>]]);

recipes.remove(<integratedtunnels:part_exporter_energy_item>);
recipes.addShaped(<integratedtunnels:part_exporter_energy_item>,[
	[<integrateddynamics:crystalized_menril_chunk>,<integratedtunnels:part_interface_energy_item>,<integrateddynamics:crystalized_menril_chunk>],
	[<immersiveengineering:connector:4>,<integrateddynamics:variable_transformer>,<immersiveengineering:connector:4>],
	[<integrateddynamics:crystalized_menril_chunk>,<immersiveengineering:wirecoil:2>,<integrateddynamics:crystalized_menril_chunk>]]); 