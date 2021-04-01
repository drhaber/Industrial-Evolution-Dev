#priority 7

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import moretweaker.railcraft.BlastFurnace;
import mods.appliedenergistics2.Grinder;
import mods.terrafirmacraft.Quern;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.ArcFurnace;
import mods.pyrotech.SoakingPot;
import crafttweaker.liquid.ILiquidStack;
import mods.inworldcrafting.FluidToItem;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.CompactingBin;
import mods.cyclicmagic.Packager;

mods.immersiveengineering.Crusher.removeRecipe(<tfc:metal/dust/wrought_iron>);
mods.unidict.removalByKind.get("Furnace").remove("ingot");
mods.unidict.removalByKind.get("Crafting").remove("block");
mods.unidict.removalByKind.get("Crafting").remove("ingot");
mods.unidict.removalByKind.get("Crafting").remove("nugget");

mods.immersiveengineering.ArcFurnace.removeRecipe(<tfc:metal/ingot/bronze>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<tfc:metal/ingot/black_bronze>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<tfc:metal/ingot/bismuth_bronze>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:7>);

moretweaker.railcraft.RockCrusher.removeAll();

//Removals
    //Gears from Embers
    val StampedGears = [<mysticalmechanics:gear_iron>,<mysticalmechanics:gear_gold>,<mystgears:gear_lead>,<mystgears:gear_copper>,
    <mystgears:gear_tin>,<mystgears:gear_bronze>,<mystgears:gear_nickel>,<mystgears:gear_silver>,<mystgears:gear_electrum>,
    <mystgears:gear_aluminium>,<mystgears:gear_antimony>] as IItemStack[];
    for i, SG in StampedGears{
    mods.embers.Stamper.remove(SG);
    }
/*
    //Plates from Nuclear Craft 
    val sheets = [<tfc:metal/sheet/bismuth>,<tfc:metal/sheet/bismuth_bronze>,<tfc:metal/sheet/black_bronze>,<tfc:metal/sheet/brass>,
    <tfc:metal/sheet/bronze>,<tfc:metal/sheet/copper>,<tfc:metal/sheet/gold>,<tfc:metal/sheet/lead>,<tfc:metal/sheet/nickel>,
    <tfc:metal/sheet/rose_gold>,<tfc:metal/sheet/silver>,<tfc:metal/sheet/tin>,<tfc:metal/sheet/zinc>,<tfc:metal/sheet/sterling_silver>,
    <tfc:metal/sheet/wrought_iron>,<tfc:metal/sheet/pig_iron>,<tfc:metal/sheet/steel>,<tfc:metal/sheet/platinum>,<tfc:metal/sheet/black_steel>,
    <tfc:metal/sheet/blue_steel>,<tfc:metal/sheet/red_steel>,<tfc:metal/sheet/antimony>,<tfc:metal/sheet/constantan>,
    <tfc:metal/sheet/electrum>,<tfc:metal/sheet/mithril>,<tfc:metal/sheet/invar>,<tfc:metal/sheet/aluminium>,<tfc:metal/sheet/aluminium_brass>,
    <tfc:metal/sheet/ardite>,<tfc:metal/sheet/cobalt>,<tfc:metal/sheet/manyullyn>,<tfc:metal/sheet/osmium>,<tfc:metal/sheet/titanium>,
    <tfc:metal/sheet/tungsten>,<tfc:metal/sheet/tungsten_steel>,<embers:plate_dawnstone>,<thaumadditions:mithrillium_plate>,
    <thaumadditions:adaminite_plate>,<thaumadditions:mithminite_plate>,<thaumcraft:plate:2>,<thaumcraft:plate:3>,
    <advancedrocketry:productplate>,<advancedrocketry:productplate:1>,<libvulpes:productplate:3>,<libvulpes:productplate:10>] as IItemStack[];
    for sheet in sheets{
    mods.nuclearcraft.pressurizer.removeRecipeWithOutput(sheet);
    }
    mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<tfc:metal/sheet/nickel_silver>);
    mods.nuclearcraft.pressurizer.removeRecipeWithOutput(<tfc:metal/sheet/red_alloy>);
*/
    val EmbersPlates =[<embers:plate_copper>,<embers:plate_lead>,<embers:plate_silver>,<embers:plate_dawnstone>,
    <embers:plate_iron>,<embers:plate_gold>,<embers:plate_aluminum>,<embers:plate_bronze>,<embers:plate_electrum>,
    <embers:plate_nickel>,<embers:plate_tin>] as IItemStack[];
    for EP in EmbersPlates{
    mods.embers.Stamper.remove(EP);
    recipes.remove(EP);
    }
mods.embers.Stamper.remove(<embers:nugget_dawnstone>);
mods.embers.Stamper.remove(<embers:ingot_dawnstone>);

//Thorium
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide>, <tfc:ore/thorianite>, 2048, <nuclearcraft:dust_oxide:1>, 0.25);
//Magnesium
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 2048);
#Grinder.addRecipe(<nuclearcraft:dust:7>, <tfc:ore/magnesite>, 4);
//Lithium
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust:6>, <tfc:ore/spodumene>, 2048);

mods.immersiveengineering.CokeOven.addRecipe( <immersiveengineering:material:6>, 500,<tfc:ore/bituminous_coal>, 2000);

//Pitch Blend
#mods.immersiveengineering.Crusher.addRecipe(<nuclearcraft:dust_oxide:1>, <tfc:ore/pitchblende>, 2048, <nuclearcraft:dust_oxide:1>, 0.25);

//Adding Metals
#<tfcmetal:Gravitite>


