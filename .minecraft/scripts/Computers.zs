import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.tfctech.WireDrawing;

//Wrench
recipes.remove(<opencomputers:wrench>);
recipes.addShaped(<opencomputers:wrench>,[
	[<contenttweaker:ironwrenchhead>,null,null],
	[null,<tfctech:metal/copper_strip>,null],
	[null,null,<tfctech:metal/wrought_iron_rod>]]);
//End Stone
mods.jei.JEI.removeAndHide(<opencomputers:endstone>);
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

//Floppy
recipes.remove(<opencomputers:storage:1>);
recipes.addShaped(<opencomputers:storage:1>,[
	[<tfctech:metal/tin_strip>],
	[<pneumaticcraft:plastic>],
	[<minecraft:paper>]]);

//EEPROM
recipes.remove(<opencomputers:storage>);
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
