import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;
import mods.cyclicmagic.Melter;

Melter.removeShapedRecipe("crystal", 1000);

//Sleeping Mat
recipes.remove(<cyclicmagic:sleeping_mat>);
recipes.addShaped(<cyclicmagic:sleeping_mat>,[
    [<ore:leather>,<ore:straw>]]);
recipes.addShaped(<cyclicmagic:sleeping_mat>,[
    [<ore:leather>,<ore:rawWool>]]);

//Throwing Torch
recipes.remove(<cyclicmagic:ender_torch>);
recipes.addShapeless(<cyclicmagic:ender_torch>, [<ore:torch>,<ore:slimeball>]);

//Torch Launcher
recipes.remove(<cyclicmagic:tool_torch_launcher>);
recipes.addShaped(<cyclicmagic:tool_torch_launcher>,[
	[<tfc:firestarter>,<tfctech:metal/gold_rackwheel_piece>,null],
	[<tfctech:metal/gold_rackwheel_piece>,<minecraft:bow>,null],
	[null,null,<ore:rodStone>]]);

//Packer
recipes.remove(<cyclicmagic:auto_packager>);
recipes.addShaped(<cyclicmagic:auto_packager>,[
	[<tfctech:metal/cobalt_rackwheel_piece>,<ore:workbench>,<tfctech:metal/cobalt_rackwheel_piece>],
	[<ore:workbench>,<projectred-core:resource_item:410>,<ore:workbench>],
	[<tfctech:metal/cobalt_rackwheel_piece>,<ore:workbench>,<tfctech:metal/cobalt_rackwheel_piece>]]);

//Battery    
recipes.remove(<cyclicmagic:battery>);
recipes.addShaped(<cyclicmagic:battery>,[
	[<ore:ingotBrick>,<immersiveengineering:metal_device0>,<ore:ingotBrick>],
	[<immersiveengineering:metal_device0>,<immersiveengineering:metal_device1:5>,<immersiveengineering:metal_device0>],
	[<ore:ingotBrick>,<immersiveengineering:metal_device0>,<ore:ingotBrick>]]);

//Auto Fisher
recipes.remove(<cyclicmagic:block_fishing>);
recipes.addShaped(<cyclicmagic:block_fishing>,[
	[<ore:lumber>,<tfc:crop/product/jute_net>,<ore:lumber>],
	[<tfc:crop/product/jute_net>,<minecraft:fishing_rod>,<tfc:crop/product/jute_net>],
	[<ore:lumber>,<tfc:crop/product/jute_net>,<ore:lumber>]]);


//Conveyer Belts

val IECB = <immersiveengineering:conveyor>;

recipes.remove(<cyclicmagic:plate_push_slowest>);
mods.forestry.Carpenter.addRecipe(<cyclicmagic:plate_push_slowest>,[
    [<tfc:metal/sheet/mithril>,<tfc:metal/sheet/mithril>,<tfc:metal/sheet/mithril>],
    [IECB,IECB,IECB]],600,<liquid:lubricant>*250);  

recipes.remove(<cyclicmagic:plate_push_slow>);
mods.forestry.Carpenter.addRecipe(<cyclicmagic:plate_push_slow>,[
    [<tfc:metal/sheet/manyullyn>,<tfc:metal/sheet/manyullyn>,<tfc:metal/sheet/manyullyn>],
    [IECB,IECB,IECB]],600,<liquid:lubricant>*500);   

recipes.remove(<cyclicmagic:plate_push>);
mods.forestry.Carpenter.addRecipe(<cyclicmagic:plate_push>,[
    [<tfc:metal/sheet/aluminium_brass>,<tfc:metal/sheet/aluminium_brass>,<tfc:metal/sheet/aluminium_brass>],
    [IECB,IECB,IECB]],600,<liquid:lubricant>*1000);   

recipes.remove(<cyclicmagic:plate_push_fast>);
mods.forestry.Carpenter.addRecipe(<cyclicmagic:plate_push_fast>,[
    [<tfc:metal/sheet/red_steel>,<tfc:metal/sheet/red_steel>,<tfc:metal/sheet/red_steel>],
    [IECB,IECB,IECB]],600,<liquid:lubricant>*2000);             

//Corners

