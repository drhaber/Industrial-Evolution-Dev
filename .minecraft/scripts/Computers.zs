import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.tfctech.WireDrawing;


//Ink
recipes.remove(<opencomputers:material:26>);
recipes.addShaped(<opencomputers:material:26>,[
	[<emergingtechnology:nozzleprecise>,null,<emergingtechnology:nozzleprecise>],
	[<tfc:metal/sheet/bismuth>,<embers:pipe>,<tfc:metal/sheet/bismuth>],
	[<minecraft:piston>,<forestry:can>,<minecraft:piston>]]);
//Analyzer
recipes.remove(<opencomputers:tool>);
recipes.addShaped(<opencomputers:tool>,[
	[<rsgauges:flatgauge3>],
	[<opencomputers:component:3>],
	[<opencomputers:material:16>]]);
//Texture Picker
recipes.remove(<opencomputers:tool:3>);
recipes.addShaped(<opencomputers:tool:3>,[
	[<tis3d:prism>],
	[<opencomputers:component:3>],
	[<opencomputers:material:16>]]);
//Remote Terminal
recipes.remove(<opencomputers:tool:2>);
recipes.addShaped(<opencomputers:tool:2>,[
	[null,<openscreens:backflatscreen1>,<minecraft:end_rod>],
	[<opencomputers:material:9>,<pneumaticcraft:unassembled_pcb>,<forestry:thermionic_tubes:12>],
	[<forestry:soldering_iron>.reuse(),<opencomputers:keyboard>,null]]);
//MicroController Cases
recipes.remove(<opencomputers:material:20>);
recipes.addShaped(<opencomputers:material:20>,[
	[<tfctech:metal/gold_rackwheel_piece>,<immersiveengineering:material:27>,<tfctech:metal/gold_rackwheel_piece>],
	[<opencomputers:material:4>,<contenttweaker:wooden_glass_casing>,<opencomputers:material:4>],
	[<tfctech:metal/gold_rackwheel_piece>,<immersiveengineering:material:27>,<tfctech:metal/gold_rackwheel_piece>]]);
recipes.remove(<opencomputers:material:21>);
recipes.addShaped(<opencomputers:material:21>,[
	[<tfctech:metal/mithril_rackwheel_piece>,<opencomputers:material:8>,<tfctech:metal/mithril_rackwheel_piece>],
	[<pneumaticcraft:printed_circuit_board>,<contenttweaker:wooden_glass_casing>,<pneumaticcraft:printed_circuit_board>],
	[<tfctech:metal/mithril_rackwheel_piece>,<opencomputers:material:8>,<tfctech:metal/mithril_rackwheel_piece>]]);	
//Drones
recipes.remove(<opencomputers:material:23>);
recipes.addShaped(<opencomputers:material:23>,[
	[<mysticalmechanics:gear_fan>,<minecraft:compass>,<mysticalmechanics:gear_fan>],
	[<opencomputers:component:7>,<opencomputers:material:20>,<opencomputers:material:10>],
	[<mysticalmechanics:gear_fan>,<opencomputers:material:11>,<mysticalmechanics:gear_fan>]]);
recipes.remove(<opencomputers:material:24>);
recipes.addShaped(<opencomputers:material:24>,[
	[<libvulpes:productfan:6>,<minecraft:compass>,<libvulpes:productfan:6>],
	[<opencomputers:component:9>,<opencomputers:material:21>,<opencomputers:material:10>],
	[<libvulpes:productfan:6>,<opencomputers:material:11>,<libvulpes:productfan:6>]]);	
//Grog
recipes.remove(<opencomputers:material:1>);
mods.inspirations.Cauldron.addFluidRecipe(<opencomputers:material:1>,<contenttweaker:pitcher>,<liquid:grog>, 1, true);
mods.inspirations.Cauldron.addFluidTransform(<liquid:grog>,<minecraft:chorus_fruit>,<liquid:methanol>, 1, true);
//Disassembler Doesn't work?
mods.jei.JEI.removeAndHide(<opencomputers:disassembler>);
//Chipped Diamond
recipes.remove(<opencomputers:material:29>);
//Book
recipes.remove(<opencomputers:tool:4>);
recipes.addShapeless(<opencomputers:tool:4>,[<minecraft:book>,<opencomputers:material:6>]);
//Wrench
recipes.remove(<opencomputers:wrench>);
recipes.addShaped(<opencomputers:wrench>,[
	[<contenttweaker:ironwrenchhead>,null,null],
	[null,<tfctech:metal/copper_strip>,null],
	[null,null,<tfctech:metal/wrought_iron_rod>]]);
//End Stone
mods.jei.JEI.removeAndHide(<opencomputers:endstone>);
//Platter
recipes.remove(<opencomputers:material:12>);
RollingMachine.addShaped(<opencomputers:material:12>, [[<tfctech:metal/steel_sleeve>]], 300);
//Wire Cutter
recipes.remove(<opencomputers:material>);
recipes.addShaped(<opencomputers:material>*4,[
	[<minecraft:stick>,<tfctech:metal/tin_wire>,<minecraft:stick>]]);
recipes.addShaped(<opencomputers:material>*4,[
	[<minecraft:stick>,<tfctech:metal/zinc_wire>,<minecraft:stick>]]);	
