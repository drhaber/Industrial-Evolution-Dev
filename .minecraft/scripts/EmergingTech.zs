import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;


//Bulbs

recipes.remove(<emergingtechnology:purplebulb>); #UV
recipes.addShaped(<emergingtechnology:purplebulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,<minecraft:stained_glass_pane:10>,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<botania:managlasspane>,<tfc:metal/sheet/tin>]]); #Flower
recipes.addShaped(<emergingtechnology:purplebulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<astralsorcery:itemcoloredlens:6>,<tfc:metal/sheet/tin>]]); #stars
recipes.addShaped(<emergingtechnology:purplebulb>,[
	[<tfctech:metal/copper_strip>,<immersiveengineering:metal_device1:9>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:10>,<tfc:metal/sheet/tin>]]); #Tech
recipes.addShaped(<emergingtechnology:purplebulb>,[
	[<tfctech:metal/copper_strip>,<embers:glimmer_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:10>,<tfc:metal/sheet/tin>]]); #Dwarf

recipes.remove(<emergingtechnology:redbulb>); #Red
recipes.addShaped(<emergingtechnology:redbulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,<minecraft:stained_glass_pane:14>,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<botania:managlasspane>,<tfc:metal/sheet/tin>]]); #Flower
recipes.addShaped(<emergingtechnology:redbulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<astralsorcery:itemcoloredlens:3>,<tfc:metal/sheet/tin>]]); #stars
recipes.addShaped(<emergingtechnology:redbulb>,[
	[<tfctech:metal/copper_strip>,<immersiveengineering:metal_device1:9>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:14>,<tfc:metal/sheet/tin>]]); #Tech
recipes.addShaped(<emergingtechnology:redbulb>,[
	[<tfctech:metal/copper_strip>,<embers:glimmer_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:14>,<tfc:metal/sheet/tin>]]); #Dwarf

recipes.remove(<emergingtechnology:greenbulb>); #Green
recipes.addShaped(<emergingtechnology:greenbulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,<minecraft:stained_glass_pane:5>,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<botania:managlasspane>,<tfc:metal/sheet/tin>]]); #Flower
recipes.addShaped(<emergingtechnology:greenbulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<astralsorcery:itemcoloredlens:2>,<tfc:metal/sheet/tin>]]); #stars
recipes.addShaped(<emergingtechnology:greenbulb>,[
	[<tfctech:metal/copper_strip>,<immersiveengineering:metal_device1:9>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:5>,<tfc:metal/sheet/tin>]]); #Tech
recipes.addShaped(<emergingtechnology:greenbulb>,[
	[<tfctech:metal/copper_strip>,<embers:glimmer_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:5>,<tfc:metal/sheet/tin>]]); #Dwarf

recipes.remove(<emergingtechnology:bluebulb>); #Blue
recipes.addShaped(<emergingtechnology:bluebulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,<minecraft:stained_glass_pane:3>,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<botania:managlasspane>,<tfc:metal/sheet/tin>]]); #Flower
recipes.addShaped(<emergingtechnology:bluebulb>,[
	[<tfctech:metal/copper_strip>,<minecraft:redstone_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<astralsorcery:itemcoloredlens:5>,<tfc:metal/sheet/tin>]]); #stars   
recipes.addShaped(<emergingtechnology:bluebulb>,[
	[<tfctech:metal/copper_strip>,<immersiveengineering:metal_device1:9>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:3>,<tfc:metal/sheet/tin>]]); #Tech
recipes.addShaped(<emergingtechnology:bluebulb>,[
	[<tfctech:metal/copper_strip>,<embers:glimmer_lamp>,<tfctech:metal/copper_strip>],
	[<tfctech:metal/copper_strip>,null,<tfctech:metal/copper_strip>],
	[<tfc:metal/sheet/tin>,<minecraft:stained_glass_pane:3>,<tfc:metal/sheet/tin>]]); #Dwarf   

//Battery
recipes.remove(<emergingtechnology:battery>);
recipes.addShaped(<emergingtechnology:battery>,[
	[<tfctech:metal/steel_rod>,<ore:sheetPlastic>,<tfctech:metal/steel_rod>],
	[<ore:sheetPlastic>,<immersiveengineering:metal_device0>,<ore:sheetPlastic>],
	[<tfctech:metal/steel_rod>,<emergingtechnology:machinecase>,<tfctech:metal/steel_rod>]]);