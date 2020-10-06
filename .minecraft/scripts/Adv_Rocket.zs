import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

mods.advancedrocketry.PlatePresser.clear();
mods.advancedrocketry.RollingMachine.clear();

//Plates
recipes.remove(<advancedrocketry:productplate:*>);

val iLogs = [<tfc:wood/log/acacia>,<tfc:wood/log/ash>,<tfc:wood/log/aspen>,<tfc:wood/log/birch>,<tfc:wood/log/blackwood>,<tfc:wood/log/chestnut>,<tfc:wood/log/douglas_fir>,<tfc:wood/log/hickory>,<tfc:wood/log/kapok>,<tfc:wood/log/maple>,<tfc:wood/log/oak>,<tfc:wood/log/palm>,<tfc:wood/log/pine>,<tfc:wood/log/rosewood>,<tfc:wood/log/sequoia>,<tfc:wood/log/spruce>,<tfc:wood/log/sycamore>,<tfc:wood/log/white_cedar>,<tfc:wood/log/willow>,<tfc:wood/log/hevea>] as IIngredient[];
val iLumber = [<tfc:wood/lumber/acacia>,<tfc:wood/lumber/ash>,<tfc:wood/lumber/aspen>,<tfc:wood/lumber/birch>,<tfc:wood/lumber/blackwood>,<tfc:wood/lumber/chestnut>,<tfc:wood/lumber/douglas_fir>,<tfc:wood/lumber/hickory>,<tfc:wood/lumber/kapok>,<tfc:wood/lumber/maple>,<tfc:wood/lumber/oak>,<tfc:wood/lumber/palm>,<tfc:wood/lumber/pine>,<tfc:wood/lumber/rosewood>,<tfc:wood/lumber/sequoia>,<tfc:wood/lumber/spruce>,<tfc:wood/lumber/sycamore>,<tfc:wood/lumber/white_cedar>,<tfc:wood/lumber/willow>,<tfc:wood/lumber/hevea>] as IItemStack[];
for i, log in iLogs{
mods.advancedrocketry.CuttingMachine.addRecipe(iLumber[i]*16, 80, 100, log); 
}
mods.advancedrocketry.Crystallizer.removeRecipe(<libvulpes:productboule:3>);
mods.advancedrocketry.CuttingMachine.removeRecipe(<advancedrocketry:wafer>);

mods.advancedrocketry.CuttingMachine.addRecipe(<projectred-core:resource_item:301>*12, 320, 100, [<projectred-core:resource_item:300>]);

recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:1>,[
	[<advancedrocketry:satelliteprimaryfunction>,<advancedrocketry:ic:1>,<advancedrocketry:satelliteprimaryfunction>],
	[<projectred-core:resource_item:301>,<advancedrocketry:ic>,<projectred-core:resource_item:301>]]);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:2>,[
	[<advancedrocketry:satelliteprimaryfunction>,<libvulpes:productgem>,<advancedrocketry:satelliteprimaryfunction>],
	[<projectred-core:resource_item:301>,<advancedrocketry:ic>,<projectred-core:resource_item:301>]]);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:3>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:3>,[
	[<advancedrocketry:lens>,<advancedrocketry:ic:1>,<advancedrocketry:lens>],
	[<projectred-core:resource_item:301>,<advancedrocketry:ic>,<projectred-core:resource_item:301>]]);
	
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:itemcircuitplate>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:itemcircuitplate:1>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:satelliteprimaryfunction:5>);

mods.advancedrocketry.CuttingMachine.removeRecipe(<advancedrocketry:ic>);
mods.advancedrocketry.CuttingMachine.removeRecipe(<advancedrocketry:ic:2>);

#mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate>, 900, 100, <tfc:metal/ingot/gold>,<minecraft:redstone>,<projectred-core:resource_item:301>);
#mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:itemcircuitplate:1>, 900, 100, <tfc:metal/ingot/gold>,<minecraft:redstone_block>,<projectred-core:resource_item:301>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:satelliteprimaryfunction:5>, 1000, 100, <tfctech:metal/copper_rod>*2,<tfctech:metal/titanium_rod>,<advancedrocketry:ic:2>,<projectred-core:resource_item:301>*2);

