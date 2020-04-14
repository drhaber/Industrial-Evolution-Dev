import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import moretweaker.railcraft.BlastFurnace;
import mods.appliedenergistics2.Grinder;
import mods.terrafirmacraft.Quern;
import mods.immersiveengineering.Crusher;
import mods.pyrotech.SoakingPot;

mods.immersiveengineering.Crusher.removeRecipe(<tfc:metal/dust/wrought_iron>);
mods.unidict.removalByKind.get("Furnace").remove("ingot");

//Thorium
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide>, <tfc:ore/thorianite>, 2048, <nuclearcraft:dust_oxide:1>, 0.25);
//Magnesium
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 2048);
Grinder.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 4);
//Lithium
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:6>, <tfc:ore/spodumene>, 2048);

mods.immersiveengineering.CokeOven.addRecipe( <immersiveengineering:material:6>, 500,<tfc:ore/bituminous_coal>, 2000);

//Pitch Blend
mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide:1>, <tfc:ore/pitchblende>, 2048, <nuclearcraft:dust_oxide:1>, 0.25);


val AlloyedIngots = [<immersiveengineering:metal:6>,<immersiveengineering:metal:7>,<railcraft:ingot:7>,<forestry:ingot_bronze>,<railcraft:ingot:9>,<projectred-core:resource_item:103>
] as IItemStack[];
for AI in AlloyedIngots{
mods.immersiveengineering.AlloySmelter.removeRecipe(AI);
}

val MelteroreInputs = [<ore:oreIron>,<ore:oreGold>,<ore:oreSilver>,<ore:oreCopper>,<ore:oreLead>,<ore:oreAluminum>,<ore:oreNickel>,<ore:oreTin>] as IOreDictEntry[];
for i, MOI in MelteroreInputs{
    for OIS in MOI.items{ 
mods.embers.Melter.remove(OIS);
    }
}

zenClass OreGrindingandSoaking {
    var Small as IItemStack;
    var Poor as IItemStack;
    var Normal as IItemStack;
    var Rich as IItemStack;     
    var Cluster as IItemStack;
    var Dusts as IItemStack;
    var Scrap as IItemStack;
    zenConstructor(Small as IItemStack){
        this.Poor = null;
        this.Normal = null;
        this.Rich = null;     
        this.Cluster = null;
        this.Dusts = null;
        this.Scrap = null;
    }
        function withPoor(Poor as IItemStack) as OreGrindingandSoaking{
            this.Poor=Poor;
            return this;
        }
        function withNormal(Normal as IItemStack) as OreGrindingandSoaking{
            this.Normal=Normal;
            return this;
        }
        function withRich(Rich as IItemStack) as OreGrindingandSoaking{
            this.Rich=Rich;
            return this;
        }     
        function withCluster(Cluster as IItemStack) as OreGrindingandSoaking{
            this.Cluster=Cluster;
            return this;
        }
        function withDusts(Dusts as IItemStack) as OreGrindingandSoaking{
            this.Dusts=Dusts;
            return this;
        }
        function withScrap(Scrap as IItemStack) as OreGrindingandSoaking{
            this.Scrap=Scrap;
            return this;
        }

        function finish() as void{
        if(isNull(Small)) {
            logger.logError("Small ore is null, OreGrindingandSoaking application Skipped");
            return;
        }
        if(!isNull(Poor)){
            Crusher.addRecipe(Small*2, Poor, 2048);
            Grinder.addRecipe(Small, Poor,3);
        }
        if(!isNull(Normal)){
            Crusher.addRecipe(Small*3, Normal, 2048, Small, 0.1);
            Grinder.addRecipe(Small*2, Normal,5);

        }
        if(!isNull(Rich)){
            Crusher.addRecipe(Small*4, Rich, 2048, Small, 0.5);
            Grinder.addRecipe(Small*3, Rich,7);
        }     
        if(!isNull(Cluster)){
            SoakingPot.addRecipe(Small.name,Cluster,<liquid:sulfuric_acid>*100,Small*10,2400);
        }
        if(!isNull(Dusts)){
            mods.embers.Stamper.add(Dusts,<liquid:hydrochloric_acid>*250, <embers:stamp_flat>,Small*10);
        }
        if(!isNull(Scrap)){
            mods.advancedrocketry.ArcFurnace.addRecipe(Small*10, 20, 10, <tfc:powder/flux>*1, Scrap*1);
        }
    }    

}