//Chamelium
recipes.remove(<opencomputers:material:28>);
recipes.addShaped(<opencomputers:material:28>*16,[
	[<tfctech:powder/wood>,<minecraft:rotten_flesh>,<tfctech:powder/wood>],
	[<minecraft:rotten_flesh>,<openlights:prismaticpaste>,<minecraft:rotten_flesh>],
	[<tfctech:powder/wood>,<minecraft:rotten_flesh>,<tfctech:powder/wood>]]);	
//Data Cable
recipes.remove(<opencomputers:cable>);
recipes.addShaped(<opencomputers:cable>,[
	[null,<tfc:metal/nugget/gold>,null],
	[<tfc:metal/nugget/gold>,<projectred-transmission:framed_wire:17>,<tfc:metal/nugget/gold>],
	[null,<tfc:metal/nugget/gold>,null]]);	
//Hover boots
recipes.remove(<opencomputers:hoverboots>);
recipes.addShaped(<opencomputers:hoverboots>,[
	[<opencomputers:material:11>,<opencomputers:upgrade:28>,<opencomputers:material:10>],
	[<projectred-core:resource_item:410>,<immersiveengineering:metal_device0>,<projectred-core:resource_item:410>],
	[<mysticalmechanics:gear_fan>,<minecraft:leather_boots>,<mysticalmechanics:gear_fan>]]);
//Open Lights
recipes.remove(<openlights:prismaticpaste>);
recipes.addShaped(<openlights:prismaticpaste>,[
	[<ore:projredIllumar>,<ore:projredIllumar>,<ore:projredIllumar>],
	[<ore:projredIllumar>,<tis3d:prism>,<ore:projredIllumar>],
	[<ore:projredIllumar>,<ore:projredIllumar>,<ore:projredIllumar>]]);

recipes.remove(<openlights:openlight>);
recipes.addShaped(<openlights:openlight>,[
	[<ore:paneGlass>,<ore:paneGlass>,<ore:paneGlass>],
	[<ore:paneGlass>,<openlights:prismaticpaste>,<ore:paneGlass>],
	[<ore:paneGlass>,<opencomputers:cable>,<ore:paneGlass>]]);
//Etching Acid
mods.immersiveengineering.Refinery.addRecipe(<liquid:etchacid>*25, <liquid:liquidchorus>*10, <liquid:sulfuric_acid>*15, 1024);	
//Circuit Boards
WireDrawing.addRecipe("glass_wire", <ore:blockGlass>, 3, <contenttweaker:glass_wire>*16, 0xFFFF9966);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:glass_wire>*24, <ore:blockGlass>, <immersiveengineering:mold:4>, 1024);

mods.terrafirmacraft.Loom.addRecipe("glass_fibre", <contenttweaker:glass_wire>*24,<contenttweaker:glass_fibre>*6, 12, "minecraft:textures/blocks/wool_colored_brown.png"); 
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:glass_fibre>, <contenttweaker:glass_wire>, <immersiveengineering:mold>, 1024,4);

recipes.remove(<opencomputers:material:2>);
furnace.remove(<opencomputers:material:3>);
recipes.remove(<opencomputers:material:4>);
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);


recipes.addShaped(<opencomputers:material:2>*3,[
	[<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>],
	[<ore:slimeballGreen>,<ore:slimeballGreen>,<ore:slimeballGreen>],
	[<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>,<contenttweaker:glass_fibre>]]);
RollingMachine.addShaped(<opencomputers:material:3>, [[<opencomputers:material:2>]], 300);
RollingMachine.addShaped(<pneumaticcraft:empty_pcb:100>, [[<tfctech:metal/copper_strip>],[<opencomputers:material:3>]], 300);

mods.immersiveengineering.Blueprint.addRecipe("components", <pneumaticcraft:pcb_blueprint>, [<immersiveengineering:tool:1>,<pneumaticcraft:plastic:4>]);

mods.appliedenergistics2.Inscriber.addRecipe(<opencomputers:material:4>, <opencomputers:material:3>, true,<contenttweaker:mold_circuit>);
recipes.addShapeless(<opencomputers:material:4>, [<opencomputers:material:3>,<ore:chisel>.transformDamage(8)]);

val UPCB = <pneumaticcraft:unassembled_pcb>;
//Transistor
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);

recipes.remove(<opencomputers:material:6>);
recipes.addShaped(<opencomputers:material:6>,[
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>],
	[null,<ore:waferSilicon>,null],
	[null,<minecraft:redstone>,null]]);
//Capacitor	
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);

recipes.addShaped(<pneumaticcraft:capacitor>,[
	[null,<ore:plasticBlue>,null],
	[<ore:paper>,<minecraft:redstone>,<ore:paper>],
	[<ore:wireTin>,null,<ore:wireTin>]]);

//Wafer Circuit
recipes.addShaped(<advancedrocketry:itemcircuitplate>,[
	[null,<projectred-integration:gate:4>,null],
	[<projectred-integration:gate:4>,<projectred-core:resource_item:301>,<projectred-integration:gate:4>],
	[null,<projectred-integration:gate:4>,null]]); #Basic
recipes.addShaped(<advancedrocketry:itemcircuitplate:1>,[
	[<projectred-integration:gate:4>,<projectred-integration:gate:9>,<projectred-integration:gate:4>],
	[<projectred-integration:gate:8>,<projectred-core:resource_item:301>,<projectred-integration:gate:6>],
	[<projectred-integration:gate:4>,<projectred-integration:gate:20>,<projectred-integration:gate:4>]]);#Advanced
