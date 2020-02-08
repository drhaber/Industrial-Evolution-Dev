import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val iLogs = [<tfc:wood/log/acacia>,<tfc:wood/log/ash>,<tfc:wood/log/aspen>] as IIngredient[];
val iLumber = [<tfc:wood/lumber/acacia>,<tfc:wood/lumber/ash>,<tfc:wood/lumber/aspen>] as IItemStack[];
for i, log in iLogs{

mods.horsepower.ChoppingBlock.add(log, iLumber[i]*16, 4, false);
}