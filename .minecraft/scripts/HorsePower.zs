import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val iLogs = [<tfc:wood/log/acacia>,<tfc:wood/log/ash>,<tfc:wood/log/aspen>,<tfc:wood/log/birch>,<tfc:wood/log/blackwood>,<tfc:wood/log/chestnut>,<tfc:wood/log/douglas_fir>,<tfc:wood/log/hickory>,<tfc:wood/log/kapok>,<tfc:wood/log/maple>,<tfc:wood/log/oak>,<tfc:wood/log/palm>,<tfc:wood/log/pine>,<tfc:wood/log/rosewood>,<tfc:wood/log/sequoia>,<tfc:wood/log/spruce>,<tfc:wood/log/sycamore>,<tfc:wood/log/white_cedar>,<tfc:wood/log/willow>,<tfc:wood/log/hevea>] as IIngredient[];
val iLumber = [<tfc:wood/lumber/acacia>,<tfc:wood/lumber/ash>,<tfc:wood/lumber/aspen>,<tfc:wood/lumber/birch>,<tfc:wood/lumber/blackwood>,<tfc:wood/lumber/chestnut>,<tfc:wood/lumber/douglas_fir>,<tfc:wood/lumber/hickory>,<tfc:wood/lumber/kapok>,<tfc:wood/lumber/maple>,<tfc:wood/lumber/oak>,<tfc:wood/lumber/palm>,<tfc:wood/lumber/pine>,<tfc:wood/lumber/rosewood>,<tfc:wood/lumber/sequoia>,<tfc:wood/lumber/spruce>,<tfc:wood/lumber/sycamore>,<tfc:wood/lumber/white_cedar>,<tfc:wood/lumber/willow>,<tfc:wood/lumber/hevea>] as IItemStack[];
for i, log in iLogs{
mods.horsepower.ChoppingBlock.add(log, iLumber[i]*10, 2, false);
mods.horsepower.ChoppingBlock.add(log, iLumber[i]*3, 6, true);
}
recipes.remove(<horsepower:chopper>);
mods.horsepower.Recipes.addShaped(<ore:logWood>, <horsepower:chopper>, [[<ore:gearWood>,<quark:rope>,<ore:gearWood>],
																		   [<ore:stickWood>,<ore:axeHead>,<ore:stickWood>],
																		   [<ore:stickWood>,<ore:logWood>,<ore:stickWood>]]);

mods.jei.JEI.removeAndHide(<horsepower:hand_grindstone>);
//Blood
mods.horsepower.Press.add(<minecraft:rotten_flesh>, <liquid:blood>*5);
//Honey Drop
mods.horsepower.Press.add(<ore:beeComb>, <forestry:honey_drop>*3);
//Paper
mods.horsepower.Press.add(<ore:pulpWood>, <minecraft:paper>*3);
mods.horsepower.Press.add(<emergingtechnology:paperpulp>, <minecraft:paper>*3);
//Manual Chopping Block
mods.jei.JEI.addDescription(<horsepower:chopping_block>,"Simply place a log onto the chopping block use right click and then, with an axe in your hand left click the block, about 2 to 4 times, until lumber is acquired. ");