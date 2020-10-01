import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;


//Advanced PCB
recipes.remove(<pneumaticcraft:advanced_pcb>);
recipes.addShaped(<pneumaticcraft:advanced_pcb>,[
	[<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_wire>,<pneumaticcraft:unassembled_pcb>],
	[<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_wire>,<pneumaticcraft:unassembled_pcb>],
	[<tfctech:metal/gold_strip>,<tfctech:metal/gold_strip>,<tfctech:metal/gold_strip>]]);
//UV Box
recipes.remove(<pneumaticcraft:uv_light_box>);
recipes.addShaped(<pneumaticcraft:uv_light_box>,[
	[<emergingtechnology:purplebulb>,<emergingtechnology:purplebulb>,<emergingtechnology:purplebulb>],
	[<pneumaticcraft:pressure_tube>,<pneumaticcraft:pcb_blueprint>,null],
	[<tfc:metal/sheet/black_bronze>,<tfc:metal/sheet/black_bronze>,<tfc:metal/sheet/black_bronze>]]); 
//Lantern
recipes.remove(<pneumaticcraft:kerosene_lamp>);
recipes.addShaped(<pneumaticcraft:kerosene_lamp>,[
	[null,<tfc:metal/sheet/brass>,null],
	[<tfctech:metal/brass_rod>,<ore:blockGlass>,<tfctech:metal/brass_rod>],
	[null,<tfc:metal/sheet/brass>,null]]);	

//Assembly System
	#controller
	recipes.remove(<pneumaticcraft:assembly_controller>);
	recipes.addShaped(<pneumaticcraft:assembly_controller>,[
	    [null,<immersiveengineering:material:27>,<tis3d:module_display>],
	    [null,<ore:stickSteel>,null],
	    [<pneumaticcraft:pressure_tube>,<ore:sheetDoubleSteel>,<pneumaticcraft:air_canister>]]);
	#IO Unit
	recipes.remove(<pneumaticcraft:assembly_io_unit>);
	recipes.addShaped(<pneumaticcraft:assembly_io_unit>,[
	    [<immersiveengineering:material:27>,<pneumaticcraft:pneumatic_cylinder>,<ore:tongsWroughtIron>],
	    [<pneumaticcraft:pneumatic_cylinder>,<ore:stickSteel>,null],
	    [<pneumaticcraft:air_canister>,<ore:sheetDoubleSteel>,<pneumaticcraft:pressure_tube>]]);
	#Platform
	recipes.remove(<pneumaticcraft:assembly_platform>);
	recipes.addShaped(<pneumaticcraft:assembly_platform>,[
	    [<pneumaticcraft:pneumatic_cylinder>,null,<pneumaticcraft:pneumatic_cylinder>],
	    [<ore:stickSteel>,<pneumaticcraft:plastic:14>,<ore:stickSteel>],
	    [<pneumaticcraft:air_canister>,<ore:sheetDoubleSteel>,<pneumaticcraft:pressure_tube>]]);
	#Drill Unit
	recipes.remove(<pneumaticcraft:assembly_drill>);
	recipes.addShaped(<pneumaticcraft:assembly_drill>,[
	    [<immersiveengineering:material:27>,<pneumaticcraft:pneumatic_cylinder>,<mystgears:drill>],
	    [<pneumaticcraft:pneumatic_cylinder>,<ore:stickSteel>,null],
	    [<pneumaticcraft:air_canister>,<ore:sheetDoubleSteel>,<pneumaticcraft:pressure_tube>]]);
	#Laser Unit
	recipes.remove(<pneumaticcraft:assembly_laser>);
	recipes.addShaped(<pneumaticcraft:assembly_laser>,[
	    [<immersiveengineering:material:27>,<pneumaticcraft:pneumatic_cylinder>,<embers:ember_emitter>],
	    [<pneumaticcraft:pneumatic_cylinder>,<ore:stickSteel>,null],
	    [<pneumaticcraft:air_canister>,<ore:sheetDoubleSteel>,<pneumaticcraft:pressure_tube>]]);		