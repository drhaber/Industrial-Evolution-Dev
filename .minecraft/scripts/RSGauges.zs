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
val CPlate = <projectred-core:resource_item>;
val Button = <ore:button>;
val Rtorch = <minecraft:redstone_torch>;
val Compare = <minecraft:comparator>;
val VarOut = <integrateddynamics:variable_transformer>;
val Keypad = <opencomputers:material:16>;

recipes.addShaped(<rsgauges:bistableswitch2>,[ #Contact
	[null,null,MClever],
	[LSheet,<tfctech:metal/lead_rackwheel_piece>,null]]);
recipes.addShaped(<rsgauges:bistableswitch8>,[ #Industrial
	[null,null,TStick],
	[LSheet,MClever,null]]);
recipes.addShaped(<rsgauges:bistableswitch7>,[ #Rotary lever
	[LSheet,MClever],
	[null,TStick]]);
recipes.addShaped(<rsgauges:bistableswitch1>,[ #Rotary machine
	[null,null,<ore:dyeRed>],
	[MClever,CPlate,<astikorcarts:wheel>]]);
recipes.addShaped(<rsgauges:bistableswitch3>,[ #Two Button machine
	[null,Button,<ore:dyeRed>],
	[MClever,CPlate,null],
	[null,Button,<ore:dyeGreen>]]);
recipes.addShaped(<rsgauges:bistableswitch5>,[ #Estop
	[null,null,<ore:dyeRed>],
	[Rtorch,MClever,Button],
	[null,null,<ore:dyeRed>]]);		
recipes.addShaped(<rsgauges:bistableswitch6>,[ #Hopper Blocker
	[LSheet,TStick]]);
recipes.addShaped(<rsgauges:pulseswitch1>,[ #Machine Button
	[null,null,<ore:dyeGreen>],
	[LSheet,<ore:slimeball>,Button],
	[null,null,<ore:dyeGreen>]]);
recipes.addShaped(<rsgauges:pulseswitch2>,[ #Fancy Machine Button
	[null,null,<ore:dyeGreen>],
	[LSheet,<ore:slimeball>,Button],
	[null,null,<ore:dyeYellow>]]);
recipes.addShaped(<rsgauges:pulseswitch6>,[ #Industrial Button
	[null,<tfctech:metal/lead_strip>,null],
	[LSheet,Button,<contenttweaker:treatedlumber>],
	[null,<tfctech:metal/lead_strip>,null]]);
recipes.addShaped(<rsgauges:pulseswitch5>,[ #Industrial Foot Button
	[null,null,<contenttweaker:treatedlumber>],
	[null,null,<tfctech:metal/lead_rod>],
	[LSheet,<tfctech:metal/lead_rackwheel_piece>,null]]);
recipes.addShaped(<rsgauges:pulseswitch3>,[ #Industrial Pull Lever
	[LSheet,Rtorch,TStick],
	[<minecraft:slime_ball>,Button,<tfctech:metal/lead_rod>]]);
recipes.addShaped(<rsgauges:dimmerswitch1>,[ #Industrial Dimmer
    [Compare,null,null],
    [LSheet,<tfctech:metal/lead_rackwheel_piece>,TStick],
    [Compare,null,null]]);