val AlloyedIngots = [<tfc:metal/ingot/bronze>,<immersiveengineering:metal:6>,<immersiveengineering:metal:7>,<railcraft:ingot:7>,<forestry:ingot_bronze>,<railcraft:ingot:9>,<projectred-core:resource_item:103>
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

#=============================================================================================================================================		

zenClass MoltenHandleClass {
    var castingMetal as ILiquidStack;
	var axeHead as IItemStack;
	var propickHead as IItemStack;
	var pickHead as IItemStack;
	var shovelHead as IItemStack;
	var hoeHead as IItemStack;
	var chiselHead as IItemStack;
	var maceHead as IItemStack;
	var javelinHead as IItemStack;
	var swordBlade as IItemStack;
	var sawBlade as IItemStack;
	var knifePlate as IItemStack;
	var scythePlate as IItemStack;
	var hammerHead as IItemStack;
    var gears as IItemStack;
    var sheets as IItemStack;
    var ingots as IItemStack;
    var cluster as IItemStack;
    val dust as IItemStack;
    val block as IItemStack;
    val nugget as IItemStack;
    val scrap as IItemStack; 
    val seed as IItemStack;
    val longRod as IItemStack;

        zenConstructor(castingMetal as ILiquidStack){
            this.castingMetal = castingMetal;
	        this.axeHead = null;
	        this.propickHead = null;
	        this.pickHead = null;
	        this.shovelHead = null;
	        this.hoeHead = null;
	        this.chiselHead = null;
	        this.maceHead = null;
	        this.javelinHead = null;
	        this.swordBlade = null;
	        this.sawBlade = null;
	        this.knifePlate = null;
	        this.scythePlate = null;
	        this.hammerHead = null;
            this.gears = null;
            this.sheets = null;
            this.ingots = null;
            this.cluster = null;
            this.dust = null;
            this.block = null;
            this.nugget = null;
            this.scrap = null;
            this.seed = null;
            this.longRod = null;
        }
	function withaxeHead(axeHead as IItemStack) as MoltenHandleClass {
        this.axeHead=axeHead;
        return this;
    }
	function withpropickHead(propickHead as IItemStack) as MoltenHandleClass {
        this.propickHead=propickHead;
        return this;
    }
	function withpickHead(pickHead as IItemStack) as MoltenHandleClass {
        this.pickHead=pickHead;
        return this;
    }
	function withshovelHead(shovelHead as IItemStack) as MoltenHandleClass {
        this.shovelHead=shovelHead;
        return this;
    }
	function withhoeHead(hoeHead as IItemStack) as MoltenHandleClass {
        this.hoeHead=hoeHead;
        return this;
    }
	function withchiselHead(chiselHead as IItemStack) as MoltenHandleClass {
        this.chiselHead=chiselHead;
        return this;
    }
	function withmaceHead(maceHead as IItemStack) as MoltenHandleClass {
        this.maceHead=maceHead;
        return this;
    }
	function withjavelinHead(javelinHead as IItemStack) as MoltenHandleClass {
        this.javelinHead=javelinHead;
        return this;
    }
	function withswordBlade(swordBlade as IItemStack) as MoltenHandleClass {
        this.swordBlade=swordBlade;
        return this;
    }
	function withsawBlade(sawBlade as IItemStack) as MoltenHandleClass {
        this.sawBlade=sawBlade;
        return this;
    }
	function withknifePlate(knifePlate as IItemStack) as MoltenHandleClass {
        this.knifePlate=knifePlate;
        return this;
    }
	function withscythePlate(scythePlate as IItemStack) as MoltenHandleClass {
        this.scythePlate=scythePlate;
        return this;
    }
	function withhammerHead(hammerHead as IItemStack) as MoltenHandleClass {
        this.hammerHead=hammerHead;
        return this;
    }
    function withgears(gears as IItemStack) as MoltenHandleClass {
        this.gears=gears;
        return this;
    }
    function withsheets(sheets as IItemStack) as MoltenHandleClass {
        this.sheets=sheets;
        return this;
    }
    function withingots(ingots as IItemStack) as MoltenHandleClass {
        this.ingots=ingots;
        return this;
    }
    function withcluster(cluster as IItemStack) as MoltenHandleClass {
        this.cluster=cluster;
        return this;
    }
    function withdust(dust as IItemStack) as MoltenHandleClass {
        this.dust=dust;
        return this;
    }
    function withblock(block as IItemStack) as MoltenHandleClass {
        this.block=block;
        return this;
    }
    function withnugget(nugget as IItemStack) as MoltenHandleClass {
        this.nugget=nugget;
        return this;
    }
    function withscrap(scrap as IItemStack) as MoltenHandleClass {
        this.scrap=scrap;
        return this;
    }
    function withseedtorod(seed as IItemStack, longRod as IItemStack) as MoltenHandleClass {
        this.seed=seed;
        this.longRod=longRod;
        return this;
    }
    function finish() as void{
        if(isNull(castingMetal)) {
            logger.logError("liquid is null, MoltenHandleClass application Skipped");
            return;
        }
        mods.embers.Melter.remove(castingMetal*144);
        mods.embers.Melter.remove(castingMetal*16);

        
        if(!isNull(axeHead)){
            mods.embers.Stamper.add(axeHead,castingMetal*144, <tfc:ceramics/fired/mold/axe_head>,null);
            mods.tconstruct.Casting.addTableRecipe(axeHead,<tfc:ceramics/fired/mold/axe_head>,castingMetal,144,false,15*20);           
        }
	    if(!isNull(propickHead)){
            mods.embers.Stamper.add(propickHead,castingMetal*144, <tfc:ceramics/fired/mold/propick_head>,null);
            mods.tconstruct.Casting.addTableRecipe(propickHead,<tfc:ceramics/fired/mold/propick_head>,castingMetal,144,false,15*20);           
        }
	    if(!isNull(pickHead)){
            mods.embers.Stamper.add(pickHead,castingMetal*144, <tfc:ceramics/fired/mold/pick_head>,null);
            mods.tconstruct.Casting.addTableRecipe(pickHead,<tfc:ceramics/fired/mold/pick_head>,castingMetal,144,false,15*20);           
        }
	    if(!isNull(shovelHead)){
            mods.embers.Stamper.add(shovelHead,castingMetal*144, <tfc:ceramics/fired/mold/shovel_head>,null);
            mods.tconstruct.Casting.addTableRecipe(shovelHead,<tfc:ceramics/fired/mold/shovel_head>,castingMetal,144,false,15*20);
        }
	    if(!isNull(hoeHead)){
            mods.embers.Stamper.add(hoeHead,castingMetal*144, <tfc:ceramics/fired/mold/hoe_head>,null);
        }
	    if(!isNull(chiselHead)){
            mods.embers.Stamper.add(chiselHead,castingMetal*144, <tfc:ceramics/fired/mold/chisel_head>,null);
            mods.tconstruct.Casting.addTableRecipe(chiselHead,<tfc:ceramics/fired/mold/chisel_head>,castingMetal,144,false,15*20);
        }
	    if(!isNull(maceHead)){
            mods.embers.Stamper.add(maceHead,castingMetal*144, <tfc:ceramics/fired/mold/mace_head>,null);
            mods.tconstruct.Casting.addTableRecipe(maceHead,<tfc:ceramics/fired/mold/mace_head>,castingMetal,144,false,15*20);
        }
	    if(!isNull(javelinHead)){
            mods.embers.Stamper.add(javelinHead,castingMetal*144, <tfc:ceramics/fired/mold/javelin_head>,null);
            mods.tconstruct.Casting.addTableRecipe(javelinHead,<tfc:ceramics/fired/mold/javelin_head>,castingMetal,144,false,15*20);
        }
	    if(!isNull(swordBlade)){
            mods.embers.Stamper.add(swordBlade,castingMetal*144, <tfc:ceramics/fired/mold/sword_blade>,null);
            mods.tconstruct.Casting.addTableRecipe(swordBlade,<tfc:ceramics/fired/mold/sword_blade>,castingMetal,144,false,15*20);
        }
	    if(!isNull(sawBlade)){
            mods.embers.Stamper.add(sawBlade,castingMetal*144, <tfc:ceramics/fired/mold/saw_blade>,null);
            mods.tconstruct.Casting.addTableRecipe(sawBlade,<tfc:ceramics/fired/mold/saw_blade>,castingMetal,144,false,15*20);
        }
	    if(!isNull(knifePlate)){
            mods.embers.Stamper.add(knifePlate,castingMetal*144, <tfc:ceramics/fired/mold/knife_blade>,null);
            mods.tconstruct.Casting.addTableRecipe(knifePlate,<tfc:ceramics/fired/mold/knife_blade>,castingMetal,144,false,15*20);
        }
	    if(!isNull(scythePlate)){
            mods.embers.Stamper.add(scythePlate,castingMetal*144, <tfc:ceramics/fired/mold/scythe_blade>,null);
            mods.tconstruct.Casting.addTableRecipe(scythePlate,<tfc:ceramics/fired/mold/scythe_blade>,castingMetal,144,false,15*20);
        }
	    if(!isNull(hammerHead)){
            mods.embers.Stamper.add(hammerHead,castingMetal*144, <tfc:ceramics/fired/mold/hammer_head>,null);
            mods.tconstruct.Casting.addTableRecipe(hammerHead,<tfc:ceramics/fired/mold/hammer_head>,castingMetal,144,false,15*20);
        }
        if(!isNull(gears)){
            mods.embers.Stamper.add(gears,castingMetal*576,<embers:stamp_gear>,null);
            mods.tconstruct.Casting.addTableRecipe(gears,<tconstruct:cast_custom:4>,castingMetal,576,false,15*20);
        }
        if(!isNull(sheets)){
            mods.embers.Stamper.add(sheets,castingMetal*288,<embers:stamp_plate>,null);
            mods.tconstruct.Casting.addTableRecipe(sheets,<tconstruct:cast_custom:3>,castingMetal,288,false,15*20);
        }
        if(!isNull(ingots)){
            mods.embers.Stamper.add(ingots,castingMetal*144,<embers:stamp_bar>,null);
            mods.embers.Melter.add(castingMetal*144, ingots);
            recipes.remove(ingots);
            Packager.removeRecipe(ingots);
            mods.pyrotech.BrickCrucible.addRecipe(ingots.name,castingMetal*144,ingots,2400);
        }
        if(!isNull(cluster)){
            mods.embers.Melter.add(castingMetal*144, cluster);
            mods.pyrotech.BrickCrucible.addRecipe(castingMetal.name,castingMetal*144,cluster,2400);
            mods.tconstruct.Melting.addRecipe(castingMetal*144,cluster);
        }
        if(!isNull(dust)){
            mods.embers.Melter.add(castingMetal*144, dust);
            furnace.addRecipe(ingots, dust);
            mods.pyrotech.BrickCrucible.addRecipe(dust.name,castingMetal*144,dust,2400);
        }
        if(!isNull(block)){
            mods.embers.Melter.add(castingMetal*1296, block);
            mods.embers.Stamper.add(block,castingMetal*1296,<tfctech:ceramics/mold/glass_block>,null);
            GraniteAnvil.addRecipe(block.name,ingots*9,block,4,"hammer",true);
            CompactingBin.addRecipe(block.name,block,ingots,9,true);
            recipes.remove(block);
            Packager.removeRecipe(block);
            Packager.addRecipe(block, ingots*9);
            Packager.addRecipe(ingots*9, block);
        } 
         if(!isNull(nugget)){
            mods.embers.Melter.add(castingMetal*16, nugget);
            mods.embers.Stamper.add(nugget,castingMetal*16,<soot:stamp_nugget>,null);
            GraniteAnvil.addRecipe(nugget.name,nugget*9,ingots,4,"hammer",true);
            CompactingBin.addRecipe(nugget.name,ingots,nugget,9,true);
            recipes.remove(nugget);
            Packager.removeRecipe(nugget);
            Packager.addRecipe(ingots, nugget*9);
            Packager.addRecipe(nugget*9, ingots);
            mods.pyrotech.BrickCrucible.addRecipe(nugget.name,castingMetal*16,nugget,2400);
        }
        if(!isNull(scrap)){
            mods.embers.Melter.add(castingMetal*144, scrap);
            ArcFurnace.addRecipe(ingots, scrap, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:ceramics/fired/mold/ingot>]);
            mods.pyrotech.BrickCrucible.addRecipe(scrap.name,castingMetal*144,scrap,2400);
            mods.tconstruct.Melting.addRecipe(castingMetal*144,scrap);
        }
        if(!isNull(seed) && !isNull(longRod)) {
            mods.advancedrocketry.Crystallizer.addRecipe(longRod*3, 200, 10, seed);
        }   
    }     
}

MoltenHandleClass(<liquid:aluminium>)
	.withaxeHead(<tfc:metal/axe_head/aluminium>)
	.withpropickHead(<tfc:metal/propick_head/aluminium>)
	.withpickHead(<tfc:metal/pick_head/aluminium>)
	.withshovelHead(<tfc:metal/shovel_head/aluminium>)
	.withhoeHead(<tfc:metal/hoe_head/aluminium>)
	.withchiselHead(<tfc:metal/chisel_head/aluminium>)
	.withmaceHead(<tfc:metal/mace_head/aluminium>)
	.withjavelinHead(<tfc:metal/javelin_head/aluminium>)
	.withswordBlade(<tfc:metal/sword_blade/aluminium>)
	.withsawBlade(<tfc:metal/saw_blade/aluminium>)
	.withknifePlate(<tfc:metal/knife_blade/aluminium>)
	.withscythePlate(<tfc:metal/scythe_blade/aluminium>)
	.withhammerHead(<tfc:metal/hammer_head/aluminium>)
    .withgears(<tfctech:metal/aluminium_rackwheel>)
    .withsheets(<tfc:metal/sheet/aluminium>)
    .withingots(<tfc:metal/ingot/aluminium>)
    .withdust(<tfc:metal/dust/aluminium>)
    .withblock(<immersiveengineering:storage:1>)
    .withnugget(<tfc:metal/nugget/aluminium>)
    .withscrap(<tfc:metal/scrap/aluminium>)
    .withseedtorod(<embers:seed_aluminum>,<tfctech:metal/aluminium_long_rod>)
    .finish();
