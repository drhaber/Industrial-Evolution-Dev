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
    