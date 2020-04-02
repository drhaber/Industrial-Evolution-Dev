import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import moretweaker.railcraft.RollingMachine;

val c = <ore:clay>;
val l = <ore:leather>;
val w = <liquid:water>*100;
val t = <liquid:tannin>*100;
val ClayTime = 30;
val LeatherTime = 60;
/*
mods.forestry.Carpenter.addRecipe(IItemStack output,[
    [null,null,null],
    [null,null,null],
    [null,null,null]],Time,liquid);
    */
//Clay Knapping    
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/pick_head>*3,[
    [c,c,c],
    [null,null,null],
    [null,null,null]],ClayTime, w);   
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/shovel_head>,[
    [null,c,null],
    [null,null,null],
    [null,null,null]],ClayTime, w); 
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/axe_head>*3,[
    [null,c,c],
    [null,null,c],
    [null,null,null]],ClayTime, w);      
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/hoe_head>*2,[
    [c,c,null],
    [null,null,null],
    [null,null,null]],ClayTime, w);    
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/sword_blade>*2,[
    [null,c,null],
    [null,c,null],
    [null,null,null]],ClayTime, w);
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/chisel_head>*2,[
    [null,null,null],
    [null,c,null],
    [null,c,null]],ClayTime, w);      
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/mace_head>*7,[
    [c,null,c],
    [c,c,c],
    [c,null,c]],ClayTime, w);    
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/saw_blade>*5,[
    [null,c,c],
    [c,c,null],
    [c,null,null]],ClayTime, w);  
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/javelin_head>*6,[
    [null,c,null],
    [c,c,c],
    [c,null,c]],ClayTime, w);   
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/hammer_head>*4,[
    [c,c,c],
    [null,c,null],
    [null,null,null]],ClayTime, w);       
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/propick_head>*3,[
    [null,c,c],
    [c,null,null],
    [null,null,null]],ClayTime, w);      
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/knife_blade>*5,[
    [null,null,null],
    [c,c,c],
    [null,c,c]],ClayTime, w);    
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/scythe_blade>*4,[
    [null,c,null],
    [c,null,c],
    [c,null,null]],ClayTime, w);    
mods.forestry.Carpenter.addRecipe(<tfctech:ceramics/unfired/rackwheel_piece>*4,[
    [null,c,null],
    [null,c,c],
    [null,null,c]],ClayTime, w);
mods.forestry.Carpenter.addRecipe(<tfc:ceramics/unfired/mold/ingot>*3,[
    [null,null,null],
    [c,c,c],
    [null,null,null]],ClayTime, w);
mods.forestry.Carpenter.addRecipe(<tfctech:ceramics/unfired/glass_pane>*4,[
    [null,null,null],
    [c,c,null],
    [c,c,null]],ClayTime, w); 
mods.forestry.Carpenter.addRecipe(<tfctech:ceramics/unfired/glass_block>*8,[
    [c,c,c],
    [c,null,c],
    [c,c,c]],ClayTime, w);   
#=============================================================================================================================================		
//Leather Knapping
mods.forestry.Carpenter.addRecipe(<minecraft:lead>*3,[
    [l,l,null],
    [l,l,null],
    [null,null,l]],LeatherTime, t);
mods.forestry.Carpenter.addRecipe(<minecraft:leather_helmet>,[
    [l,l,l],
    [l,null,l],
    [null,null,null]],LeatherTime, t);    
mods.forestry.Carpenter.addRecipe(<minecraft:leather_chestplate>,[
    [l,null,l],
    [l,l,l],
    [l,l,l]],LeatherTime, t);
mods.forestry.Carpenter.addRecipe(<minecraft:leather_leggings>,[
    [l,l,l],
    [l,null,l],
    [l,null,l]],LeatherTime, t);    
mods.forestry.Carpenter.addRecipe(<minecraft:leather_boots>,[
    [null,null,null],
    [l,null,l],
    [l,null,l]],LeatherTime, t);
mods.forestry.Carpenter.addRecipe(<minecraft:saddle>,[
    [null,l,null],
    [l,l,l],
    [null,l,null]],LeatherTime, t);   
mods.forestry.Carpenter.addRecipe(<waterflasks:leather_side>,[
    [null,l,l],
    [null,l,l],
    [l,null,null]],LeatherTime, t);
mods.forestry.Carpenter.addRecipe(<contenttweaker:leatherbag>*2,[
    [null,l,null],
    [l,null,l],
    [l,l,l]],LeatherTime, t);    
mods.forestry.Carpenter.addRecipe(<contenttweaker:leatherglove>*2,[
    [l,null,l],
    [null,l,null],
    [null,l,null]],LeatherTime, t);