MoltenHandleClass(<liquid:aluminium_brass>)
    .withgears(<tfctech:metal/aluminium_brass_rackwheel>)
    .withsheets(<tfc:metal/sheet/aluminium_brass>)
    .withingots(<tfc:metal/ingot/aluminium_brass>)
    .withdust(<tfc:metal/dust/aluminium_brass>)
    .withnugget(<tfc:metal/nugget/aluminium_brass>)
    .withscrap(<tfc:metal/scrap/aluminium_brass>)
    .finish();
MoltenHandleClass(<liquid:antimony>)
    .withgears(<tfctech:metal/antimony_rackwheel>)
    .withsheets(<tfc:metal/sheet/antimony>)
    .withingots(<tfc:metal/ingot/antimony>)
    .withcluster(<pyrotech:generated_slag_antimony_custom>)
    .withdust(<tfc:metal/dust/antimony>)
    .withnugget(<tfc:metal/nugget/antimony>)
    .withscrap(<tfc:metal/scrap/antimony>)
    .finish();  
MoltenHandleClass(<liquid:ardite>)
    .withgears(<tfctech:metal/ardite_rackwheel>)
    .withsheets(<tfc:metal/sheet/ardite>)
    .withingots(<tfc:metal/ingot/ardite>)
    .withcluster(<pyrotech:generated_slag_ardite_custom>)
    .withdust(<tfc:metal/dust/ardite>)
    .withnugget(<tfc:metal/nugget/ardite>)
    .withscrap(<tfc:metal/scrap/ardite>)
    .finish();   
MoltenHandleClass(<liquid:bismuth>)
    .withgears(<tfctech:metal/bismuth_rackwheel>)
    .withsheets(<tfc:metal/sheet/bismuth>)
    .withingots(<tfc:metal/ingot/bismuth>)
    .withcluster(<pyrotech:generated_slag_bismuth_custom>)
    .withdust(<tfc:metal/dust/bismuth>)
    .withnugget(<tfc:metal/nugget/bismuth>)
    .withscrap(<tfc:metal/scrap/bismuth>)
    .finish();    
MoltenHandleClass(<liquid:bismuth_bronze>)
	.withaxeHead(<tfc:metal/axe_head/bismuth_bronze>)
	.withpropickHead(<tfc:metal/propick_head/bismuth_bronze>)
	.withpickHead(<tfc:metal/pick_head/bismuth_bronze>)
	.withshovelHead(<tfc:metal/shovel_head/bismuth_bronze>)
	.withhoeHead(<tfc:metal/hoe_head/bismuth_bronze>)
	.withchiselHead(<tfc:metal/chisel_head/bismuth_bronze>)
	.withmaceHead(<tfc:metal/mace_head/bismuth_bronze>)
	.withjavelinHead(<tfc:metal/javelin_head/bismuth_bronze>)
	.withswordBlade(<tfc:metal/sword_blade/bismuth_bronze>)
	.withsawBlade(<tfc:metal/saw_blade/bismuth_bronze>)
	.withknifePlate(<tfc:metal/knife_blade/bismuth_bronze>)
	.withscythePlate(<tfc:metal/scythe_blade/bismuth_bronze>)
	.withhammerHead(<tfc:metal/hammer_head/bismuth_bronze>)
    .withgears(<tfctech:metal/bismuth_bronze_rackwheel>)
    .withsheets(<tfc:metal/sheet/bismuth_bronze>)
    .withingots(<tfc:metal/ingot/bismuth_bronze>)
    .withdust(<tfc:metal/dust/bismuth_bronze>)
    .withnugget(<tfc:metal/nugget/bismuth_bronze>)
    .withscrap(<tfc:metal/scrap/bismuth_bronze>)
    .finish(); 
MoltenHandleClass(<liquid:black_bronze>)
	.withaxeHead(<tfc:metal/axe_head/black_bronze>)
	.withpropickHead(<tfc:metal/propick_head/black_bronze>)
	.withpickHead(<tfc:metal/pick_head/black_bronze>)
	.withshovelHead(<tfc:metal/shovel_head/black_bronze>)
	.withhoeHead(<tfc:metal/hoe_head/black_bronze>)
	.withchiselHead(<tfc:metal/chisel_head/black_bronze>)
	.withmaceHead(<tfc:metal/mace_head/black_bronze>)
	.withjavelinHead(<tfc:metal/javelin_head/black_bronze>)
	.withswordBlade(<tfc:metal/sword_blade/black_bronze>)
	.withsawBlade(<tfc:metal/saw_blade/black_bronze>)
	.withknifePlate(<tfc:metal/knife_blade/black_bronze>)
	.withscythePlate(<tfc:metal/scythe_blade/black_bronze>)
	.withhammerHead(<tfc:metal/hammer_head/black_bronze>)
    .withgears(<tfctech:metal/black_bronze_rackwheel>)
    .withsheets(<tfc:metal/sheet/black_bronze>)
    .withingots(<tfc:metal/ingot/black_bronze>)
    .withdust(<tfc:metal/dust/black_bronze>)
    .withnugget(<tfc:metal/nugget/black_bronze>)
    .withscrap(<tfc:metal/scrap/black_bronze>)
    .finish(); 
MoltenHandleClass(<liquid:black_steel>)
	.withaxeHead(<tfc:metal/axe_head/black_steel>)
	.withpropickHead(<tfc:metal/propick_head/black_steel>)
	.withpickHead(<tfc:metal/pick_head/black_steel>)
	.withshovelHead(<tfc:metal/shovel_head/black_steel>)
	.withhoeHead(<tfc:metal/hoe_head/black_steel>)
	.withchiselHead(<tfc:metal/chisel_head/black_steel>)
	.withmaceHead(<tfc:metal/mace_head/black_steel>)
	.withjavelinHead(<tfc:metal/javelin_head/black_steel>)
	.withswordBlade(<tfc:metal/sword_blade/black_steel>)
	.withsawBlade(<tfc:metal/saw_blade/black_steel>)
	.withknifePlate(<tfc:metal/knife_blade/black_steel>)
	.withscythePlate(<tfc:metal/scythe_blade/black_steel>)
	.withhammerHead(<tfc:metal/hammer_head/black_steel>)
    .withgears(<tfctech:metal/black_steel_rackwheel>)
    .withsheets(<tfc:metal/sheet/black_steel>)
    .withingots(<tfc:metal/ingot/black_steel>)
    .withdust(<tfc:metal/dust/black_steel>)
    .withnugget(<tfc:metal/nugget/black_steel>)
    .withscrap(<tfc:metal/scrap/black_steel>)
    .finish();     
MoltenHandleClass(<liquid:blue_steel>)
	.withaxeHead(<tfc:metal/axe_head/blue_steel>)
	.withpropickHead(<tfc:metal/propick_head/blue_steel>)
	.withpickHead(<tfc:metal/pick_head/blue_steel>)
	.withshovelHead(<tfc:metal/shovel_head/blue_steel>)
	.withhoeHead(<tfc:metal/hoe_head/blue_steel>)
	.withchiselHead(<tfc:metal/chisel_head/blue_steel>)
	.withmaceHead(<tfc:metal/mace_head/blue_steel>)
	.withjavelinHead(<tfc:metal/javelin_head/blue_steel>)
	.withswordBlade(<tfc:metal/sword_blade/blue_steel>)
	.withsawBlade(<tfc:metal/saw_blade/blue_steel>)
	.withknifePlate(<tfc:metal/knife_blade/blue_steel>)
	.withscythePlate(<tfc:metal/scythe_blade/blue_steel>)
	.withhammerHead(<tfc:metal/hammer_head/blue_steel>)
    .withgears(<tfctech:metal/blue_steel_rackwheel>)
    .withsheets(<tfc:metal/sheet/blue_steel>)
    .withingots(<tfc:metal/ingot/blue_steel>)
    .withdust(<tfc:metal/dust/blue_steel>)
    .withnugget(<tfc:metal/nugget/blue_steel>)
    .withscrap(<tfc:metal/scrap/blue_steel>)
    .finish();     
MoltenHandleClass(<liquid:brass>)
    .withgears(<tfctech:metal/brass_rackwheel>)
    .withsheets(<tfc:metal/sheet/brass>)
    .withingots(<tfc:metal/ingot/brass>)
    .withdust(<tfc:metal/dust/brass>)
    .withnugget(<tfc:metal/nugget/brass>)
    .withscrap(<tfc:metal/scrap/brass>)
    .finish();
MoltenHandleClass(<liquid:bronze>)
	.withaxeHead(<tfc:metal/axe_head/bronze>)
	.withpropickHead(<tfc:metal/propick_head/bronze>)
	.withpickHead(<tfc:metal/pick_head/bronze>)
	.withshovelHead(<tfc:metal/shovel_head/bronze>)
	.withhoeHead(<tfc:metal/hoe_head/bronze>)
	.withchiselHead(<tfc:metal/chisel_head/bronze>)
	.withmaceHead(<tfc:metal/mace_head/bronze>)
	.withjavelinHead(<tfc:metal/javelin_head/bronze>)
	.withswordBlade(<tfc:metal/sword_blade/bronze>)
	.withsawBlade(<tfc:metal/saw_blade/bronze>)
	.withknifePlate(<tfc:metal/knife_blade/bronze>)
	.withscythePlate(<tfc:metal/scythe_blade/bronze>)
	.withhammerHead(<tfc:metal/hammer_head/bronze>)
    .withgears(<tfctech:metal/bronze_rackwheel>)
    .withsheets(<tfc:metal/sheet/bronze>)
    .withingots(<tfc:metal/ingot/bronze>)
    .withdust(<tfc:metal/dust/bronze>)
    .withnugget(<tfc:metal/nugget/bronze>)
    .withscrap(<tfc:metal/scrap/bronze>)
    .finish(); 