//Laser Gun
recipes.remove(<advancedrocketry:basiclasergun>);
recipes.addShaped(<advancedrocketry:basiclasergun>,[
	[<tfc:metal/double_sheet/tungsten_steel>,<immersiveengineering:toolupgrade:9>,<immersiveengineering:toolupgrade:9>],
	[<minecraft:nether_star>,<aunis:circuit_control_crystal>,<appliedenergistics2:material:47>],
	[<tfc:metal/double_sheet/tungsten_steel>,<aunis:naquadah_shard>,<immersiveengineering:material:13>]]);

//Circuits

recipes.remove(<advancedrocketry:ic:3>); #Control Circuit
recipes.addShaped(<advancedrocketry:ic:3>,[
	[<tfctech:metal/gold_strip>,<pneumaticcraft:advanced_pcb>,<opencomputers:material:7>],
	[<tfctech:metal/gold_strip>,<opencomputers:material:6>,<pneumaticcraft:plastic:10>],
	[<forestry:soldering_iron>.reuse(),<tfctech:metal/red_alloy_wire>,<pneumaticcraft:plastic:10>]]);

recipes.remove(<advancedrocketry:ic:4>); #Item IO
recipes.addShaped(<advancedrocketry:ic:4>,[
	[<tfctech:metal/gold_strip>,<pneumaticcraft:advanced_pcb>,<opencomputers:material:7>],
	[<tfctech:metal/gold_strip>,<opencomputers:material:6>,<pneumaticcraft:plastic:11>],
	[<forestry:soldering_iron>.reuse(),<tfctech:metal/red_alloy_wire>,<pneumaticcraft:plastic:11>]]);

recipes.remove(<advancedrocketry:ic:5>); # Liquid IO
recipes.addShaped(<advancedrocketry:ic:5>,[
	[<tfctech:metal/gold_strip>,<pneumaticcraft:advanced_pcb>,<opencomputers:material:7>],
	[<tfctech:metal/gold_strip>,<opencomputers:material:6>,<pneumaticcraft:plastic:6>],
	[<forestry:soldering_iron>.reuse(),<tfctech:metal/red_alloy_wire>,<pneumaticcraft:plastic:6>]]);

//nano_fibre_mesh
val NFM = <contenttweaker:nano_fibre_mesh>;
mods.forestry.Carpenter.addRecipe(NFM, [
	[<contenttweaker:star_string>,<contenttweaker:titania_powder>,<botania:manaresource:16>],
	[<contenttweaker:titania_powder>,<nuclearcraft:part:13>,<contenttweaker:titania_powder>],
	[<contenttweaker:ashen_string>,<contenttweaker:titania_powder>,<contenttweaker:creosote_string>]], 300, <liquid:liquid_nitrogen>*250);	
//life_support_unit
val LSU = <contenttweaker:life_support_unit>;
mods.forestry.Carpenter.addRecipe(LSU, [
	[<tfc:metal/sheet/aluminium>,<advancedrocketry:ic:3>,<tfc:metal/sheet/aluminium>],
	[<tfc:metal/sheet/aluminium>,<libvulpes:productfan:6>,<pneumaticcraft:pressure_gauge>],
	[<tfc:metal/sheet/aluminium>,<projectred-core:resource_item:410>,<immersiveengineering:toolupgrade>]], 300, <liquid:nitrogen>*250);	
//Space Suits
recipes.remove(<advancedrocketry:spacehelmet>);
recipes.addShaped(<advancedrocketry:spacehelmet>,[
	[<tfctech:metal/aluminium_rod>,NFM,<tfctech:metal/aluminium_rod>],
	[NFM,<pneumaticcraft:pressure_chamber_glass>,NFM],
	[<tfctech:latex/rubber>,<tfctech:latex/rubber>,<tfctech:latex/rubber>]]);
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.addShaped(<advancedrocketry:spacechestplate>,[
	[NFM,<tfctech:latex/rubber>,NFM],
	[NFM,LSU,NFM],
	[NFM,NFM,NFM]]);	
recipes.remove(<advancedrocketry:spaceleggings>);
recipes.addShaped(<advancedrocketry:spaceleggings>,[
	[NFM,<tfctech:latex/rubber>,NFM],
	[NFM,null,NFM],
	[NFM,null,NFM]]);
recipes.remove(<advancedrocketry:spaceboots>);
recipes.addShaped(<advancedrocketry:spaceboots>,[
	[<tfctech:latex/rubber>,null,<tfctech:latex/rubber>],
	[NFM,null,NFM],
	[<contenttweaker:glass_fibre>,null,<contenttweaker:glass_fibre>]]);				