//Micro Chips
recipes.remove(<opencomputers:material:7>); #1
recipes.addShaped(<opencomputers:material:7>,[
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>],
	[<minecraft:redstone>,<advancedrocketry:itemcircuitplate>,<minecraft:redstone>],
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>]]);

recipes.remove(<opencomputers:material:8>); #2
recipes.addShaped(<opencomputers:material:8>,[
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>],
	[<opencomputers:material:7>,<advancedrocketry:itemcircuitplate:1>,<opencomputers:material:7>],
	[<ore:wireTin>,<ore:stripTin>,<ore:wireTin>]]);

recipes.remove(<opencomputers:material:9>); #3
recipes.addShaped(<opencomputers:material:9>,[
	[<ore:wireTin>,<ore:wireTin>,<ore:wireTin>],
	[<opencomputers:material:8>,<appliedenergistics2:material:22>,<opencomputers:material:8>],
	[<ore:wireTin>,<ore:wireTin>,<ore:wireTin>]]);

//Integrated Circuits

recipes.addShaped(<advancedrocketry:ic>,[
	[<opencomputers:material:6>,<advancedrocketry:itemcircuitplate>,<opencomputers:material:6>],
	[<opencomputers:material:6>,<libvulpes:productplate:3>,<opencomputers:material:6>],
	[<opencomputers:material:6>,<opencomputers:material:7>,<opencomputers:material:6>]]);

recipes.addShaped(<advancedrocketry:ic:2>,[
	[<opencomputers:material:6>,<advancedrocketry:itemcircuitplate:1>,<opencomputers:material:6>],
	[<opencomputers:material:6>,<libvulpes:productplate:3>,<opencomputers:material:6>],
	[<opencomputers:material:6>,<opencomputers:material:9>,<opencomputers:material:6>]]);

//RAM
recipes.remove(<opencomputers:component:6>); #Teir 1
recipes.addShaped(<opencomputers:component:6>,[
	[<opencomputers:material:7>,null,<tfctech:metal/gold_strip>],
	[null,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:7>,<forestry:soldering_iron>.reuse(),<tfctech:metal/gold_strip>]]);
recipes.remove(<opencomputers:component:7>); #Teir 1.5
recipes.addShaped(<opencomputers:component:7>,[
	[<opencomputers:material:7>,null,<tfctech:metal/gold_strip>],
	[<opencomputers:material:7>,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:7>,<forestry:soldering_iron>.reuse(),<tfctech:metal/gold_strip>]]);

recipes.remove(<opencomputers:component:8>); #Teir 2
recipes.addShaped(<opencomputers:component:8>,[
	[<opencomputers:material:8>,null,<tfctech:metal/gold_strip>],
	[null,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:8>,<forestry:soldering_iron>.reuse(),<tfctech:metal/gold_strip>]]);
recipes.remove(<opencomputers:component:9>); #Teir 2.5
recipes.addShaped(<opencomputers:component:9>,[
	[<opencomputers:material:8>,null,<tfctech:metal/gold_strip>],
	[<opencomputers:material:8>,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:8>,<forestry:soldering_iron>.reuse(),<tfctech:metal/gold_strip>]]);

recipes.remove(<opencomputers:component:10>); #Teir 3
recipes.addShaped(<opencomputers:component:10>,[
	[<opencomputers:material:9>,null,<tfctech:metal/gold_strip>],
	[null,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:9>,<forestry:soldering_iron>.reuse(),<tfctech:metal/gold_strip>]]);
recipes.remove(<opencomputers:component:11>); #Teir 3.5
recipes.addShaped(<opencomputers:component:11>,[
	[<opencomputers:material:9>,null,<tfctech:metal/gold_strip>],
	[<opencomputers:material:9>,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:9>,<forestry:soldering_iron>.reuse(),<tfctech:metal/gold_strip>]]);

//Cards and Expansions items

recipes.remove(<opencomputers:material:5>); #Card Base
recipes.addShaped(<opencomputers:material:5>,[
	[<tfctech:metal/wrought_iron_rackwheel_piece>,null,null],
	[<tfctech:metal/wrought_iron_rod>,<pneumaticcraft:printed_circuit_board>,null],
	[<tfctech:metal/gold_strip>,<tfctech:metal/gold_strip>,<tfctech:metal/gold_strip>]]);

//Bus

recipes.remove(<opencomputers:component:3>);
recipes.addShaped(<opencomputers:component:3>,[
	[<opencomputers:material:7>,<opencomputers:material:3>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:11>,<pneumaticcraft:printed_circuit_board>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:7>,<opencomputers:material:3>,<tfctech:metal/gold_strip>]]);

recipes.remove(<opencomputers:component:4>);
recipes.addShaped(<opencomputers:component:4>,[
	[<opencomputers:component:8>,<opencomputers:material:3>,<tfctech:metal/gold_strip>],
	[<opencomputers:component:3>,<pneumaticcraft:printed_circuit_board>,<tfctech:metal/gold_strip>],
	[<opencomputers:component:8>,<opencomputers:material:3>,<tfctech:metal/gold_strip>]]);