OreGrindingandSoaking(<tfc:ore/small/bauxite>)
    .withPoor(<tfc:ore/bauxite:1>)
    .withNormal(<tfc:ore/bauxite>)
    .withRich(<tfc:ore/bauxite:2>)     
    .withCluster(<pyrotech:generated_slag_aluminium_custom>)
    .withDusts(<tfc:metal/dust/aluminium>)
    .withScrap(<tfc:metal/scrap/aluminium>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/bismuthinite>)
    .withPoor(<tfc:ore/bismuthinite:1>)
    .withNormal(<tfc:ore/bismuthinite>)
    .withRich(<tfc:ore/bismuthinite:2>)     
    .withCluster(<pyrotech:generated_slag_bismuth_custom>)
    .withDusts(<tfc:metal/dust/bismuth>)
    .withScrap(<tfc:metal/scrap/bismuth>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/cassiterite>)
    .withPoor(<tfc:ore/cassiterite:1>)
    .withNormal(<tfc:ore/cassiterite>)
    .withRich(<tfc:ore/cassiterite:2>)     
    .withCluster(<pyrotech:generated_slag_tin_custom>)
    .withDusts(<tfc:metal/dust/tin>)
    .withScrap(<tfc:metal/scrap/tin>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/cobaltite>)
    .withPoor(<tfc:ore/cobaltite:1>)
    .withNormal(<tfc:ore/cobaltite>)
    .withRich(<tfc:ore/cobaltite:2>)     
    .withCluster(<pyrotech:generated_slag_cobalt_custom>)
    .withDusts(<tfc:metal/dust/cobalt>)
    .withScrap(<tfc:metal/scrap/cobalt>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/galena>)
    .withPoor(<tfc:ore/galena:1>)
    .withNormal(<tfc:ore/galena>)
    .withRich(<tfc:ore/galena:2>)     
    .withCluster(<pyrotech:generated_slag_lead_custom>)
    .withDusts(<tfc:metal/dust/lead>)
    .withScrap(<tfc:metal/scrap/lead>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/garnierite>)
    .withPoor(<tfc:ore/garnierite:1>)
    .withNormal(<tfc:ore/garnierite>)
    .withRich(<tfc:ore/garnierite:2>)     
    .withCluster(<pyrotech:generated_slag_nickel_custom>)
    .withDusts(<tfc:metal/dust/nickel>)
    .withScrap(<tfc:metal/scrap/nickel>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/hematite>)
    .withPoor(<tfc:ore/hematite:1>)
    .withNormal(<tfc:ore/hematite>)
    .withRich(<tfc:ore/hematite:2>)     
    .withCluster(<pyrotech:generated_slag_iron_custom>)
    .withDusts(<tfc:metal/dust/wrought_iron>)
    .withScrap(<tfc:metal/scrap/wrought_iron>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/limonite>)
    .withPoor(<tfc:ore/limonite:1>)
    .withNormal(<tfc:ore/limonite>)
    .withRich(<tfc:ore/limonite:2>)     
    .withCluster(<pyrotech:generated_slag_iron_custom>)
    .withDusts(<tfc:metal/dust/wrought_iron>)
    .withScrap(<tfc:metal/scrap/wrought_iron>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/magnetite>)
    .withPoor(<tfc:ore/magnetite:1>)
    .withNormal(<tfc:ore/magnetite>)
    .withRich(<tfc:ore/magnetite:2>)     
    .withCluster(<pyrotech:generated_slag_iron_custom>)
    .withDusts(<tfc:metal/dust/wrought_iron>)
    .withScrap(<tfc:metal/scrap/wrought_iron>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/malachite>)
    .withPoor(<tfc:ore/malachite:1>)
    .withNormal(<tfc:ore/malachite>)
    .withRich(<tfc:ore/malachite:2>)     
    .withCluster(<pyrotech:generated_slag_copper_custom>)
    .withDusts(<tfc:metal/dust/copper>)
    .withScrap(<tfc:metal/scrap/copper>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/native_ardite>)
    .withPoor(<tfc:ore/native_ardite:1>)
    .withNormal(<tfc:ore/native_ardite>)
    .withRich(<tfc:ore/native_ardite:2>)     
    .withCluster(<pyrotech:generated_slag_ardite_custom>)
    .withDusts(<tfc:metal/dust/ardite>)
    .withScrap(<tfc:metal/scrap/ardite>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/native_copper>)
    .withPoor(<tfc:ore/native_copper:1>)
    .withNormal(<tfc:ore/native_copper>)
    .withRich(<tfc:ore/native_copper:2>)     
    .withCluster(<pyrotech:generated_slag_copper_custom>)
    .withDusts(<tfc:metal/dust/copper>)
    .withScrap(<tfc:metal/scrap/copper>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/native_gold>)
    .withPoor(<tfc:ore/native_gold:1>)
    .withNormal(<tfc:ore/native_gold>)
    .withRich(<tfc:ore/native_gold:2>)     
    .withCluster(<pyrotech:generated_slag_gold_custom>)
    .withDusts(<tfc:metal/dust/gold>)
    .withScrap(<tfc:metal/scrap/gold>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/native_osmium>)
    .withPoor(<tfc:ore/native_osmium:1>)
    .withNormal(<tfc:ore/native_osmium>)
    .withRich(<tfc:ore/native_osmium:2>)     
    .withCluster(<pyrotech:generated_slag_osmium_custom>)
    .withDusts(<tfc:metal/dust/osmium>)
    .withScrap(<tfc:metal/scrap/osmium>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/native_platinum>)
    .withPoor(<tfc:ore/native_platinum:1>)
    .withNormal(<tfc:ore/native_platinum>)
    .withRich(<tfc:ore/native_platinum:2>)     
    .withCluster(<pyrotech:generated_slag_platinum_custom>)
    .withDusts(<tfc:metal/dust/platinum>)
    .withScrap(<tfc:metal/scrap/platinum>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/native_silver>)
    .withPoor(<tfc:ore/native_silver:1>)
    .withNormal(<tfc:ore/native_silver>)
    .withRich(<tfc:ore/native_silver:2>)     
    .withCluster(<pyrotech:generated_slag_silver_custom>)
    .withDusts(<tfc:metal/dust/silver>)
    .withScrap(<tfc:metal/scrap/silver>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/sphalerite>)
    .withPoor(<tfc:ore/sphalerite:1>)
    .withNormal(<tfc:ore/sphalerite>)
    .withRich(<tfc:ore/sphalerite:2>)     
    .withCluster(<pyrotech:generated_slag_zinc_custom>)
    .withDusts(<tfc:metal/dust/zinc>)
    .withScrap(<tfc:metal/scrap/zinc>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/stibnite>)
    .withPoor(<tfc:ore/stibnite:1>)
    .withNormal(<tfc:ore/stibnite>)
    .withRich(<tfc:ore/stibnite:2>)     
    .withCluster(<pyrotech:generated_slag_antimony_custom>)
    .withDusts(<tfc:metal/dust/antimony>)
    .withScrap(<tfc:metal/scrap/antimony>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/tetrahedrite>)
    .withPoor(<tfc:ore/tetrahedrite:1>)
    .withNormal(<tfc:ore/tetrahedrite>)
    .withRich(<tfc:ore/tetrahedrite:2>)     
    .withCluster(<pyrotech:generated_slag_copper_custom>)
    .withDusts(<tfc:metal/dust/copper>)
    .withScrap(<tfc:metal/scrap/copper>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/wolframite>)
    .withPoor(<tfc:ore/wolframite:1>)
    .withNormal(<tfc:ore/wolframite>)
    .withRich(<tfc:ore/wolframite:2>)     
    .withCluster(<pyrotech:generated_slag_tungsten_custom>)
    .withDusts(<tfc:metal/dust/tungsten>)
    .withScrap(<tfc:metal/scrap/tungsten>)
    .finish();