MoltenHandleClass(<liquid:cobalt>)
	.withaxeHead(<tfc:metal/axe_head/cobalt>)
	.withpropickHead(<tfc:metal/propick_head/cobalt>)
	.withpickHead(<tfc:metal/pick_head/cobalt>)
	.withshovelHead(<tfc:metal/shovel_head/cobalt>)
	.withhoeHead(<tfc:metal/hoe_head/cobalt>)
	.withchiselHead(<tfc:metal/chisel_head/cobalt>)
	.withmaceHead(<tfc:metal/mace_head/cobalt>)
	.withjavelinHead(<tfc:metal/javelin_head/cobalt>)
	.withswordBlade(<tfc:metal/sword_blade/cobalt>)
	.withsawBlade(<tfc:metal/saw_blade/cobalt>)
	.withknifePlate(<tfc:metal/knife_blade/cobalt>)
	.withscythePlate(<tfc:metal/scythe_blade/cobalt>)
	.withhammerHead(<tfc:metal/hammer_head/cobalt>)
    .withgears(<tfctech:metal/cobalt_rackwheel>)
    .withsheets(<tfc:metal/sheet/cobalt>)
    .withingots(<tfc:metal/ingot/cobalt>)
    .withcluster(<pyrotech:generated_slag_cobalt_custom>)
    .withdust(<tfc:metal/dust/cobalt>)
    .withblock(<chisel:blockcobalt>)
    .withnugget(<tfc:metal/nugget/cobalt>)
    .withscrap(<tfc:metal/scrap/cobalt>)
    .finish();  
MoltenHandleClass(<liquid:constantan>)
    .withgears(<tfctech:metal/constantan_rackwheel>)
    .withsheets(<tfc:metal/sheet/constantan>)
    .withingots(<tfc:metal/ingot/constantan>)
    .withdust(<tfc:metal/dust/constantan>)
    .withblock(<immersiveengineering:storage:6>)
    .withnugget(<tfc:metal/nugget/constantan>)
    .withscrap(<tfc:metal/scrap/constantan>)
    .finish();
MoltenHandleClass(<liquid:copper>)
	.withaxeHead(<tfc:metal/axe_head/copper>)
	.withpropickHead(<tfc:metal/propick_head/copper>)
	.withpickHead(<tfc:metal/pick_head/copper>)
	.withshovelHead(<tfc:metal/shovel_head/copper>)
	.withhoeHead(<tfc:metal/hoe_head/copper>)
	.withchiselHead(<tfc:metal/chisel_head/copper>)
	.withmaceHead(<tfc:metal/mace_head/copper>)
	.withjavelinHead(<tfc:metal/javelin_head/copper>)
	.withswordBlade(<tfc:metal/sword_blade/copper>)
	.withsawBlade(<tfc:metal/saw_blade/copper>)
	.withknifePlate(<tfc:metal/knife_blade/copper>)
	.withscythePlate(<tfc:metal/scythe_blade/copper>)
	.withhammerHead(<tfc:metal/hammer_head/copper>)
    .withgears(<tfctech:metal/copper_rackwheel>)
    .withsheets(<tfc:metal/sheet/copper>)
    .withingots(<tfc:metal/ingot/copper>)
    .withcluster(<pyrotech:generated_slag_copper_custom>)
    .withdust(<tfc:metal/dust/copper>)
    .withblock(<railcraft:metal>)
    .withnugget(<tfc:metal/nugget/copper>)
    .withscrap(<tfc:metal/scrap/copper>)
    .withseedtorod(<embers:seed_copper>,<tfctech:metal/copper_long_rod>)
    .finish();
MoltenHandleClass(<liquid:electrum>)
    .withgears(<tfctech:metal/electrum_rackwheel>)
    .withsheets(<tfc:metal/sheet/electrum>)
    .withingots(<tfc:metal/ingot/electrum>)
    .withdust(<tfc:metal/dust/electrum>)
    .withblock(<immersiveengineering:storage:7>)
    .withnugget(<tfc:metal/nugget/electrum>)
    .withscrap(<tfc:metal/scrap/electrum>)
    .finish();
MoltenHandleClass(<liquid:gold>)
	.withshovelHead(<contenttweaker:gold_shovel_head>)
    .withgears(<tfctech:metal/gold_rackwheel>)
    .withsheets(<tfc:metal/sheet/gold>)
    .withingots(<tfc:metal/ingot/gold>)
    .withcluster(<pyrotech:generated_slag_gold_custom>)
    .withdust(<tfc:metal/dust/gold>)
    .withblock(<minecraft:gold_block>)
    .withnugget(<tfc:metal/nugget/gold>)
    .withscrap(<tfc:metal/scrap/gold>)
    .withseedtorod(<embers:seed_gold>,<tfctech:metal/gold_long_rod>)
    .finish(); 
MoltenHandleClass(<liquid:invar>)
	.withaxeHead(<tfc:metal/axe_head/invar>)
	.withpropickHead(<tfc:metal/propick_head/invar>)
	.withpickHead(<tfc:metal/pick_head/invar>)
	.withshovelHead(<tfc:metal/shovel_head/invar>)
	.withhoeHead(<tfc:metal/hoe_head/invar>)
	.withchiselHead(<tfc:metal/chisel_head/invar>)
	.withmaceHead(<tfc:metal/mace_head/invar>)
	.withjavelinHead(<tfc:metal/javelin_head/invar>)
	.withswordBlade(<tfc:metal/sword_blade/invar>)
	.withsawBlade(<tfc:metal/saw_blade/invar>)
	.withknifePlate(<tfc:metal/knife_blade/invar>)
	.withscythePlate(<tfc:metal/scythe_blade/invar>)
	.withhammerHead(<tfc:metal/hammer_head/invar>)
    .withgears(<tfctech:metal/invar_rackwheel>)
    .withsheets(<tfc:metal/sheet/invar>)
    .withingots(<tfc:metal/ingot/invar>)
    .withdust(<tfc:metal/dust/invar>)
    .withnugget(<tfc:metal/nugget/invar>)
    .withscrap(<tfc:metal/scrap/invar>)
    .finish();    
MoltenHandleClass(<liquid:iron>)
	.withaxeHead(<tfc:metal/axe_head/wrought_iron>)
	.withpropickHead(<tfc:metal/propick_head/wrought_iron>)
	.withpickHead(<tfc:metal/pick_head/wrought_iron>)
	.withshovelHead(<tfc:metal/shovel_head/wrought_iron>)
	.withhoeHead(<tfc:metal/hoe_head/wrought_iron>)
	.withchiselHead(<tfc:metal/chisel_head/wrought_iron>)
	.withmaceHead(<tfc:metal/mace_head/wrought_iron>)
	.withjavelinHead(<tfc:metal/javelin_head/wrought_iron>)
	.withswordBlade(<tfc:metal/sword_blade/wrought_iron>)
	.withsawBlade(<tfc:metal/saw_blade/wrought_iron>)
	.withknifePlate(<tfc:metal/knife_blade/wrought_iron>)
	.withscythePlate(<tfc:metal/scythe_blade/wrought_iron>)
	.withhammerHead(<tfc:metal/hammer_head/wrought_iron>)
    .withgears(<tfctech:metal/wrought_iron_rackwheel>)
    .withsheets(<tfc:metal/sheet/wrought_iron>)
    .withingots(<tfc:metal/ingot/wrought_iron>)
    #.withcluster(<pyrotech:generated_slag_iron_custom>)
    .withdust(<tfc:metal/dust/wrought_iron>)
    .withblock(<minecraft:iron_block>)
    .withnugget(<tfc:metal/nugget/wrought_iron>)
    .withscrap(<tfc:metal/scrap/wrought_iron>)
    .withseedtorod(<embers:seed_iron>,<tfctech:metal/wrought_iron_long_rod>)
    .finish();
MoltenHandleClass(<liquid:lead>)
    .withgears(<tfctech:metal/lead_rackwheel>)
    .withsheets(<tfc:metal/sheet/lead>)
    .withingots(<tfc:metal/ingot/lead>)
    .withcluster(<pyrotech:generated_slag_lead_custom>)
    .withdust(<tfc:metal/dust/lead>)
    .withblock(<immersiveengineering:storage:2>)
    .withnugget(<tfc:metal/nugget/lead>)
    .withscrap(<tfc:metal/scrap/lead>)
    .withseedtorod(<embers:seed_lead>,<tfctech:metal/lead_long_rod>)
    .finish(); 
MoltenHandleClass(<liquid:manyullyn>)
	.withaxeHead(<tfc:metal/axe_head/manyullyn>)
	.withpropickHead(<tfc:metal/propick_head/manyullyn>)
	.withpickHead(<tfc:metal/pick_head/manyullyn>)
	.withshovelHead(<tfc:metal/shovel_head/manyullyn>)
	.withhoeHead(<tfc:metal/hoe_head/manyullyn>)
	.withchiselHead(<tfc:metal/chisel_head/manyullyn>)
	.withmaceHead(<tfc:metal/mace_head/manyullyn>)
	.withjavelinHead(<tfc:metal/javelin_head/manyullyn>)
	.withswordBlade(<tfc:metal/sword_blade/manyullyn>)
	.withsawBlade(<tfc:metal/saw_blade/manyullyn>)
	.withknifePlate(<tfc:metal/knife_blade/manyullyn>)
	.withscythePlate(<tfc:metal/scythe_blade/manyullyn>)
	.withhammerHead(<tfc:metal/hammer_head/manyullyn>)
    .withgears(<tfctech:metal/manyullyn_rackwheel>)
    .withsheets(<tfc:metal/sheet/manyullyn>)
    .withingots(<tfc:metal/ingot/manyullyn>)
    .withdust(<tfc:metal/dust/manyullyn>)
    .withnugget(<tfc:metal/nugget/manyullyn>)
    .withscrap(<tfc:metal/scrap/manyullyn>)
    .finish();      