recipes.remove(<cyclicmagic:plate_push_slowest_corner>);
recipes.addShapeless(<cyclicmagic:plate_push_slowest>*3, [<cyclicmagic:plate_push_slowest_corner>]);
recipes.addShaped(<cyclicmagic:plate_push_slowest_corner>,[
	[null,<cyclicmagic:plate_push_slowest>],
	[<cyclicmagic:plate_push_slowest>,<cyclicmagic:plate_push_slowest>]]);

recipes.remove(<cyclicmagic:plate_push_slow_corner>);
recipes.addShapeless(<cyclicmagic:plate_push_slow>*3, [<cyclicmagic:plate_push_slow_corner>]);
recipes.addShaped(<cyclicmagic:plate_push_slow_corner>,[
	[null,<cyclicmagic:plate_push_slow>],
	[<cyclicmagic:plate_push_slow>,<cyclicmagic:plate_push_slow>]]);

recipes.remove(<cyclicmagic:plate_push_corner>);
recipes.addShapeless(<cyclicmagic:plate_push>*3, [<cyclicmagic:plate_push_corner>]);
recipes.addShaped(<cyclicmagic:plate_push_corner>,[
	[null,<cyclicmagic:plate_push>],
	[<cyclicmagic:plate_push>,<cyclicmagic:plate_push>]]);

recipes.remove(<cyclicmagic:plate_push_fast_corner>);
recipes.addShapeless(<cyclicmagic:plate_push_fast>*3, [<cyclicmagic:plate_push_fast_corner>]);
recipes.addShaped(<cyclicmagic:plate_push_fast_corner>,[
	[null,<cyclicmagic:plate_push_fast>],
	[<cyclicmagic:plate_push_fast>,<cyclicmagic:plate_push_fast>]]);

//Ramp  

recipes.remove(<cyclicmagic:plate_push_slowest_angle>);
recipes.addShapeless(<cyclicmagic:plate_push_slowest>*2, [<cyclicmagic:plate_push_slowest_angle>]);
recipes.addShaped(<cyclicmagic:plate_push_slowest_angle>,[
	[<cyclicmagic:plate_push_slowest>,null],
	[null,<cyclicmagic:plate_push_slowest>]]);

recipes.remove(<cyclicmagic:plate_push_slow_angle>);
recipes.addShapeless(<cyclicmagic:plate_push_slow>*2, [<cyclicmagic:plate_push_slow_angle>]);
recipes.addShaped(<cyclicmagic:plate_push_slow_angle>,[
	[<cyclicmagic:plate_push_slow>,null],
	[null,<cyclicmagic:plate_push_slow>]]);

recipes.remove(<cyclicmagic:plate_push_med_angle>);
recipes.addShapeless(<cyclicmagic:plate_push>*2, [<cyclicmagic:plate_push_med_angle>]);
recipes.addShaped(<cyclicmagic:plate_push_med_angle>,[
	[<cyclicmagic:plate_push>,null],
	[null,<cyclicmagic:plate_push>]]);

recipes.remove(<cyclicmagic:plate_push_fast_angle>);
recipes.addShapeless(<cyclicmagic:plate_push_fast>*2, [<cyclicmagic:plate_push_fast_angle>]);
recipes.addShaped(<cyclicmagic:plate_push_fast_angle>,[
	[<cyclicmagic:plate_push_fast>,null],
	[null,<cyclicmagic:plate_push_fast>]]);

//Wireless Transmitter
recipes.remove(<cyclicmagic:cable_wireless>);
recipes.addShaped(<cyclicmagic:cable_wireless>,[
	[<cyclicmagic:item_pipe>,<aunis:circuit_control_crystal>,<cyclicmagic:item_pipe>],
	[<aunis:crystal_blue>,<appliedenergistics2:material:48>,<aunis:crystal_blue>],
	[<cyclicmagic:item_pipe>,<aunis:circuit_control_naquadah>,<cyclicmagic:item_pipe>]]);

recipes.remove(<cyclicmagic:cable_wireless_energy>);
recipes.addShaped(<cyclicmagic:cable_wireless_energy>,[
	[<cyclicmagic:energy_pipe>,<aunis:circuit_control_crystal>,<cyclicmagic:energy_pipe>],
	[<aunis:crystal_red>,<appliedenergistics2:material:48>,<aunis:crystal_red>],
	[<cyclicmagic:energy_pipe>,<aunis:circuit_control_naquadah>,<cyclicmagic:energy_pipe>]]);