/*
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
mods.immersiveengineering.Crusher.addRecipe(ISmall[j]*4, IRich[j], 2048, ISmall[j], 0.5) as OreGrindingandSoaking{
    this.=;
    return this;
};
Grinder.addRecipe(ISmall[j]*3, IRich[j],7);
}
for k, IR in INormal{
mods.immersiveengineering.Crusher.addRecipe(ISmall[k]*3, INormal[k], 2048, ISmall[k], 0.1);
Grinder.addRecipe(ISmall[k]*2, INormal[k],5);
}
for l, IR in IPoor{
mods.immersiveengineering.Crusher.addRecipe(ISmall[l]*2, IPoor[l], 2048);
Grinder.addRecipe(ISmall[l], IPoor[l],3);
}
#mods.immersiveengineering.Crusher.addRecipe(dust, Small[i]*10, 2048);
}

val CopRich = [<tfc:ore/native_copper:2>,<tfc:ore/malachite:2>,<tfc:ore/tetrahedrite:2>] as IItemStack[];
val CopNorm = [<tfc:ore/native_copper>,<tfc:ore/malachite>,<tfc:ore/tetrahedrite>] as IItemStack[];
val CopPoor = [<tfc:ore/native_copper:1>,<tfc:ore/malachite:1>,<tfc:ore/tetrahedrite:1>] as IItemStack[];
val CopSmal = [<tfc:ore/small/native_copper>,<tfc:ore/small/malachite>,<tfc:ore/small/tetrahedrite>] as IItemStack[]; 
for m, orecopper in CopSmal{
mods.immersiveengineering.Crusher.addRecipe(CopSmal[m]*4, CopRich[m], 2048, CopSmal[m], 0.5);
mods.immersiveengineering.Crusher.addRecipe(CopSmal[m]*3, CopNorm[m], 2048, CopSmal[m], 0.1);
mods.immersiveengineering.Crusher.addRecipe(CopSmal[m]*2, CopPoor[m], 2048);
Grinder.addRecipe(CopSmal[m]*3, CopRich[m],7);
Grinder.addRecipe(CopSmal[m]*2, CopNorm[m],5);
Grinder.addRecipe(CopSmal[m], CopPoor[m],3);

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

Grinder.addRecipe(IronSmal[n]*3, IronRich[n],7);
Grinder.addRecipe(IronSmal[n]*2, IronNorm[n],5);
Grinder.addRecipe(IronSmal[n], IronPoor[n],3);

//Pig Iron
mods.immersiveengineering.BlastFurnace.addRecipe(<tfc:metal/scrap/pig_iron>, IronSmal[n]*10, 2000); #Up Here Cause Easy

}
mods.immersiveengineering.Crusher.addRecipe(<tfc:metal/dust/wrought_iron>, <ore:oreIronSmall>*10, 2048);

*/
#=============================================================================================================================================		