recipes.remove(<opencomputers:component:5>);
recipes.addShaped(<opencomputers:component:5>,[
	[<opencomputers:component:10>,<opencomputers:material:3>,<tfctech:metal/gold_strip>],
	[<opencomputers:component:4>,<pneumaticcraft:printed_circuit_board>,<tfctech:metal/gold_strip>],
	[<opencomputers:component:10>,<opencomputers:material:3>,<tfctech:metal/gold_strip>]]);

//Hard Disks

recipes.remove(<opencomputers:storage:2>); #Teir 1
recipes.addShaped(<opencomputers:storage:2>,[
	[null,<tfc:metal/sheet/black_bronze>,null],
	[null,<opencomputers:material:12>,null],
	[<pneumaticcraft:printed_circuit_board>,<minecraft:sticky_piston>,<opencomputers:material:7>]]);

recipes.remove(<opencomputers:storage:3>); #Teir 2
recipes.addShaped(<opencomputers:storage:3>,[
	[null,<tfc:metal/sheet/gold>,null],
	[<opencomputers:material:12>,<opencomputers:material:12>,<opencomputers:material:12>],
	[<pneumaticcraft:printed_circuit_board>,<minecraft:sticky_piston>,<opencomputers:material:7>]]);

recipes.remove(<opencomputers:storage:4>); #Teir 3
recipes.addShaped(<opencomputers:storage:4>,[
	[<opencomputers:material:12>,<tfc:metal/sheet/mithril>,<opencomputers:material:12>],
	[<opencomputers:material:12>,<opencomputers:material:12>,<opencomputers:material:12>],
	[<pneumaticcraft:printed_circuit_board>,<minecraft:sticky_piston>,<opencomputers:material:7>]]);

//Disk Drives

recipes.remove(<opencomputers:component:20>);
recipes.addShaped(<opencomputers:component:20>,[
	[<forestry:soldering_iron>.reuse(),<opencomputers:material:7>,null],
	[<tfctech:metal/tin_wire>,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/tin_wire>],
	[<railcraft:charge>,<tfctech:metal/wrought_iron_strip>,<tfctech:metal/tin_wire>]]);

recipes.remove(<opencomputers:diskdrive>);
recipes.addShaped(<opencomputers:diskdrive>,[
	[<tfctech:metal/black_bronze_long_rod>,<tfc:metal/sheet/black_bronze>,<tfctech:metal/black_bronze_long_rod>],
	[<tfc:metal/sheet/black_bronze>,<opencomputers:component:20>,<tfc:metal/sheet/black_bronze>],
	[<rsgauges:indicator1>,<projectred-transmission:wire:17>,<tfctech:metal/black_bronze_long_rod>]]);

//Floppy
recipes.remove(<opencomputers:storage:1>);
recipes.addShaped(<opencomputers:storage:1>,[
	[<tfctech:metal/tin_strip>],
	[<pneumaticcraft:plastic>],
	[<minecraft:paper>]]);

//EEPROM
recipes.removeShaped(<opencomputers:storage>);
recipes.addShaped(<opencomputers:storage>,[
	[<tfctech:metal/gold_strip>],
	[<advancedrocketry:itemcircuitplate:1>],
	[<pneumaticcraft:plastic:2>]]);

//Printed Circuit Board
recipes.remove(<pneumaticcraft:printed_circuit_board>); #Assembled CIrcuit Board
recipes.addShaped(<pneumaticcraft:printed_circuit_board>,[
	[<tfctech:metal/copper_wire>,<opencomputers:material:6>,<pneumaticcraft:capacitor>],
	[<opencomputers:material:6>,<opencomputers:material:7>,<tfctech:metal/copper_wire>],
	[<pneumaticcraft:capacitor>,UPCB,<forestry:soldering_iron>.reuse()]]);

//Control Unit
recipes.remove(<opencomputers:material:11>);
recipes.addShaped(<opencomputers:material:11>,[
	[<opencomputers:material:7>,<advancedrocketry:itemcircuitplate>,<opencomputers:material:7>],
	[<opencomputers:material:6>,<minecraft:clock>,<opencomputers:material:6>],
	[<opencomputers:material:7>,<advancedrocketry:itemcircuitplate>,<opencomputers:material:7>]]);

//Primitive Circuits
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);
recipes.addShaped(<immersiveengineering:material:27>,[
	[<tfctech:metal/copper_wire>,<tfctech:metal/gold_wire>,<immersiveengineering:material:26>],
	[<immersiveengineering:material:26>,<opencomputers:material:4>,<tfctech:metal/copper_wire>],
	[<tfctech:metal/gold_wire>,<tfctech:metal/red_alloy_wire>,<forestry:soldering_iron>.reuse()]]);

//ALU
recipes.remove(<opencomputers:material:10>);
recipes.addShaped(<opencomputers:material:10>,[
	[<opencomputers:material:7>,<minecraft:redstone>,<opencomputers:material:7>],
	[<opencomputers:material:6>,<advancedrocketry:itemcircuitplate:1>,<opencomputers:material:6>],
	[<opencomputers:material:7>,<minecraft:redstone>,<opencomputers:material:7>]]);

