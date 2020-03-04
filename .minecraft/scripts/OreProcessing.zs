import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import moretweaker.railcraft.BlastFurnace;

val Dusts = 	[<tfc:metal/dust/gold>,	<tfc:metal/dust/platinum>,	<tfc:metal/dust/silver>,	<tfc:metal/dust/tin>,	<tfc:metal/dust/lead>,	<tfc:metal/dust/bismuth>,	<tfc:metal/dust/zinc>,	<tfc:metal/dust/ardite>,<tfc:metal/dust/osmium>,<tfc:metal/dust/antimony>,	<tfc:metal/dust/aluminium>,	<tfc:metal/dust/tungsten>,	<tfc:metal/dust/cobalt>] as IItemStack[];
val Rich =   	[<ore:oreGoldRich>,		<ore:orePlatinumRich>,		<ore:oreSilverRich>,		<ore:oreTinRich>,		<ore:oreLeadRich>,		<ore:oreBismuthRich>,		<ore:oreZincRich>,		<ore:oreArditeRich>,	<ore:oreOsmiumRich>,	<ore:oreAntimonyRich>,		<ore:oreAluminiumRich>,		<ore:oreTungstenRich>,		<ore:oreCobaltRich>] as IOreDictEntry[];
val Normal = 	[<ore:oreGoldNormal>,	<ore:orePlatinumNormal>,	<ore:oreSilverNormal>,		<ore:oreTinNormal>,		<ore:oreLeadNormal>,	<ore:oreBismuthNormal>,		<ore:oreZincNormal>,	<ore:oreArditeNormal>,	<ore:oreOsmiumNormal>,	<ore:oreAntimonyNormal>,	<ore:oreAluminiumNormal>,	<ore:oreTungstenNormal>,	<ore:oreCobaltNormal>] as IOreDictEntry[];
val Poor =   	[<ore:oreGoldPoor>,		<ore:orePlatinumPoor>,		<ore:oreSilverPoor>,		<ore:oreTinPoor>,		<ore:oreLeadPoor>,		<ore:oreBismuthPoor>,		<ore:oreZincPoor>,		<ore:oreArditePoor>,	<ore:oreOsmiumPoor>,	<ore:oreAntimonyPoor>,		<ore:oreAluminiumPoor>,		<ore:oreTungstenPoor>,		<ore:oreCobaltPoor>] as IOreDictEntry[];
val Small =  	[<ore:oreGoldSmall>,	<ore:orePlatinumSmall>,		<ore:oreSilverSmall>,		<ore:oreTinSmall>,		<ore:oreLeadSmall>,		<ore:oreBismuthSmall>,		<ore:oreZincSmall>,		<ore:oreArditeSmall>,	<ore:oreOsmiumSmall>,	<ore:oreAntimonySmall>,		<ore:oreAluminiumSmall>,	<ore:oreTungstenSmall>,		<ore:oreCobaltSmall>] as IOreDictEntry[];

for i, dust in Dusts{
val IRich = Rich[i].items;
val INormal = Normal[i].items;
val IPoor = Poor[i].items;
val ISmall = Small[i].items;
for j, IR in IRich{
mods.immersiveengineering.Crusher.addRecipe(ISmall[j]*4, IRich[j], 2048, ISmall[j], 0.5);
}
for k, IR in INormal{
mods.immersiveengineering.Crusher.addRecipe(ISmall[k]*3, INormal[k], 2048, ISmall[k], 0.1);
}
for l, IR in IPoor{
mods.immersiveengineering.Crusher.addRecipe(ISmall[l]*2, IPoor[l], 2048);
}
mods.immersiveengineering.Crusher.addRecipe(dust, Small[i]*10, 2048);
}

val CopRich = [<tfc:ore/native_copper:2>,<tfc:ore/malachite:2>,<tfc:ore/tetrahedrite:2>] as IItemStack[];
val CopNorm = [<tfc:ore/native_copper>,<tfc:ore/malachite>,<tfc:ore/tetrahedrite>] as IItemStack[];
val CopPoor = [<tfc:ore/native_copper:1>,<tfc:ore/malachite:1>,<tfc:ore/tetrahedrite:1>] as IItemStack[];
val CopSmal = [<tfc:ore/small/native_copper>,<tfc:ore/small/malachite>,<tfc:ore/small/tetrahedrite>] as IItemStack[]; 
for m, orecopper in CopSmal{
mods.immersiveengineering.Crusher.addRecipe(CopSmal[m]*4, CopRich[m], 2048, CopSmal[m], 0.5);
mods.immersiveengineering.Crusher.addRecipe(CopSmal[m]*3, CopNorm[m], 2048, CopSmal[m], 0.1);
mods.immersiveengineering.Crusher.addRecipe(CopSmal[m]*2, CopPoor[m], 2048);
}
mods.immersiveengineering.Crusher.addRecipe(<tfc:metal/dust/copper>, <ore:oreCopperSmall>*10, 2048);

val IronRich = [<tfc:ore/hematite:2>,<tfc:ore/magnetite:2>,<tfc:ore/limonite:2>] as IItemStack[];
val IronNorm = [<tfc:ore/hematite>,<tfc:ore/magnetite>,<tfc:ore/limonite>] as IItemStack[];
val IronPoor = [<tfc:ore/hematite:1>,<tfc:ore/magnetite:1>,<tfc:ore/limonite:1>] as IItemStack[];
val IronSmal = [<tfc:ore/small/hematite>,<tfc:ore/small/magnetite>,<tfc:ore/small/limonite>] as IItemStack[]; 
for n, oreiron in IronSmal{
mods.immersiveengineering.Crusher.addRecipe(IronSmal[n]*4, IronRich[n], 2048, IronSmal[n], 0.5);
mods.immersiveengineering.Crusher.addRecipe(IronSmal[n]*3, IronNorm[n], 2048, IronSmal[n], 0.1);
mods.immersiveengineering.Crusher.addRecipe(IronSmal[n]*2, IronPoor[n], 2048);
}
mods.immersiveengineering.Crusher.addRecipe(<tfc:metal/dust/wrought_iron>, <ore:oreIronSmall>*10, 2048);
#=============================================================================================================================================		

//Steelingot
BlastFurnace.remove(<railcraft:ingot>);
BlastFurnace.remove(<railcraft:nugget>);
BlastFurnace.remove(<railcraft:metal:3>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);