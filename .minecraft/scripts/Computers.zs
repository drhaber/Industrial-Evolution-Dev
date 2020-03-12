import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.tfctech.WireDrawing;

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
//Primitive Circuits
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);
recipes.addShaped(<immersiveengineering:material:27>,[
	[<tfctech:metal/copper_wire>,<tfctech:metal/gold_wire>,<immersiveengineering:material:26>],
	[<immersiveengineering:material:26>,<opencomputers:material:4>,<tfctech:metal/copper_wire>],
	[<tfctech:metal/gold_wire>,<tfctech:metal/red_alloy_wire>,<forestry:soldering_iron>.transformDamage(1)]]);
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