//Screens
recipes.remove(<opencomputers:screen1>);
recipes.addShaped(<opencomputers:screen1>,[
	[<tfctech:metal/black_bronze_long_rod>,<pneumaticcraft:heat_sink>,<tfctech:metal/black_bronze_long_rod>],
	[<minecraft:iron_bars>,<minecraft:redstone_lamp>,<minecraft:glass_pane>],
	[<tfctech:metal/black_bronze_long_rod>,<opencomputers:cable>,<tfctech:metal/black_bronze_long_rod>]]);

recipes.remove(<opencomputers:screen2>);
recipes.addShaped(<opencomputers:screen2>,[
	[<tfctech:metal/gold_long_rod>,<pneumaticcraft:heat_sink>,<tfctech:metal/gold_long_rod>],
	[<minecraft:iron_bars>,<tis3d:prism>,<minecraft:glass_pane>],
	[<tfctech:metal/gold_long_rod>,<opencomputers:cable>,<tfctech:metal/gold_long_rod>]]);

recipes.remove(<opencomputers:screen3>);
recipes.addShaped(<opencomputers:screen3>,[
	[<tfctech:metal/mithril_long_rod>,<pneumaticcraft:heat_sink>,<tfctech:metal/mithril_long_rod>],
	[<minecraft:iron_bars>,<openlights:prismaticpaste>,<minecraft:glass_pane>],
	[<tfctech:metal/mithril_long_rod>,<opencomputers:cable>,<tfctech:metal/mithril_long_rod>]]);	

recipes.remove(<openscreens:backflatscreen1>);
RollingMachine.addShaped(<openscreens:backflatscreen1>, [[<opencomputers:screen1>]], 300);
recipes.remove(<openscreens:backflatscreen2>);
RollingMachine.addShaped(<openscreens:backflatscreen2>, [[<opencomputers:screen2>]], 300);
recipes.remove(<openscreens:backflatscreen3>);
RollingMachine.addShaped(<openscreens:backflatscreen3>, [[<opencomputers:screen3>]], 300);

recipes.remove(<openscreens:frontflatscreen1>);
recipes.addShapeless(<openscreens:frontflatscreen1>,[<openscreens:backflatscreen1>, <ore:crookAny>.transformDamage(1)]);
recipes.remove(<openscreens:frontflatscreen2>);
recipes.addShapeless(<openscreens:frontflatscreen2>,[<openscreens:backflatscreen2>, <ore:crookAny>.transformDamage(1)]);
recipes.remove(<openscreens:frontflatscreen3>);
recipes.addShapeless(<openscreens:frontflatscreen3>,[<openscreens:backflatscreen3>, <ore:crookAny>.transformDamage(1)]);

recipes.remove(<openscreens:holoscreen1>);
recipes.addShaped(<openscreens:holoscreen1>,[
	[<advancedrocketry:lens>,<advancedrocketry:lens>,<advancedrocketry:lens>],
	[<tfctech:metal/black_bronze_strip>,<immersiveengineering:fluorescent_tube>,<tfctech:metal/black_bronze_strip>],
	[<tfc:metal/double_ingot/black_bronze>,<aunis:circuit_control_crystal>,<tfc:metal/double_ingot/black_bronze>]]);

recipes.remove(<openscreens:holoscreen2>);
recipes.addShaped(<openscreens:holoscreen2>,[
	[<advancedrocketry:lens>,<advancedrocketry:lens>,<advancedrocketry:lens>],
	[<tfctech:metal/gold_strip>,<immersiveengineering:fluorescent_tube>,<tfctech:metal/gold_strip>],
	[<tfc:metal/double_ingot/gold>,<aunis:circuit_control_crystal>,<tfc:metal/double_ingot/gold>]]);

recipes.remove(<openscreens:holoscreen3>);
recipes.addShaped(<openscreens:holoscreen3>,[
	[<advancedrocketry:lens>,<advancedrocketry:lens>,<advancedrocketry:lens>],
	[<tfctech:metal/mithril_strip>,<immersiveengineering:fluorescent_tube>,<tfctech:metal/mithril_strip>],
	[<tfc:metal/double_ingot/mithril>,<aunis:circuit_control_crystal>,<tfc:metal/double_ingot/mithril>]]);

//Holo Projector 	
recipes.remove(<opencomputers:hologram1>);
recipes.addShaped(<opencomputers:hologram1>,[
	[<tfctech:metal/bismuth_bronze_strip>,null,<tfctech:metal/bismuth_bronze_strip>],
	[<cfm:mirror>,<advancedrocketry:blocklens>,<cfm:mirror>],
	[<tfc:metal/double_ingot/black_bronze>,<immersiveengineering:metal_device1:9>,<tfc:metal/double_ingot/black_bronze>]]);

recipes.remove(<opencomputers:hologram2>);
recipes.addShaped(<opencomputers:hologram2>,[
	[<tfctech:metal/mithril_strip>,<advancedrocketry:blocklens>,<tfctech:metal/mithril_strip>],
	[<cfm:mirror>,<tis3d:prism>,<cfm:mirror>],
	[<tfc:metal/double_ingot/black_bronze>,<immersiveengineering:metal_device1:9>,<tfc:metal/double_ingot/black_bronze>]]);	
//Cases

