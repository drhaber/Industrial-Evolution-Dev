import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
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
}

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