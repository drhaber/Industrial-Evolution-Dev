import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;
import mods.tfctech.WireDrawing;

//Super Heater
recipes.remove(<embers:superheater>);
recipes.addShaped(<embers:superheater>,[
	[<tfctech:metal/copper_wire>,<tfctech:metal/copper_wire>,<tfc:metal/ingot/rose_gold>],
	[<tfctech:metal/copper_wire>,<tfctech:metal/copper_wire>,<tfctech:metal/rose_gold_rod>],
	[<tfctech:metal/copper_wire>,<tfctech:metal/copper_wire>,<tfc:metal/ingot/rose_gold>]]);

//Circuit
recipes.remove(<embers:archaic_circuit>);
mods.appliedenergistics2.Inscriber.addRecipe(<embers:archaic_circuit>,<embers:archaic_brick>,true,<appliedenergistics2:material:19>);

//Iron Tile
recipes.remove(<soot:wrought_tile>);
recipes.addShaped(<soot:wrought_tile>,[
	[null,null,null],
	[null,<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/wrought_iron>],
	[null,<tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/wrought_iron>]]);

//Hammer
recipes.remove(<embers:tinker_hammer>);
recipes.addShaped(<embers:tinker_hammer>,[
	[<contenttweaker:bismuth_hammer_head>],
	[<ore:stickWood>]]);

//Antimony
mods.soot.AlchemicalMixer.remove(<liquid:antimony>*12);	

//Plates
val EmbersPlates =[<embers:plate_copper>,<embers:plate_lead>,<embers:plate_silver>,<embers:plate_dawnstone>,
<embers:plate_iron>,<embers:plate_gold>,<embers:plate_aluminum>,<embers:plate_bronze>,<embers:plate_electrum>,
<embers:plate_nickel>,<embers:plate_tin>] as IItemStack[];
for EP in EmbersPlates{
mods.embers.Stamper.remove(EP);
recipes.remove(EP);
}

//Archaic Brick

recipes.addShaped(<contenttweaker:unfired_archaic_lump>,[
	[<ore:dustAsh>,<ore:clayPorcelain>,<ore:dustAsh>],
	[<quark:soul_powder>,<ore:fireClay>,<quark:soul_powder>],
	[<ore:dustAsh>,<ore:clay>,<ore:dustAsh>]]);

mods.terrafirmacraft.ItemRegistry.registerItemHeat(<contenttweaker:unfired_archaic_lump>, 1, 1599, false);
mods.terrafirmacraft.ItemRegistry.registerItemHeat(<embers:archaic_brick>, 1, 1599, false);

mods.terrafirmacraft.Heating.addRecipe("archaic_brick_Kiln", <contenttweaker:unfired_archaic_lump>, <embers:archaic_brick>, 1500, 3200);

//Caminite Blend
recipes.remove(<embers:blend_caminite>);
recipes.addShaped(<embers:blend_caminite>,[
	[<ore:dustMagnesium>,<ore:dustSulfur>,<ore:dustMagnesium>],
	[<ore:dustSulfur>,<ore:fireClay>,<ore:dustSulfur>],
	[<ore:dustMagnesium>,<ore:dustSulfur>,<ore:dustMagnesium>]]);

ItemRegistry.registerItemHeat(<embers:blend_caminite>, 1, 1599, false);
ItemRegistry.registerItemHeat(<embers:brick_caminite>, 1, 1599, false);
Heating.addRecipe("caminite_brick_Kiln", <embers:blend_caminite>, <embers:brick_caminite>, 1500, 3200);

ItemRegistry.registerItemHeat(<embers:plate_caminite_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<embers:plate_caminite>, 1, 1599, false);
Heating.addRecipe("caminite_plate_Kiln", <embers:plate_caminite_raw>, <embers:plate_caminite>, 1500, 3200);

furnace.remove(<embers:brick_caminite>);
furnace.remove(<embers:plate_caminite>);