recipes.remove(<opencomputers:case1>);
recipes.addShaped(<opencomputers:case1>,[
	[<tfctech:metal/black_bronze_long_rod>,<rsgauges:indicator2>,<rsgauges:indicator1>],
	[<mysticalmechanics:gear_fan>,<bibliocraft:shelf:6>,<mysticalmechanics:gear_fan>],
	[<tfctech:metal/black_bronze_long_rod>,<tfc:metal/sheet/black_bronze>,<tfctech:metal/black_bronze_long_rod>]]);

recipes.remove(<opencomputers:case2>);
recipes.addShaped(<opencomputers:case2>,[
	[<tfctech:metal/gold_long_rod>,<rsgauges:indicator2>,<rsgauges:indicator1>],
	[<mysticalmechanics:gear_fan>,<ore:tfcChest>,<mysticalmechanics:gear_fan>],
	[<tfctech:metal/gold_long_rod>,<tfc:metal/sheet/gold>,<tfctech:metal/gold_long_rod>]]);

recipes.remove(<opencomputers:case3>);
recipes.addShaped(<opencomputers:case3>,[
	[<tfctech:metal/mithril_long_rod>,<rsgauges:indicator2>,<rsgauges:indicator1>],
	[<mysticalmechanics:gear_fan>,<appliedenergistics2:sky_stone_chest>,<mysticalmechanics:gear_fan>],
	[<tfctech:metal/mithril_long_rod>,<tfc:metal/sheet/mithril>,<tfctech:metal/mithril_long_rod>]]);	

//Servers

recipes.remove(<opencomputers:component:13>);
recipes.addShaped(<opencomputers:component:13>,[
	[<forestry:soldering_iron>.reuse(),<pneumaticcraft:unassembled_pcb>,<pneumaticcraft:plastic>],
	[<tfctech:metal/tin_sleeve>,<tfctech:metal/tin_sleeve>,<pneumaticcraft:plastic>],
	[<ore:tfcChest>,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/wrought_iron_strip>]]);

recipes.remove(<opencomputers:component:14>);
recipes.addShaped(<opencomputers:component:14>,[
	[<forestry:soldering_iron>.reuse(),<pneumaticcraft:unassembled_pcb>,<pneumaticcraft:plastic>],
	[<tfctech:metal/brass_sleeve>,<tfctech:metal/brass_sleeve>,<pneumaticcraft:plastic>],
	[<ore:chestVanilla>,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/gold_strip>]]);

recipes.remove(<opencomputers:component:15>);
recipes.addShaped(<opencomputers:component:15>,[
	[<forestry:soldering_iron>.reuse(),<pneumaticcraft:unassembled_pcb>,<pneumaticcraft:plastic>],
	[<tfctech:metal/steel_sleeve>,<tfctech:metal/steel_sleeve>,<pneumaticcraft:plastic>],
	[<appliedenergistics2:sky_stone_chest>,<pneumaticcraft:unassembled_pcb>,<tfctech:metal/mithril_strip>]]);	

//CPUS

recipes.remove(<opencomputers:component>);
recipes.addShaped(<opencomputers:component>,[
	[<tfctech:metal/wrought_iron_strip>,<opencomputers:material:11>,<tfctech:metal/wrought_iron_strip>],
	[<opencomputers:material:7>,<projectred-core:resource_item:301>,<opencomputers:material:7>],
	[<tfctech:metal/wrought_iron_strip>,<opencomputers:material:10>,<tfctech:metal/wrought_iron_strip>]]);

recipes.remove(<opencomputers:component:1>);
recipes.addShaped(<opencomputers:component:1>,[
	[<tfctech:metal/gold_strip>,<opencomputers:material:11>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:8>,<projectred-core:resource_item:301>,<opencomputers:material:8>],
	[<tfctech:metal/gold_strip>,<opencomputers:material:10>,<tfctech:metal/gold_strip>]]);

recipes.remove(<opencomputers:component:2>);
recipes.addShaped(<opencomputers:component:2>,[
	[<tfctech:metal/mithril_strip>,<opencomputers:component:1>,<tfctech:metal/mithril_strip>],
	[<opencomputers:material:9>,<projectred-core:resource_item:301>,<opencomputers:material:9>],
	[<tfctech:metal/mithril_strip>,<opencomputers:component:1>,<tfctech:metal/mithril_strip>]]);

//APU

recipes.remove(<opencomputers:component:16>);
recipes.addShaped(<opencomputers:component:16>,[
	[<tfctech:metal/gold_strip>,<opencomputers:component:1>,<tfctech:metal/gold_strip>],
	[<opencomputers:material:8>,<opencomputers:component:3>,<opencomputers:material:8>],
	[<tfctech:metal/gold_strip>,<opencomputers:card:1>,<tfctech:metal/gold_strip>]]);

recipes.remove(<opencomputers:component:17>);
recipes.addShaped(<opencomputers:component:17>,[
	[<tfctech:metal/mithril_strip>,<opencomputers:component:2>,<tfctech:metal/mithril_strip>],
	[<opencomputers:material:9>,<opencomputers:component:4>,<opencomputers:material:9>],
	[<tfctech:metal/mithril_strip>,<opencomputers:card:2>,<tfctech:metal/mithril_strip>]]);

//GPU

recipes.remove(<opencomputers:card:1>);
recipes.addShaped(<opencomputers:card:1>,[
	[<forestry:soldering_iron>.reuse(),<ore:dyeBlack>,null],
	[<opencomputers:material:7>,<opencomputers:material:10>,<opencomputers:component:6>],
	[null,<opencomputers:material:5>,null]]);