#=============================================================================================================================================		
//Rolled Knapping Recipes

	RollingMachine.addShaped(<inspirations:materials:8>*3,[
		[null,null,<ore:rock>],
		[null,<ore:rock>,null],
		[<ore:rock>,null,null]]);

	//Igneous Intrusive
	RollingMachine.addShaped(<tfc:stone/axe_head/igneous_intrusive>,[
		[null,<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>],
		[null,null,<ore:rockIgneousIntrusive>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/shovel_head/igneous_intrusive>,[
		[null,<ore:rockIgneousIntrusive>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/hoe_head/igneous_intrusive>,[
		[<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/knife_head/igneous_intrusive>*3,[
		[<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>],
		[null,<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/javelin_head/igneous_intrusive>,[
		[<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>],
		[<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>,null],
		[<ore:rockIgneousIntrusive>,null,<ore:rockIgneousIntrusive>]]);
	RollingMachine.addShaped(<tfc:stone/hammer_head/igneous_intrusive>,[
		[<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>],
		[<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>,<ore:rockIgneousIntrusive>],
		[null,<ore:rockIgneousIntrusive>,null]]);		
	//Igneous Extrusive
	RollingMachine.addShaped(<tfc:stone/axe_head/igneous_extrusive>,[
		[null,<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>],
		[null,null,<ore:rockIgneousExtrusive>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/shovel_head/igneous_extrusive>,[
		[null,<ore:rockIgneousExtrusive>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/hoe_head/igneous_extrusive>,[
		[<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/knife_head/igneous_extrusive>*3,[
		[<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>],
		[null,<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/javelin_head/igneous_extrusive>,[
		[<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>],
		[<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>,null],
		[<ore:rockIgneousExtrusive>,null,<ore:rockIgneousExtrusive>]]);
	RollingMachine.addShaped(<tfc:stone/hammer_head/igneous_extrusive>,[
		[<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>],
		[<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>,<ore:rockIgneousExtrusive>],
		[null,<ore:rockIgneousExtrusive>,null]]);	
	//Sedimentary
	RollingMachine.addShaped(<tfc:stone/axe_head/sedimentary>,[
		[null,<ore:rockSedimentary>,<ore:rockSedimentary>],
		[null,null,<ore:rockSedimentary>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/shovel_head/sedimentary>,[
		[null,<ore:rockSedimentary>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/hoe_head/sedimentary>,[
		[<ore:rockSedimentary>,<ore:rockSedimentary>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/knife_head/sedimentary>*3,[
		[<ore:rockSedimentary>,<ore:rockSedimentary>,<ore:rockSedimentary>],
		[null,<ore:rockSedimentary>,<ore:rockSedimentary>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/javelin_head/sedimentary>,[
		[<ore:rockSedimentary>,<ore:rockSedimentary>,<ore:rockSedimentary>],
		[<ore:rockSedimentary>,<ore:rockSedimentary>,null],
		[<ore:rockSedimentary>,null,<ore:rockSedimentary>]]);
	RollingMachine.addShaped(<tfc:stone/hammer_head/sedimentary>,[
		[<ore:rockSedimentary>,<ore:rockSedimentary>,<ore:rockSedimentary>],
		[<ore:rockSedimentary>,<ore:rockSedimentary>,<ore:rockSedimentary>],
		[null,<ore:rockSedimentary>,null]]);	
	//Metamorphic
	RollingMachine.addShaped(<tfc:stone/axe_head/metamorphic>,[
		[null,<ore:rockMetamorphic>,<ore:rockMetamorphic>],
		[null,null,<ore:rockMetamorphic>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/shovel_head/metamorphic>,[
		[null,<ore:rockMetamorphic>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/hoe_head/metamorphic>,[
		[<ore:rockMetamorphic>,<ore:rockMetamorphic>,null],
		[null,null,null],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/knife_head/metamorphic>*3,[
		[<ore:rockMetamorphic>,<ore:rockMetamorphic>,<ore:rockMetamorphic>],
		[null,<ore:rockMetamorphic>,<ore:rockMetamorphic>],
		[null,null,null]]);
	RollingMachine.addShaped(<tfc:stone/javelin_head/metamorphic>,[
		[<ore:rockMetamorphic>,<ore:rockMetamorphic>,<ore:rockMetamorphic>],
		[<ore:rockMetamorphic>,<ore:rockMetamorphic>,null],
		[<ore:rockMetamorphic>,null,<ore:rockMetamorphic>]]);
	RollingMachine.addShaped(<tfc:stone/hammer_head/metamorphic>,[
		[<ore:rockMetamorphic>,<ore:rockMetamorphic>,<ore:rockMetamorphic>],
		[<ore:rockMetamorphic>,<ore:rockMetamorphic>,<ore:rockMetamorphic>],
		[null,<ore:rockMetamorphic>,null]]);	    
                