MoltenHandleClass(<liquid:mithril>)
	.withaxeHead(<tfc:metal/axe_head/mithril>)
	.withpropickHead(<tfc:metal/propick_head/mithril>)
	.withpickHead(<tfc:metal/pick_head/mithril>)
	.withshovelHead(<tfc:metal/shovel_head/mithril>)
	.withhoeHead(<tfc:metal/hoe_head/mithril>)
	.withchiselHead(<tfc:metal/chisel_head/mithril>)
	.withmaceHead(<tfc:metal/mace_head/mithril>)
	.withjavelinHead(<tfc:metal/javelin_head/mithril>)
	.withswordBlade(<tfc:metal/sword_blade/mithril>)
	.withsawBlade(<tfc:metal/saw_blade/mithril>)
	.withknifePlate(<tfc:metal/knife_blade/mithril>)
	.withscythePlate(<tfc:metal/scythe_blade/mithril>)
	.withhammerHead(<tfc:metal/hammer_head/mithril>)
    .withgears(<tfctech:metal/mithril_rackwheel>)
    .withsheets(<tfc:metal/sheet/mithril>)
    .withingots(<tfc:metal/ingot/mithril>)
    .withdust(<tfc:metal/dust/mithril>)
    .withnugget(<tfc:metal/nugget/mithril>)
    .withscrap(<tfc:metal/scrap/mithril>)
    .finish();   
MoltenHandleClass(<liquid:nickel>)
    .withgears(<tfctech:metal/nickel_rackwheel>)
    .withsheets(<tfc:metal/sheet/nickel>)
    .withingots(<tfc:metal/ingot/nickel>)
    .withcluster(<pyrotech:generated_slag_nickel_custom>)
    .withdust(<tfc:metal/dust/nickel>)
    .withblock(<immersiveengineering:storage:4>)
    .withnugget(<tfc:metal/nugget/nickel>)
    .withscrap(<tfc:metal/scrap/nickel>)
    .withseedtorod(<embers:seed_nickel>,<tfctech:metal/nickel_long_rod>)
    .finish();  
MoltenHandleClass(<liquid:osmium>)
	.withaxeHead(<tfc:metal/axe_head/osmium>)
	.withpropickHead(<tfc:metal/propick_head/osmium>)
	.withpickHead(<tfc:metal/pick_head/osmium>)
	.withshovelHead(<tfc:metal/shovel_head/osmium>)
	.withhoeHead(<tfc:metal/hoe_head/osmium>)
	.withchiselHead(<tfc:metal/chisel_head/osmium>)
	.withmaceHead(<tfc:metal/mace_head/osmium>)
	.withjavelinHead(<tfc:metal/javelin_head/osmium>)
	.withswordBlade(<tfc:metal/sword_blade/osmium>)
	.withsawBlade(<tfc:metal/saw_blade/osmium>)
	.withknifePlate(<tfc:metal/knife_blade/osmium>)
	.withscythePlate(<tfc:metal/scythe_blade/osmium>)
	.withhammerHead(<tfc:metal/hammer_head/osmium>)
    .withgears(<tfctech:metal/osmium_rackwheel>)
    .withsheets(<tfc:metal/sheet/osmium>)
    .withingots(<tfc:metal/ingot/osmium>)
    .withcluster(<pyrotech:generated_slag_osmium_custom>)
    .withdust(<tfc:metal/dust/osmium>)
    .withnugget(<tfc:metal/nugget/osmium>)
    .withscrap(<tfc:metal/scrap/osmium>)
    .finish();    
MoltenHandleClass(<liquid:pig_iron>)
    .withgears(<tfctech:metal/pig_iron_rackwheel>)
    .withsheets(<tfc:metal/sheet/pig_iron>)
    .withingots(<tfc:metal/ingot/pig_iron>)
    .withdust(<tfc:metal/dust/pig_iron>)
    .withnugget(<tfc:metal/nugget/pig_iron>)
    .withscrap(<tfc:metal/scrap/pig_iron>)
    .finish(); 
MoltenHandleClass(<liquid:platinum>)
    .withgears(<tfctech:metal/platinum_rackwheel>)
    .withsheets(<tfc:metal/sheet/platinum>)
    .withingots(<tfc:metal/ingot/platinum>)
    .withcluster(<pyrotech:generated_slag_platinum_custom>)
    .withdust(<tfc:metal/dust/platinum>)
    .withblock(<chisel:blockplatinum>)
    .withnugget(<tfc:metal/nugget/platinum>)
    .withscrap(<tfc:metal/scrap/platinum>)
    .finish();  
MoltenHandleClass(<liquid:red_steel>)
	.withaxeHead(<tfc:metal/axe_head/red_steel>)
	.withpropickHead(<tfc:metal/propick_head/red_steel>)
	.withpickHead(<tfc:metal/pick_head/red_steel>)
	.withshovelHead(<tfc:metal/shovel_head/red_steel>)
	.withhoeHead(<tfc:metal/hoe_head/red_steel>)
	.withchiselHead(<tfc:metal/chisel_head/red_steel>)
	.withmaceHead(<tfc:metal/mace_head/red_steel>)
	.withjavelinHead(<tfc:metal/javelin_head/red_steel>)
	.withswordBlade(<tfc:metal/sword_blade/red_steel>)
	.withsawBlade(<tfc:metal/saw_blade/red_steel>)
	.withknifePlate(<tfc:metal/knife_blade/red_steel>)
	.withscythePlate(<tfc:metal/scythe_blade/red_steel>)
	.withhammerHead(<tfc:metal/hammer_head/red_steel>)
    .withgears(<tfctech:metal/red_steel_rackwheel>)
    .withsheets(<tfc:metal/sheet/red_steel>)
    .withingots(<tfc:metal/ingot/red_steel>)
    .withdust(<tfc:metal/dust/red_steel>)
    .withnugget(<tfc:metal/nugget/red_steel>)
    .withscrap(<tfc:metal/scrap/red_steel>)
    .finish(); 
MoltenHandleClass(<liquid:rose_gold>)
    .withgears(<tfctech:metal/rose_gold_rackwheel>)
    .withsheets(<tfc:metal/sheet/rose_gold>)
    .withingots(<tfc:metal/ingot/rose_gold>)
    .withdust(<tfc:metal/dust/rose_gold>)
    .withnugget(<tfc:metal/nugget/rose_gold>)
    .withscrap(<tfc:metal/scrap/rose_gold>)
    .finish(); 
MoltenHandleClass(<liquid:silver>)
    .withgears(<tfctech:metal/silver_rackwheel>)
    .withsheets(<tfc:metal/sheet/silver>)
    .withingots(<tfc:metal/ingot/silver>)
    .withcluster(<pyrotech:generated_slag_silver_custom>)
    .withdust(<tfc:metal/dust/silver>)
    .withblock(<immersiveengineering:storage:3>)
    .withnugget(<tfc:metal/nugget/silver>)
    .withscrap(<tfc:metal/scrap/silver>)
    .withseedtorod(<embers:seed_silver>,<tfctech:metal/silver_long_rod>)
    .finish(); 
MoltenHandleClass(<liquid:steel>)
	.withaxeHead(<tfc:metal/axe_head/steel>)
	.withpropickHead(<tfc:metal/propick_head/steel>)
	.withpickHead(<tfc:metal/pick_head/steel>)
	.withshovelHead(<tfc:metal/shovel_head/steel>)
	.withhoeHead(<tfc:metal/hoe_head/steel>)
	.withchiselHead(<tfc:metal/chisel_head/steel>)
	.withmaceHead(<tfc:metal/mace_head/steel>)
	.withjavelinHead(<tfc:metal/javelin_head/steel>)
	.withswordBlade(<tfc:metal/sword_blade/steel>)
	.withsawBlade(<tfc:metal/saw_blade/steel>)
	.withknifePlate(<tfc:metal/knife_blade/steel>)
	.withscythePlate(<tfc:metal/scythe_blade/steel>)
	.withhammerHead(<tfc:metal/hammer_head/steel>)
    .withgears(<tfctech:metal/steel_rackwheel>)
    .withsheets(<tfc:metal/sheet/steel>)
    .withingots(<tfc:metal/ingot/steel>)
    .withdust(<tfc:metal/dust/steel>)
    .withnugget(<tfc:metal/nugget/steel>)
    .withscrap(<tfc:metal/scrap/steel>)
    .finish(); 
MoltenHandleClass(<liquid:sterling_silver>)
    .withgears(<tfctech:metal/sterling_silver_rackwheel>)
    .withsheets(<tfc:metal/sheet/sterling_silver>)
    .withingots(<tfc:metal/ingot/sterling_silver>)
    .withdust(<tfc:metal/dust/sterling_silver>)
    .withnugget(<tfc:metal/nugget/sterling_silver>)
    .withscrap(<tfc:metal/scrap/sterling_silver>)
    .finish(); 
MoltenHandleClass(<liquid:tin>)
    .withgears(<tfctech:metal/tin_rackwheel>)
    .withsheets(<tfc:metal/sheet/tin>)
    .withingots(<tfc:metal/ingot/tin>)
    .withcluster(<pyrotech:generated_slag_tin_custom>)
    .withdust(<tfc:metal/dust/tin>)
    .withblock(<railcraft:metal:1>)
    .withnugget(<tfc:metal/nugget/tin>)
    .withscrap(<tfc:metal/scrap/tin>)
    .withseedtorod(<embers:seed_tin>,<tfctech:metal/tin_long_rod>)
    .finish();  