recipes.remove(<opencomputers:card:2>);
recipes.addShaped(<opencomputers:card:2>,[
	[<forestry:soldering_iron>.reuse(),<tis3d:prism>,null],
	[<opencomputers:material:8>,<opencomputers:component>,<opencomputers:component:8>],
	[null,<opencomputers:material:5>,null]]);

recipes.remove(<opencomputers:card:3>);
recipes.addShaped(<opencomputers:card:3>,[
	[<forestry:soldering_iron>.reuse(),<openlights:prismaticpaste>,null],
	[<opencomputers:material:9>,<opencomputers:component:1>,<opencomputers:component:10>],
	[null,<opencomputers:material:5>,null]]);	

//Data Cards

recipes.remove(<opencomputers:card:10>);
recipes.addShaped(<opencomputers:card:10>,[
	[<opencomputers:material:7>,<tfctech:metal/tin_wire>,null],
	[<tfctech:metal/tin_wire>,<opencomputers:material:10>,<forestry:soldering_iron>.reuse()],
	[null,<opencomputers:material:5>,null]]);

recipes.remove(<opencomputers:card:11>);
recipes.addShaped(<opencomputers:card:11>,[
	[<opencomputers:material:8>,<tfctech:metal/tin_wire>,<forestry:thermionic_tubes:7>],
	[<tfctech:metal/tin_wire>,<opencomputers:material:10>,<forestry:soldering_iron>.reuse()],
	[null,<opencomputers:material:5>,null]]);

recipes.remove(<opencomputers:card:12>);
recipes.addShaped(<opencomputers:card:12>,[
	[<opencomputers:material:9>,<tfctech:metal/tin_wire>,<forestry:thermionic_tubes:5>],
	[<tfctech:metal/tin_wire>,<opencomputers:material:10>,<forestry:soldering_iron>.reuse()],
	[null,<opencomputers:material:5>,null]]);	

//Remote & Network Componets

recipes.remove(<opencomputers:component:19>); #Server Terminal
recipes.addShaped(<opencomputers:component:19>,[
	[<forestry:soldering_iron>.reuse(),<pneumaticcraft:unassembled_pcb>,<minecraft:end_rod>],
	[<forestry:thermionic_tubes:12>,<forestry:thermionic_tubes:12>,<forestry:thermionic_tubes:12>],
	[<opencomputers:keyboard>,<pneumaticcraft:unassembled_pcb>,<tis3d:module_display>]]);

recipes.remove(<opencomputers:upgrade:31>); #Wireless Network Card
recipes.addShaped(<opencomputers:upgrade:31>,[
	[<forestry:soldering_iron>.reuse(),<forestry:thermionic_tubes:12>,<minecraft:end_rod>],
	[null,<opencomputers:material:5>,null]]);

recipes.remove(<opencomputers:card:7>); #Wireless Network Card 2
recipes.addShaped(<opencomputers:card:7>,[
	[<forestry:soldering_iron>.reuse(),null,<minecraft:end_rod>],
	[<forestry:thermionic_tubes:12>,<forestry:thermionic_tubes:12>,<forestry:thermionic_tubes:12>],
	[null,<opencomputers:material:5>,null]]);

recipes.remove(<opencomputers:card:6>); #Network Card
recipes.addShaped(<opencomputers:card:6>,[
	[<forestry:soldering_iron>.reuse(),<opencomputers:cable>],
	[null,<opencomputers:material:5>]]);

recipes.remove(<opencomputers:card:4>); #Redstone Card
recipes.addShaped(<opencomputers:card:4>,[
	[<forestry:soldering_iron>.reuse(),<minecraft:comparator>],
	[null,<opencomputers:material:5>]]);

recipes.remove(<opencomputers:card:5>); #Redstone Card 2
recipes.addShaped(<opencomputers:card:5>,[
	[<forestry:soldering_iron>.reuse(),<projectred-integration:gate:22>],
	[null,<opencomputers:material:5>]]);


recipes.remove(<opencomputers:card:8>); #Internet Card
recipes.addShaped(<opencomputers:card:8>,[
	[<minecraft:ender_pearl>,<opencomputers:material:7>,<minecraft:ender_pearl>],
	[<opencomputers:material:13>,<rsgauges:indicator3blink1>,<forestry:mailbox>],
	[<forestry:soldering_iron>.reuse(),<opencomputers:material:5>,null]]);

recipes.remove(<opencomputers:card:9>); #Linked Card
recipes.addShaped(<opencomputers:card:9>,[
	[null,<aunis:crystal_blue>,null],
	[<opencomputers:material:7>,<aunis:circuit_control_crystal>,<aunis:crystal_ender>],
	[<forestry:soldering_iron>.reuse(),<opencomputers:material:5>,null]]);

//Primitive Computer TIS-3D
recipes.removeByMod("tis3d");	
val PrimCB = <immersiveengineering:material:27>;
val CirP = <projectred-core:resource_item>;
val BundCab = <projectred-transmission:wire:17>;

recipes.addShaped(<tis3d:module_audio>,[
	[null,null,CirP],
	[<minecraft:noteblock>,PrimCB,BundCab],
	[null,null,CirP]]);