recipes.remove(<cyclicmagic:cable_wireless_fluid>);
recipes.addShaped(<cyclicmagic:cable_wireless_fluid>,[
	[<cyclicmagic:fluid_pipe>,<aunis:circuit_control_crystal>,<cyclicmagic:fluid_pipe>],
	[<aunis:crystal_blue>,<appliedenergistics2:material:48>,<aunis:crystal_blue>],
	[<cyclicmagic:fluid_pipe>,<aunis:circuit_control_naquadah>,<cyclicmagic:fluid_pipe>]]);

//Extractors

recipes.remove(<cyclicmagic:item_pump>);
recipes.addShaped(<cyclicmagic:item_pump>,[
	[null,<cyclicmagic:item_pipe>,null],
	[<tfc:bellows>,<minecraft:hopper>,<minecraft:sticky_piston>],
	[<aunis:crystal_red>,<immersiveengineering:sheetmetal_slab:1>,<embers:winding_gears>]]);

recipes.remove(<cyclicmagic:energy_pump>);
recipes.addShaped(<cyclicmagic:energy_pump>,[
	[null,<cyclicmagic:energy_pipe>,null],
	[<tfc:bellows>,<integratedtunnels:part_interface_energy_item>,<minecraft:sticky_piston>],
	[<aunis:crystal_red>,<immersiveengineering:sheetmetal_slab:1>,<embers:winding_gears>]]);

recipes.remove(<cyclicmagic:fluid_pump>);
recipes.addShaped(<cyclicmagic:fluid_pump>,[
	[null,<cyclicmagic:fluid_pipe>,null],
	[<tfc:bellows>,<pneumaticcraft:liquid_hopper>,<minecraft:sticky_piston>],
	[<aunis:crystal_red>,<immersiveengineering:sheetmetal_slab:1>,<embers:winding_gears>]]);

//Cables

recipes.remove(<cyclicmagic:item_pipe>);
recipes.addShaped(<cyclicmagic:item_pipe>,[
	[<tfc:metal/sheet/manyullyn>,<embers:item_pipe>,<tfc:metal/sheet/manyullyn>]]);

recipes.remove(<cyclicmagic:energy_pipe>);
recipes.addShaped(<cyclicmagic:energy_pipe>,[
	[<tfc:metal/sheet/red_steel>,<railcraft:wire>,<tfc:metal/sheet/red_steel>]]);

recipes.remove(<cyclicmagic:fluid_pipe>);
recipes.addShaped(<cyclicmagic:fluid_pipe>,[
	[<tfc:metal/sheet/blue_steel>,<embers:pipe>,<tfc:metal/sheet/blue_steel>]]);

recipes.remove(<cyclicmagic:bundled_pipe>);
recipes.addShaped(<cyclicmagic:bundled_pipe>*3,[
	[<tfc:metal/double_sheet/tungsten>,<tfc:metal/double_sheet/tungsten>,<tfc:metal/double_sheet/tungsten>],
	[<cyclicmagic:item_pipe>,<cyclicmagic:energy_pipe>,<cyclicmagic:fluid_pipe>],
	[<tfc:metal/double_sheet/tungsten>,<tfc:metal/double_sheet/tungsten>,<tfc:metal/double_sheet/tungsten>]]);

//Item Sorter

recipes.remove(<cyclicmagic:item_pipe_sort>);
recipes.addShaped(<cyclicmagic:item_pipe_sort>,[
	[<cyclicmagic:item_pipe>,<tis3d:module_queue>,<cyclicmagic:item_pipe>],
	[<ore:dye>,<ore:chestVanilla>,<ore:dye>],
	[<cyclicmagic:item_pipe>,<advancedrocketry:ic:4>,<cyclicmagic:item_pipe>]]);

//INV Crafting Upgrade
recipes.remove(<cyclicmagic:crafting_food>);
recipes.addShaped(<cyclicmagic:crafting_food>,[
	[<ore:workbench>,<botania:livingwood>,<ore:workbench>],
	[<botania:livingwood>,<foodexpansion:itemcarrotpie>,<botania:livingwood>],
	[<ore:workbench>,<botania:livingwood>,<ore:workbench>]]);