recipes.addShaped(<rsgauges:contactmat1>,[ #Industrial Door Contact Mat
    [Button,LSheet],
    [VarOut,<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:contactmat2>,[ #Industrial Contact Mat
    [Button,LSheet],
    [Compare,<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:contactmat3>,[ #Industrial Shock Mat
	[null,<minecraft:web>],
    [Button,LSheet],
    [Compare,<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:trapdoorswitch1>,[ #Shock Trap Door
    [<rsgauges:contactmat3>],
    [<minecraft:iron_trapdoor>]]);
recipes.addShaped(<rsgauges:trapdoorswitch2>,[ #Sensitive Shock Trap Door
    [<rsgauges:contactmat2>],
    [<minecraft:iron_trapdoor>]]);
recipes.addShaped(<rsgauges:trapdoorswitch3>,[ #Fall Through Detector 
    [Compare,<advancedrocketry:satelliteprimaryfunction>],
    [<tfctech:metal/lead_rod>,null],
    [Compare,<advancedrocketry:satelliteprimaryfunction>]]);
recipes.addShaped(<rsgauges:automaticswitch4>,[ #Day Timer
    [LSheet,Keypad],
    [VarOut,<minecraft:clock>]]);
recipes.addShaped(<rsgauges:automaticswitch7>,[ #Interval Timer
    [LSheet,Keypad],
    [VarOut,<projectred-integration:gate:17>]]);
recipes.addShaped(<rsgauges:automaticswitch1>,[ #Entity Detector
    [LSheet,Keypad],
    [VarOut,<minecraft:ender_eye>]]);
recipes.addShaped(<rsgauges:automaticswitch2>,[ #Laser Entity Detector
    [LSheet,Keypad],
    [VarOut,<minecraft:ender_eye>,<advancedrocketry:lens>]]);
recipes.addShaped(<rsgauges:automaticswitch3>,[ #Industrial Light Sensor
    [LSheet,Keypad],
    [VarOut,<projectred-integration:gate:15>]]);
recipes.addShaped(<rsgauges:automaticswitch5>,[ #Industrial Rain Sensor
    [LSheet,Keypad],
    [VarOut,<projectred-integration:gate:16>]]);
recipes.addShaped(<rsgauges:automaticswitch6>,[ #Storm Sensor
    [LSheet,<railcraft:charge>],
    [Compare,<projectred-integration:gate:16>]]);
recipes.addShaped(<rsgauges:observerswitch1>,[ #Block Detector
    [LSheet,<immersiveengineering:material:27>,LSheet],
    [<advancedrocketry:satelliteprimaryfunction>,<iceandfire:cyclops_eye>,Keypad],
    [LSheet,VarOut,LSheet]]);
recipes.addShaped(<rsgauges:relay_pulseswitchrx1>,[ #Pulse Link
    [null,<tfctech:metal/tin_long_rod>],
    [LSheet,<projectred-integration:gate:9>]]);
recipes.addShaped(<rsgauges:relay_pulseswitchrx2>,[ #Pulse Link in a Case
    [null,<tfctech:metal/tin_long_rod>],
    [<tfc:metal/double_ingot/lead>,<projectred-integration:gate:9>]]);
recipes.addShaped(<rsgauges:relay_bistableswitchrx1>,[ #Switch Link
    [null,<tfctech:metal/tin_long_rod>],
    [LSheet,MClever]]);
recipes.addShaped(<rsgauges:relay_bistableswitchrx2>,[ #Switch Link in a Case
    [null,<tfctech:metal/tin_long_rod>],
    [<tfc:metal/double_ingot/lead>,MClever]]);
recipes.addShaped(<rsgauges:relay_pulseswitchtx1>,[ #Pulse Link Sender
    [<railcraft:charge>,<tfctech:metal/tin_long_rod>],
    [LSheet,<projectred-integration:gate:9>]]);
recipes.addShaped(<rsgauges:relay_bistableswitchtx1>,[ #Switch Link Sender
    [<railcraft:charge>,<tfctech:metal/tin_long_rod>],
    [LSheet,MClever]]);
recipes.addShaped(<rsgauges:industrial_knock_switch>,[ #Knock Switch
    [null,<instrumentalmobs:microphone>],
    [<tfc:metal/double_ingot/lead>,MClever]]);
recipes.addShaped(<rsgauges:industrial_knock_button>,[ #Knock Pulse
    [null,<instrumentalmobs:microphone>],
    [<tfc:metal/double_ingot/lead>,<projectred-integration:gate:9>]]);
recipes.addShaped(<rsgauges:flatgauge1>,[ #Analog Voltmeter
    [<minecraft:carpet:0>,<ore:paneGlassColorless>],
    [Compare,<tfctech:metal/tin_long_rod>]]);
recipes.addShaped(<rsgauges:flatgauge6>,[ #Analog Voltmeter Horiztonal
    [<minecraft:carpet:0>,<ore:paneGlassColorless>],
    [Compare,<tfctech:metal/tin_rod>]]);
recipes.addShaped(<rsgauges:flatgauge2>,[ #Bar Gauge
    [LSheet,<contenttweaker:casing_electron_tube>],
    [Compare,<inspirations:dyed_bottle:1>]]);
recipes.addShaped(<rsgauges:flatgauge3>,[ #Digital Gauge
    [LSheet,<minecraft:sign>],
    [Compare,<minecraft:sign>]]);
recipes.addShaped(<rsgauges:flatgauge5>,[ #3d Bar Gauge
    [<tfctech:metal/lead_rod>,null],
    [null,<contenttweaker:casing_electron_tube>],
    [Compare,<inspirations:dyed_bottle:1>]]);
recipes.addShaped(<rsgauges:indicator4>,[ #Alarm Lamp
    [LSheet,<ore:blockGlassColorless>],
    [<projectred-integration:gate:9>,Rtorch]]);
recipes.addShaped(<rsgauges:soundindicator1>,[ #Siren
    [null,<minecraft:stained_hardened_clay:14>],
    [LSheet,<minecraft:noteblock>],
    [null,<minecraft:stained_hardened_clay:14>]]);
recipes.addShaped(<rsgauges:indicator1>,[ #Green Indicator
    [LSheet,<ore:paneGlassColorless>],
    [Rtorch,<ore:dyeGreen>]]);
recipes.addShaped(<rsgauges:indicator1blink1>,[ #Green Indicator Blinking
    [LSheet,<ore:paneGlassColorless>],
    [<projectred-integration:gate:9>,<ore:dyeGreen>]]);
recipes.addShaped(<rsgauges:indicator2>,[ #Yellow Indicator
    [LSheet,<ore:paneGlassColorless>],
    [Rtorch,<ore:dyeYellow>]]);
recipes.addShaped(<rsgauges:indicator2blink1>,[ #Yellow Indicator Blinking
    [LSheet,<ore:paneGlassColorless>],
    [<projectred-integration:gate:9>,<ore:dyeYellow>]]);
recipes.addShaped(<rsgauges:indicator3>,[ #Red Indicator
    [LSheet,<ore:paneGlassColorless>],
    [Rtorch,<ore:dyeRed>]]);
recipes.addShaped(<rsgauges:indicator3blink1>,[ #Red Indicator Blinking
    [LSheet,<ore:paneGlassColorless>],
    [<projectred-integration:gate:9>,<ore:dyeRed>]]);
recipes.addShaped(<rsgauges:indicator_led_white>,[ #White Indicator
    [LSheet,<ore:paneGlassColorless>],
    [Rtorch,<ore:dyeWhite>]]);
recipes.addShaped(<rsgauges:indicator_led_white_blink>,[ #White Indicator Blinking
    [LSheet,<ore:paneGlassColorless>],
    [<projectred-integration:gate:9>,<ore:dyeWhite>]]);
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
recipes.addShaped(<rsgauges:bistableswitch_rustic7>,[ #Nail Lever
	[<tfctech:metal/lead_rod>,<ore:hammer>.transformDamage(1)],
	[<ore:cobblestone>,null]]);
recipes.addShaped(<rsgauges:pulseswitch_rustic1>,[ # Rustic Button
    [<tfctech:metal/lead_rackwheel_piece>,null,null],
    [Button,<contenttweaker:treatedlumber>,<tfctech:metal/lead_bolt>],
    [<tfctech:metal/lead_rackwheel_piece>,null,null]]);	
recipes.addShaped(<rsgauges:pulseswitch_rustic2>,[ # Rustic Small Button
    [<tfctech:metal/lead_rackwheel_piece>,null],
    [Button,<contenttweaker:treatedlumber>],
    [<tfctech:metal/lead_rackwheel_piece>,null]]);
recipes.addShaped(<rsgauges:pulseswitch_rustic3>,[ # Rustic Chain Button
    [<tfctech:metal/lead_rackwheel_piece>,null],
    [Button,<inspirations:rope:1>],
    [<tfctech:metal/lead_rackwheel_piece>,null]]);
recipes.addShaped(<rsgauges:pulseswitch_rustic7>,[ #Nail Button
	[<tfctech:metal/lead_rod>,<ore:hammer>.transformDamage(1)]]);
recipes.addShaped(<rsgauges:contactmat_rustic1>,[ #Rustic Door Contact Mat
    [Button,<tfc:metal/sheet/wrought_iron>],
    [VarOut,<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:contactmat_rustic2>,[ #Rustic Contact Mat
    [Button,<tfc:metal/sheet/wrought_iron>],
    [Compare,<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:contactmat_rustic3>,[ #Rustic Shock Mat
	[null,<minecraft:web>],
    [Button,<tfc:metal/sheet/wrought_iron>],
    [Compare,<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:trapdoorswitch_rustic1>,[ #Shock Trap Door
    [<rsgauges:contactmat_rustic3>],
    [<minecraft:iron_trapdoor>]]);
recipes.addShaped(<rsgauges:trapdoorswitch_rustic2>,[ #Sensitive Shock Trap Door
    [<rsgauges:contactmat_rustic2>],
    [<minecraft:iron_trapdoor>]]);
recipes.addShaped(<rsgauges:trapdoorswitch_rustic3>,[ #Sensitive Fallthrough Trap Door
    [<rsgauges:trapdoorswitch3>],
	[<minecraft:iron_bars>],
    [<minecraft:iron_trapdoor>]]);
recipes.addShaped(<rsgauges:gauge_rustic2>,[ #Circle Wall Meter
    [<ore:dyeRed>,<tfctech:metal/lead_long_rod>,Compare]]);
recipes.addShaped(<rsgauges:indicator_rustic_flag>,[ #Flag Gauge
    [<tfctech:metal/lead_rackwheel_piece>,null,null],
    [Rtorch,<tfctech:metal/lead_rod>,<minecraft:banner:15>],
    [<tfctech:metal/lead_rackwheel_piece>,null,null]]);	
recipes.addShaped(<rsgauges:bistableswitch_glass1>,[ #Glass Lever
    [<ore:paneGlassColorless>,<ore:paneGlassColorless>],
    [MClever,<ore:paneGlassColorless>]]);
recipes.addShaped(<rsgauges:bistableswitch_glass2>,[ #Glass Lever Touch Switch
    [<ore:paneGlassGray>,<ore:paneGlassColorless>],
    [MClever,null]]);
recipes.addShaped(<rsgauges:pulseswitch_glass1>,[ #Glass Button
    [Button,<ore:paneGlassColorless>]]);
recipes.addShaped(<rsgauges:pulseswitch_glass2>,[ #Glass Button Small
    [Button,<ore:shardGlass>]]);
recipes.addShaped(<rsgauges:pulseswitch_glass3>,[ #Glass Button Touch
    [Button,<ore:paneGlassColorless>,<ore:paneGlassColorless>]]);
recipes.addShaped(<rsgauges:contactmat_glass1>,[ #Glass Configure Contact Mat
    [Button,<ore:paneGlassColorless>],
    [Compare,<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:contactmat_glass2>,[ #Glass Contact Mat
    [<ore:paneGlassColorless>],
    [<ore:pressurePlateStone>]]);
recipes.addShaped(<rsgauges:daytimeswitch_glass1>,[ #Day Timer Glass
    [<ore:paneGlassColorless>,Keypad],
    [VarOut,<minecraft:clock>]]);
recipes.addShaped(<rsgauges:timerswitch_glass1>,[ #Interval Timer Glass
    [<ore:paneGlassColorless>,Keypad],
    [VarOut,<projectred-integration:gate:17>]]);
recipes.addShaped(<rsgauges:detectorswitch_glass1>,[ #Entity Detector Glass
    [<ore:paneGlassColorless>,Keypad],
    [VarOut,<minecraft:ender_eye>]]);
recipes.addShaped(<rsgauges:detectorswitch_glass2>,[ #Laser Entity Detector Glass
    [<ore:paneGlassColorless>,Keypad],
    [VarOut,<minecraft:ender_eye>,<advancedrocketry:lens>]]);
recipes.addShaped(<rsgauges:industrial_comparator_switch>,[ #Industrial comparator
    [LSheet,Keypad],
    [VarOut,Compare]]);
recipes.addShaped(<rsgauges:flatgauge4>,[ #Glass Bar Gauge
    [<ore:paneGlassColorless>,<contenttweaker:casing_electron_tube>],
    [Compare,<inspirations:dyed_bottle:1>]]);
recipes.addShaped(<rsgauges:bistableswitch_oldfancy1>,[ #Fancy
	[null,<tfctech:metal/gold_strip>,TStick],
	[LSheet,MClever,<tfctech:metal/gold_strip>]]);
recipes.addShaped(<rsgauges:bistableswitch_oldfancy2>,[ #Rotary Fancy
	[LSheet,MClever,null],
	[<tfctech:metal/gold_strip>,TStick,<tfctech:metal/gold_strip>]]);
recipes.addShaped(<rsgauges:pulseswitch_oldfancy1>,[ #Fancy Button
    [LSheet,<tfctech:metal/gold_strip>],
    [Button,<contenttweaker:treatedlumber>,<tfctech:metal/lead_bolt>]]);
recipes.addShaped(<rsgauges:pulseswitch_oldfancy2>,[ #Fancy Chain Button
    [LSheet,<tfctech:metal/lead_rod>,<inspirations:rope:1>],
    [null,null,<tfctech:metal/gold_strip>],
    [null,null,<contenttweaker:treatedlumber>]]);
recipes.addShaped(<rsgauges:pulseswitch_oldfancy4>,[ #Fancy Button Small
    [LSheet,<tfctech:metal/gold_strip>],
    [Button,<contenttweaker:treatedlumber>]]);	
recipes.addShaped(<rsgauges:powerplant_yellow>,[ #Yellow Power Plant
    [<minecraft:yellow_flower>],
    [<ore:pressurePlateStone>]]);	
recipes.addShaped(<rsgauges:powerplant_red>,[ #Red Power Plant
    [<minecraft:red_flower>],
    [<ore:pressurePlateStone>]]);		
recipes.addShaped(<rsgauges:bistableswitch4>,[ #Light Switch
    [MClever,<tfctech:metal/lead_strip>],
    [<minecraft:carpet:0>,null]]);	
recipes.addShaped(<rsgauges:arrowtarget>,[ #Target Button
    [<minecraft:carpet:4>,<minecraft:carpet:14>],
    [<ore:pressurePlateWood>,<minecraft:carpet:11>],
    [<minecraft:carpet:4>,<minecraft:carpet:14>]]);
recipes.addShaped(<rsgauges:valve_wheel_switch>,[ #Valve Switch
    [null,null,<ore:dyeRed>],
    [LSheet,MClever,<tfctech:metal/lead_rackwheel>],
    [null,null,<ore:dyeRed>]]);
recipes.addShaped(<rsgauges:elevator_button>,[ #Elevetor Button
    [Button,<ore:dyeYellow>],
    [LSheet,null],
    [Button,<ore:dyeYellow>]]);
recipes.addShaped(<rsgauges:door_sensor_switch>,[ #Player Door Sensor
    [<tfctech:metal/lead_rod>,<minecraft:ender_eye>,null],
    [null,null,<advancedrocketry:lens>]]);
recipes.addShaped(<rsgauges:sensitiveglass>,[ #Light Emitting Glass
    [<ore:blockGlassColorless>],
    [<astralsorcery:itemusabledust>],
    [<ore:dustRedstone>]]);
recipes.addShaped(<rsgauges:sensitiveglass_inverted>,[ #Inverted Light Emitting Glass
    [<ore:blockGlassColorless>],
    [<astralsorcery:itemusabledust>],
    [<minecraft:redstone_torch>]]);

val SSG = [<rsgauges:sensitiveglass_white>,<rsgauges:sensitiveglass_orange>,
<rsgauges:sensitiveglass_magenta>,<rsgauges:sensitiveglass_lightblue>,
<rsgauges:sensitiveglass_yellow>,<rsgauges:sensitiveglass_lime>,
<rsgauges:sensitiveglass_pink>,<rsgauges:sensitiveglass_gray>,
<rsgauges:sensitiveglass_lightgray>,<rsgauges:sensitiveglass_cyan>,
<rsgauges:sensitiveglass_purple>,<rsgauges:sensitiveglass_blue>,
<rsgauges:sensitiveglass_brown>,<rsgauges:sensitiveglass_green>,
<rsgauges:sensitiveglass_red>,<rsgauges:sensitiveglass_black>] as IItemStack[];
val SG = <minecraft:stained_glass>.definition;
for i in 0 to 16{
recipes.addShaped(SSG[i],[
    [SG.makeStack(i)],
	[<blockcraftery:editable_block>],
    [<minecraft:redstone_torch>]]);
}