recipes.addShaped(<tis3d:module_bundled_redstone>,[
	[null,null,CirP],
	[<projectred-integration:gate:22>,PrimCB,BundCab],
	[null,null,CirP]]);

recipes.addShaped(<tis3d:module_display>,[
	[CirP,<minecraft:redstone_lamp>,PrimCB],
	[<ore:paneGlass>,<tis3d:prism>,BundCab],
	[CirP,<minecraft:redstone_lamp>,PrimCB]]);

recipes.addShaped(<tis3d:module_execution>,[
	[CirP,<minecraft:comparator>,PrimCB],
	[<ore:paneGlass>,<minecraft:ender_eye>,BundCab],
	[CirP,<minecraft:comparator>,PrimCB]]);	

recipes.addShaped(<tis3d:module_facade>*3,[
	[CirP],
	[CirP],
	[CirP]]);	

recipes.addShaped(<tis3d:module_infrared>,[
	[CirP,<minecraft:comparator>,PrimCB],
	[<minecraft:redstone_torch>,<minecraft:ender_eye>,BundCab],
	[CirP,<minecraft:comparator>,PrimCB]]);		

recipes.addShaped(<tis3d:module_keypad>,[
	[null,null,CirP],
	[<opencomputers:material:16>,PrimCB,BundCab],
	[null,null,CirP]]);	

recipes.addShaped(<tis3d:module_queue>,[
	[null,CirP,PrimCB],
	[<bibliocraft:clipboard>,PrimCB,BundCab],
	[null,CirP,PrimCB]]);	

recipes.addShaped(<tis3d:module_random>,[
	[null,CirP,PrimCB],
	[<ore:paneGlass>,<quark:redstone_randomizer>,BundCab],
	[null,CirP,PrimCB]]);	
recipes.addShaped(<tis3d:module_random>,[
	[null,CirP,PrimCB],
	[<ore:paneGlass>,<projectred-integration:gate:11>,BundCab],
	[null,CirP,PrimCB]]);	

recipes.addShaped(<tis3d:module_random_access_memory>,[
	[CirP,PrimCB,PrimCB],
	[<ore:paneGlass>,PrimCB,BundCab],
	[CirP,PrimCB,PrimCB]]);	

recipes.addShaped(<tis3d:module_read_only_memory>,[
	[CirP,<projectred-integration:gate:13>,PrimCB],
	[<ore:paneGlass>,<projectred-integration:gate:31>,BundCab],
	[CirP,<projectred-integration:gate:19>,PrimCB]]);		

recipes.addShaped(<tis3d:module_redstone>,[
	[null,null,CirP],
	[<minecraft:comparator>,PrimCB,BundCab],
	[null,null,CirP]]);	

recipes.addShaped(<tis3d:module_sequencer>,[
	[null,CirP,PrimCB],
	[<bibliocraft:clipboard>,<projectred-integration:gate:18>,BundCab],
	[null,CirP,PrimCB]]);	

recipes.addShaped(<tis3d:module_serial_port>,[
	[null,null,CirP],
	[<opencomputers:cable>,PrimCB,BundCab],
	[null,null,CirP]]);	

recipes.addShaped(<tis3d:module_stack>,[
	[CirP,<minecraft:comparator>,PrimCB],
	[<bibliocraft:bookcase:6>,<minecraft:ender_eye>,BundCab],
	[CirP,<minecraft:comparator>,PrimCB]]);		

recipes.addShaped(<tis3d:module_terminal>,[
	[CirP,<minecraft:redstone_lamp>,PrimCB],
	[<ore:paneGlass>,<tis3d:prism>,BundCab],
	[<opencomputers:keyboard>,<minecraft:writable_book>,CirP]]);		

recipes.addShaped(<tis3d:module_timer>,[
	[null,CirP,PrimCB],
	[<ore:paneGlass>,<projectred-integration:gate:17>,BundCab],
	[null,CirP,PrimCB]]);	

recipes.addShaped(<tis3d:key>,[
	[<tfctech:metal/wrought_iron_rackwheel_piece>,<tfctech:metal/wrought_iron_strip>],
	[<tfctech:metal/wrought_iron_rackwheel_piece>,<tfctech:metal/wrought_iron_strip>],
	[null,<tfc:metal/sheet/mithril>]]);

recipes.addShaped(<tis3d:prism>,[
	[<ore:dyeYellow>,<ore:dyeWhite>,<ore:dyeLightBlue>],
	[<ore:dyeLime>,<appliedenergistics2:material>,<ore:dyePurple>],
	[<ore:dyeCyan>,<ore:dyeMagenta>,<ore:dyePink>]]);

recipes.addShaped(<tis3d:casing>,[
	[<tfctech:metal/black_bronze_long_rod>,BundCab,<tfctech:metal/black_bronze_long_rod>],
	[BundCab,<projectred-transmission:framed_wire:17>,BundCab],
	[<tfctech:metal/black_bronze_long_rod>,BundCab,<tfctech:metal/black_bronze_long_rod>]]);

recipes.addShaped(<tis3d:controller>,[
	[<tfctech:metal/black_bronze_long_rod>,BundCab,<tfctech:metal/black_bronze_long_rod>],
	[BundCab,PrimCB,BundCab],
	[<tfctech:metal/black_bronze_long_rod>,BundCab,<tfctech:metal/black_bronze_long_rod>]]);
