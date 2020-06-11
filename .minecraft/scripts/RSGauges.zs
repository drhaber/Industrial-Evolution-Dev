import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ItemRegistry;

recipes.removeByMod("rsgauges");	
val MClever = <minecraft:lever>;
val LSheet = <tfc:metal/sheet/lead>;
val TStick = <immersiveengineering:material>;
#Levers 
recipes.addShaped(<rsgauges:bistableswitch2>,[ #Contact
	[null,null,MClever],
	[LSheet,<tfctech:metal/lead_rackwheel_piece>,null]]);
recipes.addShaped(<rsgauges:bistableswitch8>,[ #Industrial
	[null,null,TStick],
	[LSheet,MClever,null]]);
recipes.addShaped(<rsgauges:bistableswitch7>,[ #Rotary
	[LSheet,MClever],
	[null,TStick]]);
recipes.addShaped(<rsgauges:bistableswitch_rustic1>,[ #Rustic
	[null,<contenttweaker:creosote_string>,TStick],
	[LSheet,MClever,<contenttweaker:creosote_string>]]);
recipes.addShaped(<rsgauges:bistableswitch_rustic2>,[ #Rustic Two Hinge
	[LSheet,MClever,null],
	[<contenttweaker:creosote_string>,TStick,<contenttweaker:creosote_string>],
	[LSheet,MClever,null]]);
recipes.addShaped(<rsgauges:bistableswitch_rustic3>,[ #Rotary Rustic
	[LSheet,MClever,null],
	[<contenttweaker:creosote_string>,TStick,<contenttweaker:creosote_string>]]);    
recipes.addShaped(<rsgauges:bistableswitch_rustic7>,[ #Nail
	[<tfctech:metal/lead_rod>],
	[<ore:cobblestone>]]);
recipes.addShaped(<rsgauges:bistableswitch_oldfancy1>,[ #Fancy
	[null,<tfctech:metal/gold_strip>,TStick],
	[LSheet,MClever,<tfctech:metal/gold_strip>]]);
recipes.addShaped(<rsgauges:bistableswitch_oldfancy2>,[ #Rotary Fancy
	[LSheet,MClever,null],
	[<tfctech:metal/gold_strip>,TStick,<tfctech:metal/gold_strip>]]);    