//Stamps
ItemRegistry.registerItemHeat(<embers:stamp_bar_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<embers:stamp_bar>, 1, 1599, false);
Heating.addRecipe("stamp_bar_Kiln", <embers:stamp_bar_raw>, <embers:stamp_bar>, 1500, 3200);

ItemRegistry.registerItemHeat(<embers:stamp_flat_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<embers:stamp_flat>, 1, 1599, false);
Heating.addRecipe("stamp_flat_Kiln", <embers:stamp_flat_raw>, <embers:stamp_flat>, 1500, 3200);

ItemRegistry.registerItemHeat(<embers:stamp_plate_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<embers:stamp_plate>, 1, 1599, false);
Heating.addRecipe("stamp_plate_Kiln", <embers:stamp_plate_raw>, <embers:stamp_plate>, 1500, 3200);

ItemRegistry.registerItemHeat(<embers:stamp_gear_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<embers:stamp_gear>, 1, 1599, false);
Heating.addRecipe("stamp_gear_Kiln", <embers:stamp_gear_raw>, <embers:stamp_gear>, 1500, 3200);

ItemRegistry.registerItemHeat(<soot:stamp_nugget_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<soot:stamp_nugget>, 1, 1599, false);
Heating.addRecipe("stamp_nugget_Kiln", <soot:stamp_nugget_raw>, <soot:stamp_nugget>, 1500, 3200);

ItemRegistry.registerItemHeat(<soot:stamp_text_raw>, 1, 1599, false);
ItemRegistry.registerItemHeat(<soot:stamp_text>, 1, 1599, false);
Heating.addRecipe("stamp_text_Kiln", <soot:stamp_text_raw>, <soot:stamp_text>, 1500, 3200);

furnace.remove(<embers:stamp_bar>);
furnace.remove(<embers:stamp_flat>);
furnace.remove(<embers:stamp_plate>);
furnace.remove(<embers:stamp_gear>);
furnace.remove(<soot:stamp_nugget>);
furnace.remove(<soot:stamp_text>);

//Bore
recipes.remove(<embers:ember_bore>);
recipes.addShaped(<embers:ember_bore>,[
	[<embers:stairs_caminite_brick>,<embers:mech_core>,<embers:stairs_caminite_brick>],
	[<embers:stairs_caminite_brick>,<mysticalmechanics:axle_iron>,<embers:stairs_caminite_brick>],
	[<tfc:metal/scythe_blade/wrought_iron>,<tfc:metal/scythe_blade/wrought_iron>,<tfc:metal/scythe_blade/wrought_iron>]]);

//Mechanical Core
recipes.remove(<embers:mech_core>);
recipes.addShaped(<embers:mech_core>,[
	[<tfctech:metal/black_bronze_rod>,<tfctech:metal/lead_gear>,<tfctech:metal/black_bronze_rod>],
	[<tfctech:metal/lead_gear>,null,<tfctech:metal/lead_gear>],
	[<tfctech:metal/black_bronze_rod>,<tfctech:metal/lead_gear>,<tfctech:metal/black_bronze_rod>]]);	

//Iron Axel
recipes.remove(<mysticalmechanics:axle_iron>);
recipes.addShaped(<mysticalmechanics:axle_iron>*8,[
	[null,null,<tfctech:metal/wrought_iron_rod>],
	[null,<tfctech:metal/wrought_iron_rod>,null],
	[<tfctech:metal/wrought_iron_rod>,null,null]]);

//Winding Gears
mods.embers.Alchemy.remove(<embers:winding_gears>);
recipes.addShaped(<embers:winding_gears>,[
	[<ore:gearBronze>,<ore:wireBronze>,<ore:gearBronze>],
	[<rustichromia:axle_wood>,<ore:blockSlime>,<ore:gearBronze>],
	[<ore:gearBronze>,<ore:wireBronze>,<rustichromia:axle_wood>]]);	