//Iron

#mods.immersiveengineering.BlastFurnace.addRecipe(<tfc:bloom/unrefined>, <tfc:metal/dust/wrought_iron>, 2000);
#mods.immersiveengineering.MetalPress.addRecipe(<tfc:bloom/refined>, <tfc:bloom/unrefined>, <contenttweaker:striking_die>, 2000);

//Pig Iron


//Steelingot
BlastFurnace.remove(<railcraft:ingot>);
BlastFurnace.remove(<railcraft:nugget>);
BlastFurnace.remove(<railcraft:metal:3>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:pig_iron>*288, <tfc:powder/flux>, -0.75, 773.0, <liquid:steel>*144);


#mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/pig_iron>, <contenttweaker:striking_die>, 2000);
#mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/high_carbon_steel>, <contenttweaker:striking_die>, 2000);

//Sulfuric Acid

mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:iron_sulfate>, <ore:oreIronSmall>, <ore:dustSulfur>, 2400);

mods.pyrotech.StoneCrucible.addRecipe("Primtive_Sulfur_Trioxide",<liquid:sulfur_trioxide>*500,<contenttweaker:iron_sulfate>,2400,true);

val fluidcontainers = [<tfc:wooden_bucket>,<minecraft:bucket>,<tfc:metal/bucket/red_steel>,<forestry:can>,<forestry:refractory>,<tfctech:ceramics/fluid_bowl>] as IItemStack[];
for i, FC in fluidcontainers {
mods.terrafirmacraft.Barrel.addRecipe("Primitive Sulfuric Acid"~i, FC.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}), <liquid:sulfur_trioxide>*1000, FC, <liquid:sulfuric_acid>*1000, 4);
}