MoltenHandleClass(<liquid:titanium>)
	.withaxeHead(<tfc:metal/axe_head/titanium>)
	.withpropickHead(<tfc:metal/propick_head/titanium>)
	.withpickHead(<tfc:metal/pick_head/titanium>)
	.withshovelHead(<tfc:metal/shovel_head/titanium>)
	.withhoeHead(<tfc:metal/hoe_head/titanium>)
	.withchiselHead(<tfc:metal/chisel_head/titanium>)
	.withmaceHead(<tfc:metal/mace_head/titanium>)
	.withjavelinHead(<tfc:metal/javelin_head/titanium>)
	.withswordBlade(<tfc:metal/sword_blade/titanium>)
	.withsawBlade(<tfc:metal/saw_blade/titanium>)
	.withknifePlate(<tfc:metal/knife_blade/titanium>)
	.withscythePlate(<tfc:metal/scythe_blade/titanium>)
	.withhammerHead(<tfc:metal/hammer_head/titanium>)
    .withgears(<tfctech:metal/titanium_rackwheel>)
    .withsheets(<tfc:metal/sheet/titanium>)
    .withingots(<tfc:metal/ingot/titanium>)
    .withdust(<tfc:metal/dust/titanium>)
    .withblock(<libvulpes:metal0:7>)
    .withnugget(<tfc:metal/nugget/titanium>)
    .withscrap(<tfc:metal/scrap/titanium>)
    .finish(); 
MoltenHandleClass(<liquid:tungsten>)
	.withaxeHead(<tfc:metal/axe_head/tungsten>)
	.withpropickHead(<tfc:metal/propick_head/tungsten>)
	.withpickHead(<tfc:metal/pick_head/tungsten>)
	.withshovelHead(<tfc:metal/shovel_head/tungsten>)
	.withhoeHead(<tfc:metal/hoe_head/tungsten>)
	.withchiselHead(<tfc:metal/chisel_head/tungsten>)
	.withmaceHead(<tfc:metal/mace_head/tungsten>)
	.withjavelinHead(<tfc:metal/javelin_head/tungsten>)
	.withswordBlade(<tfc:metal/sword_blade/tungsten>)
	.withsawBlade(<tfc:metal/saw_blade/tungsten>)
	.withknifePlate(<tfc:metal/knife_blade/tungsten>)
	.withscythePlate(<tfc:metal/scythe_blade/tungsten>)
	.withhammerHead(<tfc:metal/hammer_head/tungsten>)
    .withgears(<tfctech:metal/tungsten_rackwheel>)
    .withsheets(<tfc:metal/sheet/tungsten>)
    .withingots(<tfc:metal/ingot/tungsten>)
    .withcluster(<pyrotech:generated_slag_tungsten_custom>)
    .withdust(<tfc:metal/dust/tungsten>)
    .withnugget(<tfc:metal/nugget/tungsten>)
    .withscrap(<tfc:metal/scrap/tungsten>)
    .finish();
MoltenHandleClass(<liquid:tungsten_steel>)
	.withaxeHead(<tfc:metal/axe_head/tungsten_steel>)
	.withpropickHead(<tfc:metal/propick_head/tungsten_steel>)
	.withpickHead(<tfc:metal/pick_head/tungsten_steel>)
	.withshovelHead(<tfc:metal/shovel_head/tungsten_steel>)
	.withhoeHead(<tfc:metal/hoe_head/tungsten_steel>)
	.withchiselHead(<tfc:metal/chisel_head/tungsten_steel>)
	.withmaceHead(<tfc:metal/mace_head/tungsten_steel>)
	.withjavelinHead(<tfc:metal/javelin_head/tungsten_steel>)
	.withswordBlade(<tfc:metal/sword_blade/tungsten_steel>)
	.withsawBlade(<tfc:metal/saw_blade/tungsten_steel>)
	.withknifePlate(<tfc:metal/knife_blade/tungsten_steel>)
	.withscythePlate(<tfc:metal/scythe_blade/tungsten_steel>)
	.withhammerHead(<tfc:metal/hammer_head/tungsten_steel>)
    .withgears(<tfctech:metal/tungsten_steel_rackwheel>)
    .withsheets(<tfc:metal/sheet/tungsten_steel>)
    .withingots(<tfc:metal/ingot/tungsten_steel>)
    .withdust(<tfc:metal/dust/tungsten_steel>)
    .withnugget(<tfc:metal/nugget/tungsten_steel>)
    .withscrap(<tfc:metal/scrap/tungsten_steel>)
    .finish();
MoltenHandleClass(<liquid:zinc>)
    .withgears(<tfctech:metal/zinc_rackwheel>)
    .withsheets(<tfc:metal/sheet/zinc>)
    .withingots(<tfc:metal/ingot/zinc>)
    .withcluster(<pyrotech:generated_slag_zinc_custom>)
    .withdust(<tfc:metal/dust/zinc>)
    .withblock(<railcraft:metal:8>)
    .withnugget(<tfc:metal/nugget/zinc>)
    .withscrap(<tfc:metal/scrap/zinc>)
    .finish(); 

MoltenHandleClass(<liquid:elementium>)
    .withgears(<mystgears:gear_elvenelementium>)
    .withingots(<botania:manaresource:7>)
    .withblock(<botania:storage:2>)
    .withnugget(<botania:manaresource:19>)
    .finish();
MoltenHandleClass(<liquid:manasteel>)
    .withshovelHead(<contenttweaker:manasteel_shovel_head>)
    #.withgears(<mystgears:gear_manasteel>) //Duplicate 
    .withingots(<botania:manaresource>)
    .withblock(<botania:storage>)
    .withnugget(<botania:manaresource:17>)
    .finish();
MoltenHandleClass(<liquid:terrasteel>)
    #.withgears(<mystgears:gear_terrasteel>) //Duplicate 
    .withingots(<botania:manaresource:4>)
    .withblock(<botania:storage:1>)
    .withnugget(<botania:manaresource:18>)
    .finish();
MoltenHandleClass(<liquid:red_alloy>)
    .withgears(<tfctech:metal/red_alloy_rackwheel>)
    .withsheets(<tfc:metal/sheet/red_alloy>)
    .withingots(<tfc:metal/ingot/red_alloy>)
    .withdust(<tfc:metal/dust/red_alloy>)
    .withnugget(<tfc:metal/nugget/red_alloy>)
    .withscrap(<tfc:metal/scrap/red_alloy>)
    .finish(); 
MoltenHandleClass(<liquid:dawnstone>)
    #.withgears(<embers:gear_dawnstone>) //Duplicate 
    .withsheets(<embers:plate_dawnstone>)
    .withingots(<embers:ingot_dawnstone>)
    .withblock(<embers:block_dawnstone>)
    .withnugget(<embers:nugget_dawnstone>)
    .finish();   
MoltenHandleClass(<liquid:unknown>)
    .withingots(<tfc:metal/ingot/unknown>)
    #.withnugget(<agricraft:agri_nugget:12>) #moved lower to fix weird removal error
    .finish();            
MoltenHandleClass(<liquid:thaumium>)
	.withaxeHead(<tfc:metal/axe_head/thaumium>)
	.withpropickHead(<tfc:metal/propick_head/thaumium>)
	.withpickHead(<tfc:metal/pick_head/thaumium>)
	.withshovelHead(<tfc:metal/shovel_head/thaumium>)
	.withhoeHead(<tfc:metal/hoe_head/thaumium>)
	.withchiselHead(<tfc:metal/chisel_head/thaumium>)
	.withmaceHead(<tfc:metal/mace_head/thaumium>)
	.withjavelinHead(<tfc:metal/javelin_head/thaumium>)
	.withswordBlade(<tfc:metal/sword_blade/thaumium>)
	.withsawBlade(<tfc:metal/saw_blade/thaumium>)
	.withknifePlate(<tfc:metal/knife_blade/thaumium>)
	.withscythePlate(<tfc:metal/scythe_blade/thaumium>)
	.withhammerHead(<tfc:metal/hammer_head/thaumium>)
    .withgears(<tfctech:metal/thaumium_rackwheel>)
    .withsheets(<tfc:metal/sheet/thaumium>)
    .withingots(<tfc:metal/ingot/thaumium>)
    .withblock(<thaumcraft:metal_thaumium>)
    .withdust(<tfc:metal/dust/thaumium>)
    .withnugget(<tfc:metal/nugget/thaumium>)
    .withscrap(<tfc:metal/scrap/thaumium>)
    .finish();
MoltenHandleClass(<liquid:void_metal>)
    .withgears(<tfctech:metal/void_metal_rackwheel>)
    .withsheets(<tfc:metal/sheet/void_metal>)
    .withingots(<tfc:metal/ingot/void_metal>)
    .withblock(<thaumcraft:metal_void>)
    .withdust(<tfc:metal/dust/void_metal>)
    .withnugget(<tfc:metal/nugget/void_metal>)
    .withscrap(<tfc:metal/scrap/void_metal>)
    .finish(); 
#=============================================================================================================================================		
//Extras
#mods.embers.Stamper.add(IItemStack <output>,ILiquidStack <liquid>,IIngredient <stamp>,IIngredient <input>);
//AE2 Inscriber Plates
mods.embers.Stamper.add(<appliedenergistics2:material:14>,<liquid:iron>*576,<contenttweaker:fired_material_engineering_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:13>,<liquid:iron>*576,<contenttweaker:fired_material_calculation_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:15>,<liquid:iron>*576,<contenttweaker:fired_material_logic_processor_press>,null);
mods.embers.Stamper.add(<appliedenergistics2:material:19>,<liquid:iron>*576,<contenttweaker:fired_material_silicon_press>,null);

//Liquid Catalyst
#mods.tconstruct.Melting.addRecipe(<liquid:liquidcatalyst> * 4000,<botania:alchemycatalyst>, 350);

//Illumar
val dyes = [<ore:dyeWhite>,<ore:dyeOrange>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>] as IOreDictEntry[];
val Illumar = <projectred-core:resource_item>.definition;
for i in 0 to 16{
recipes.remove(Illumar.makeStack(i+500));
mods.tconstruct.Casting.addTableRecipe(Illumar.makeStack(i+500), dyes[i], <liquid:glowstone>, 250, true, 180);
mods.embers.Stamper.add(Illumar.makeStack(i+500),<liquid:glowstone>*250,<embers:stamp_flat>,dyes[i]);
}

//Shard
mods.embers.Melter.add(<liquid:glass>*250,<ore:shardGlass>);
//Crystals
val ReducedDyes = [<ore:dyeWhite>,<ore:dyeRed>,<ore:dyeOrange>,<ore:dyeYellow>,<ore:dyeGreen>,<ore:dyeLightBlue>,<ore:dyeBlue>,<ore:dyePurple>,<ore:dyeBlack>] as IOreDictEntry[];
val crystalBlocks = <quark:crystal>.definition;
for i in 0 to 9{
mods.tconstruct.Casting.addBasinRecipe(crystalBlocks.makeStack(i), ReducedDyes[i], <liquid:quartz>, 125, true, 180);
mods.embers.Stamper.add(crystalBlocks.makeStack(i),<liquid:quartz>*125,<tfctech:ceramics/mold/glass_block>,ReducedDyes[i]);
<ore:crystalBlock>.add(crystalBlocks.makeStack(i));
}
mods.embers.Melter.add(<liquid:quartz>*666,<ore:dustQuartz>);

//Extra Fixes
mods.embers.Melter.remove(<liquid:aluminum>*144);
mods.embers.Melter.remove(<liquid:aluminum>*16);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*360);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*144);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*16);
#mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*1296);
#mods.nuclearcraft.ingot_former.removeRecipeWithInput(<liquid:aluminum>*144);
#mods.nuclearcraft.electrolyser.removeRecipeWithInput(<liquid:alumina>*144);
#mods.nuclearcraft.electrolyser.addRecipe(<liquid:alumina>*144, <liquid:aluminium>*288, <liquid:oxygen>*3000, null, null);

#mods.embers.Melter.add(<liquid:aluminium>*144,<ore:dustAluminum>);
#mods.embers.Melter.add(<liquid:aluminium>*144,<ore:ingotAluminum>);

//Redstone Alchemical Slurry
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1008);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*144);
mods.embers.Melter.remove(<liquid:alchemical_redstone>*1296);

mods.embers.Melter.add(<liquid:redstone>*144,<ore:dustRedstone>); 
mods.embers.Melter.add(<liquid:redstone>*1296,<ore:blockRedstone>); 

mods.embers.Mixer.add(<liquid:alchemical_redstone>*288, [<liquid:liquidchorus>*125,<liquid:redstone>*144,<liquid:menrilresin>*250]);
#=============================================================================================================================================		

//Alloys
//mods.embers.Mixer.add(ILiquidStack <outputfluid>,ILiquidStack [<inputfluid1>,<inputfluid2>,<inputfluid3>,...]);

//Red Alloy
mods.embers.Mixer.add(<liquid:red_alloy>*144, [<liquid:copper>*144,<liquid:redstone>*576]);

//Bismuth Bronze
mods.embers.Mixer.add(<liquid:bismuth_bronze>*144, [<liquid:bismuth>*144,<liquid:zinc>*288,<liquid:copper>*576]);
//Black Bronze
mods.embers.Mixer.add(<liquid:black_bronze>*144, [<liquid:gold>*288,<liquid:silver>*288,<liquid:copper>*720]);
//Brass
mods.embers.Mixer.add(<liquid:brass>*144, [<liquid:zinc>*144,<liquid:copper>*864]);
//Bronze
mods.embers.Mixer.remove(<liquid:bronze>*8);	
mods.embers.Mixer.add(<liquid:bronze>*144, [<liquid:tin>*144,<liquid:copper>*864]);
//Rose Gold
mods.embers.Mixer.add(<liquid:rose_gold>*144, [<liquid:copper>*144,<liquid:gold>*720]);
//Sterling Silver
mods.embers.Mixer.add(<liquid:sterling_silver>*144, [<liquid:copper>*288,<liquid:silver>*576]);
//Steel
//Weak Steel
mods.embers.Mixer.add(<liquid:weak_steel>*144, [<liquid:black_bronze>*144,<liquid:nickel>*288,<liquid:steel>*720]);
//Weak Blue Steel
mods.embers.Mixer.add(<liquid:weak_blue_steel>*144, [<liquid:bismuth_bronze>*144,<liquid:sterling_silver>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Weak Red Steel
mods.embers.Mixer.add(<liquid:weak_red_steel>*144, [<liquid:brass>*144,<liquid:rose_gold>*144,<liquid:steel>*288,<liquid:black_steel>*720]);
//Constantan
mods.embers.Mixer.add(<liquid:constantan>*144, [<liquid:copper>*432,<liquid:nickel>*432]);
//Electrum
mods.embers.Mixer.remove(<liquid:electrum>*8);	
mods.embers.Mixer.add(<liquid:electrum>*144, [<liquid:silver>*432,<liquid:gold>*432]);
//Invar
mods.embers.Mixer.add(<liquid:invar>*144, [<liquid:nickel>*288,<liquid:iron>*432]);
//Aluminium Brass
mods.embers.Mixer.add(<liquid:aluminium_brass>*144, [<liquid:copper>*288,<liquid:aluminium>*576]);
//Manyullyn
mods.embers.Mixer.add(<liquid:manyullyn>*144, [<liquid:ardite>*432,<liquid:cobalt>*432]);
//Tungsten Steel
mods.embers.Mixer.add(<liquid:tungsten_steel>*144, [<liquid:tungsten>*144,<liquid:steel>*720]);
//Mithril
mods.embers.Mixer.add(<liquid:mithril>*144, [<liquid:antimony>*144,<liquid:copper>*864]);
#=============================================================================================================================================		


zenClass OreGrindingandSoaking {
    var Small as IItemStack;
    var Poor as IItemStack;
    var Normal as IItemStack;
    var Rich as IItemStack;     
    var Cluster as IItemStack;
    var Dusts as IItemStack;
    var Scrap as IItemStack;

    zenConstructor(Small as IItemStack){
        this.Small = Small;
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
            #SoakingPot.addRecipe(Small.name,Cluster,<liquid:sulfuric_acid>*100,Small*10,2400);
            mods.terrafirmacraft.Barrel.addRecipe(Small.name, Small*10, <liquid:sulfuric_acid>*100, Cluster,2);
        }
        if(!isNull(Dusts)){
            mods.embers.Stamper.add(Dusts,<liquid:hydrochloric_acid>*250, <embers:stamp_flat>,Small*10);
            ArcFurnace.addRecipe(Dusts, Cluster, <immersiveengineering:material:7>, 2400, 2400, [<tfc:powder/flux>]);
        }
        if(!isNull(Scrap)){
            mods.advancedrocketry.ArcFurnace.addRecipe(Scrap*1, 20, 10, <tfc:powder/flux>*1, Small*10);
        }
    }    
}

OreGrindingandSoaking(<tfc:ore/small/bauxite>)
    .withPoor(<tfc:ore/bauxite:1>)
    .withNormal(<tfc:ore/bauxite>)
    .withRich(<tfc:ore/bauxite:2>)     
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
    .finish();
OreGrindingandSoaking(<tfc:ore/small/limonite>)
    .withPoor(<tfc:ore/limonite:1>)
    .withNormal(<tfc:ore/limonite>)
    .withRich(<tfc:ore/limonite:2>)  
    .withCluster(<pyrotech:generated_slag_iron_custom>)
    .finish();
OreGrindingandSoaking(<tfc:ore/small/magnetite>)
    .withPoor(<tfc:ore/magnetite:1>)
    .withNormal(<tfc:ore/magnetite>)
    .withRich(<tfc:ore/magnetite:2>)
    .withCluster(<pyrotech:generated_slag_iron_custom>)
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

#=============================================================================================================================================		

//Dilithium

<taiga:dilithium_crystal>.displayName = "Raw Dilithium Crystal";
<libvulpes:productgem:0>.displayName = "Refined Dilithium Crystal";
mods.tconstruct.Melting.removeRecipe(<liquid:dilithium_fluid>);

mods.immersiveengineering.Crusher.removeRecipe(<libvulpes:productgem>);
recipes.remove(<libvulpes:productgem>);
mods.embers.Stamper.remove(<libvulpes:productgem>);
mods.advancedrocketry.Crystallizer.removeRecipe(<libvulpes:productgem>);

mods.immersiveengineering.Crusher.removeRecipe(<taiga:dilithium_dust>);
recipes.remove(<taiga:dilithium_dust>);
mods.embers.Stamper.remove(<taiga:dilithium_dust>);
#mods.nuclearcraft.manufactory.removeRecipeWithOutput(<taiga:dilithium_dust>);

mods.immersiveengineering.ArcFurnace.removeRecipe(<taiga:dilithium_ingot>);

mods.embers.Melter.remove(<liquid:dilithium_fluid>);

val MelterDoreInputs = [<ore:ingotDilithium>,<ore:nuggetDilithium>,<ore:oreDilithium>,<ore:blockDilithium>,<ore:dustDilithium>,<ore:gemDilithium>] as IOreDictEntry[];
for i, MDOI in MelterDoreInputs{
    for DOIS in MDOI.items{ 
mods.embers.Melter.remove(DOIS);
    }
}
#=============================================================================================================================================		


//Bauxite/Aluminium - Bayer Process
    mods.embers.Melter.add(<liquid:alumina>*144, <pyrotech:generated_slag_aluminium_custom>);
    mods.pyrotech.BrickCrucible.addRecipe(<liquid:alumina>.name,<liquid:alumina>*144,<pyrotech:generated_slag_aluminium_custom>,2400);
    mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:sodium_hydroxide_solution>*500, <tfc:ore/small/bauxite>*10, 2, 448.0, <liquid:sodium_aluminate>*144);
    #mods.nuclearcraft.electrolyser.addRecipe(<liquid:sodium_aluminate>*144, <liquid:alumina>*144, <liquid:red_mud>*144, null, null);
    mods.embers.Melter.add(<liquid:aluminium>*144, <tfctech:metal/aluminium_long_rod>);

//Titanium
    #mods.terrafirmacraft.ItemRegistry.registerItemMetal(<libvulpes:ore0:8>, "TITANIUM", 100, true);
    #Rutile to Titania ADVrocketry XML files
    mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:8>);
    mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<libvulpes:ore0:8>);
    #mods.nuclearcraft.melter.removeRecipeWithInput(<libvulpes:ore0:8>);
    mods.advancedrocketry.ArcFurnace.removeRecipe(<libvulpes:productingot:7>);

//Iridium
    mods.immersiveengineering.Crusher.removeRecipesForInput(<morebees:dustiridium>);
    mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<libvulpes:productdust:10>);
    mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:10>);
    ArcFurnace.addRecipe(<morebees:dustiridium>, <pyrotech:generated_slag_iridium_custom>, <immersiveengineering:material:7>, 2400, 2400, [<tfc:powder/flux>]);
    ArcFurnace.addRecipe(<libvulpes:productingot:10>, <morebees:dustiridium>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:ceramics/fired/mold/ingot>]);

//Iron

ArcFurnace.addRecipe(<tfc:metal/scrap/wrought_iron>, <ore:oreIronSmall>*10, <immersiveengineering:material:7>, 2400, 2400, [<tfc:powder/flux>]);
ArcFurnace.addRecipe(<tfc:metal/ingot/wrought_iron>, <pyrotech:generated_slag_iron_custom>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:ceramics/fired/mold/ingot>]);

mods.pyrotech.Bloomery.createBloomeryBuilder("Iron_from_acid",<tfc:bloom/refined>,<pyrotech:generated_slag_iron_custom>,false)
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(14400)
    .setFailureChance(0.01)
    .setBloomYield(1, 1)
    .setSlagItem(<immersiveengineering:material:7>, 2)
    .addFailureItem(<immersiveengineering:material:7>, 1)
    .setLangKey("tile.oreIron;item.pyrotech.slag.unique")
    .register();

//Pig Iron

mods.immersiveengineering.BlastFurnace.addRecipe( <tfc:metal/scrap/pig_iron>, <pyrotech:generated_slag_iron_custom>,2000);
ArcFurnace.addRecipe(<tfc:metal/ingot/pig_iron>, <tfc:metal/ingot/wrought_iron>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:powder/coke>,<tfc:ceramics/fired/mold/ingot>]);
ArcFurnace.addRecipe(<tfc:metal/ingot/pig_iron>, <pyrotech:generated_slag_iron_custom>, <tfc:ceramics/fired/mold/ingot>, 2400, 2400, [<tfc:powder/coke>,<tfc:ceramics/fired/mold/ingot>]);


//Steelingot
BlastFurnace.remove(<railcraft:ingot>);
BlastFurnace.remove(<railcraft:nugget>);
BlastFurnace.remove(<railcraft:metal:3>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:pig_iron>*288, <tfc:powder/flux>, -0.75, 773.0, <liquid:steel>*144);

    //Mechanical Metal Working

    mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/high_carbon_steel>, <tfc:metal/ingot/pig_iron>*2, <contenttweaker:striking_die>, 2000);
    mods.immersiveengineering.MetalPress.addRecipe(<tfc:metal/ingot/steel>, <tfc:metal/ingot/high_carbon_steel>*2, <contenttweaker:striking_die>, 2000);

    mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/high_carbon_steel>],<tfc:metal/ingot/pig_iron>,<tfc:powder/flux>);
    mods.embers.DawnstoneAnvil.add([<tfc:metal/ingot/steel>],<tfc:metal/ingot/high_carbon_steel>,<tfc:powder/flux>);

//Sulfuric Acid

mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:iron_sulfate>, <ore:oreIronSmall>, <ore:dustSulfur>, 2400);

mods.pyrotech.StoneCrucible.addRecipe("Primtive_Sulfur_Trioxide",<liquid:sulfur_trioxide>*500,<contenttweaker:iron_sulfate>,2400,true);

val fluidcontainers = [<tfc:wooden_bucket>,<minecraft:bucket>,<tfc:metal/bucket/red_steel>,<forestry:can>,<forestry:refractory>,<tfctech:ceramics/fluid_bowl>] as IItemStack[];
for i, FC in fluidcontainers {
mods.terrafirmacraft.Barrel.addRecipe("Primitive Sulfuric Acid"~i, FC.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}), <liquid:sulfur_trioxide>*1000, FC, <liquid:sulfuric_acid>*1000, 4);
}

//Oxygen
    mods.embers.Stamper.add(<contenttweaker:zeolite_powder>*4,<liquid:alumina>*144, <embers:stamp_flat>,<ore:sandSilica>); #zeolite
    
    mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:zeolite_powder>, <ore:sandSilica>, <contenttweaker:bauxitedust>, 2400); #zeolite

    recipes.addShapeless("Oxygen_can",<forestry:can:1>.withTag({Fluid: {FluidName: "oxygen", Amount: 1000}}), #oxygen
    [<pneumaticcraft:air_canister:*>.transformDamage(1000),<contenttweaker:zeolite_powder>,<forestry:can>]);

//Hydrochlroic Acid 
    mods.embers.Mixer.add(<liquid:hydrogen_chloride>*1000, [<liquid:brine>*750,<liquid:sulfuric_acid>*500]);

    mods.embers.Mixer.add(<liquid:hydrochloric_acid>*1000, [<liquid:hydrogen_chloride>*500,<liquid:distwater>*500]);

//Chlroine 
    mods.embers.Mixer.add(<liquid:chlorine>*1000, [<liquid:hydrogen_chloride>*1000,<liquid:oxygen>*500]);
    #mods.nuclearcraft.electrolyser.addRecipe(<liquid:brine>*1000, <liquid:chlorine>*500, <liquid:hydrogen>*250, <liquid:sodium_hydroxide_solution>*500, null);

#=============================================================================================================================================		

//Rubber 

furnace.remove(<thebetweenlands:items_misc:23>);
furnace.remove(<thebetweenlands:syrmorite_bucket_solid_rubber>);
mods.aether_legacy.Freezer.registerFreezable(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>,800);
mods.pneumaticcraft.heatframecooling.addRecipe(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>);
mods.cfm.Freezer.addRecipe(<thebetweenlands:bl_bucket_rubber:1>,<thebetweenlands:syrmorite_bucket_solid_rubber>);
moretweaker.bewitchment.FrostFire.addRecipe(<thebetweenlands:syrmorite_bucket_solid_rubber>,<thebetweenlands:bl_bucket_rubber:1>);
mods.cyclicmagic.Solidifier.addRecipe(<thebetweenlands:syrmorite_bucket_solid_rubber>, [<thebetweenlands:bl_bucket:1>.withTag({Fluid: {}})], "rubber", 1000);
recipes.addShapeless(<thebetweenlands:syrmorite_bucket_solid_rubber>,[<thebetweenlands:bl_bucket_rubber:1>,<thermalfoundation:material:1025>]);


#=============================================================================================================================================		

//Wood

val iLogs = [<tfc:wood/log/acacia>,<tfc:wood/log/ash>,<tfc:wood/log/aspen>,<tfc:wood/log/birch>,<tfc:wood/log/blackwood>,<tfc:wood/log/chestnut>,<tfc:wood/log/douglas_fir>,<tfc:wood/log/hickory>,<tfc:wood/log/kapok>,<tfc:wood/log/maple>,<tfc:wood/log/oak>,<tfc:wood/log/palm>,<tfc:wood/log/pine>,<tfc:wood/log/rosewood>,<tfc:wood/log/sequoia>,<tfc:wood/log/spruce>,<tfc:wood/log/sycamore>,<tfc:wood/log/white_cedar>,<tfc:wood/log/willow>,<tfc:wood/log/hevea>] as IIngredient[];
val iLumber = [<tfc:wood/lumber/acacia>,<tfc:wood/lumber/ash>,<tfc:wood/lumber/aspen>,<tfc:wood/lumber/birch>,<tfc:wood/lumber/blackwood>,<tfc:wood/lumber/chestnut>,<tfc:wood/lumber/douglas_fir>,<tfc:wood/lumber/hickory>,<tfc:wood/lumber/kapok>,<tfc:wood/lumber/maple>,<tfc:wood/lumber/oak>,<tfc:wood/lumber/palm>,<tfc:wood/lumber/pine>,<tfc:wood/lumber/rosewood>,<tfc:wood/lumber/sequoia>,<tfc:wood/lumber/spruce>,<tfc:wood/lumber/sycamore>,<tfc:wood/lumber/white_cedar>,<tfc:wood/lumber/willow>,<tfc:wood/lumber/hevea>] as IItemStack[];
for i, log in iLogs{

#mods.pyrotech.Chopping.addRecipe("Log to Lumber"~i,iLumber[i],log,[4],[4]);

mods.horsepower.ChoppingBlock.add(log, iLumber[i]*10, 2, false);
mods.horsepower.ChoppingBlock.add(log, iLumber[i]*3, 6, true);

mods.pyrotech.StoneSawmill.addRecipe("Brass Saw Blade"~i,iLumber[i]*4,log,200,<pyrotech:sawmill_blade_gold>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Bronze Saw Blade"~i,iLumber[i]*4,log,200,<pyrotech:sawmill_blade_bone>,4,true);

mods.pyrotech.StoneSawmill.addRecipe("Wrought Iron Saw Blade"~i,iLumber[i]*8,log,200,<pyrotech:sawmill_blade_iron>,4,true);

mods.pyrotech.StoneSawmill.addRecipe("Steel Saw Blade"~i,iLumber[i]*10,log,200,<pyrotech:sawmill_blade_stone>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Black Steel Saw Blade"~i,iLumber[i]*10,log,200,<pyrotech:sawmill_blade_flint>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Manyullyn Saw Blade"~i,iLumber[i]*12,log,200,<pyrotech:sawmill_blade_obsidian>,8,true);

mods.pyrotech.StoneSawmill.addRecipe("Diamond Tipped Steel Saw Blade"~i,iLumber[i]*16,log,200,<pyrotech:sawmill_blade_diamond>,0,true);

}