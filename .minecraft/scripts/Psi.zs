import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;
import crafttweaker.liquid.ILiquidStack;

val RecipeRemove = [<rpsideas:overvolted_cad_assembly>,<rpsideas:cad_assembly_mana_blaster>,
<rpsideas:underclocked_cad_assembly>,<rpsideas:overclocked_cad_assembly>,<psi:cad_assembly:4>,
<psi:cad_assembly:3>,<psi:cad_assembly:2>,<psi:cad_assembly:1>,<psi:cad_assembly>,<psi:cad_assembler>,
<psi:programmer>,<rpsideas:undervolted_cad_assembly>,<psi:material:3>,<psi:material:4>] as IItemStack[];

for RR in RecipeRemove{
    recipes.remove(RR);
}
val GunBarrel = <immersiveengineering:material:14>; # Steel Gun Barrel
val GunHandle = <immersiveengineering:material:13>; #Gun Grip

//Ivory and Ebony Ingots
mods.nuclearcraft.infuser.addRecipe(<psi:material:5>, <liquid:unknown>*288, <psi:material:3>); #Ebony
mods.nuclearcraft.infuser.addRecipe(<psi:material:6>, <liquid:unknown>*288, <psi:material:4>); #Ivory
//Spell Programmer 
recipes.addShaped(<psi:programmer>,[
	[<tfc:metal/double_ingot/black_steel>,<tfc:metal/double_ingot/black_steel>,<tfc:metal/double_ingot/black_steel>],
	[<engineersdecor:thin_steel_pole>,null,<engineersdecor:thin_steel_pole>],
	[<tfctech:metal/steel_rod>,null,<tfctech:metal/steel_rod>]]);
//Cad Assembler
recipes.addShaped(<psi:cad_assembler>,[
	[<tfc:metal/double_ingot/black_steel>,<tfc:metal/double_ingot/black_steel>,<tfc:metal/double_ingot/black_steel>],
    [<tfc:metal/double_ingot/black_steel>,<ore:workbench>,<tfc:metal/double_ingot/black_steel>],
	[null,<engineersdecor:thick_steel_pole_head>,null]]);    
//Assemblies
recipes.addShaped(<psi:cad_assembly>,[ #Iron
	[GunBarrel,GunBarrel,<ore:scaleDragonEnder>],
	[null,<ore:button>,GunHandle]]);

#mods.tconstruct.Casting.addTableRecipe(<psi:cad_assembly:1>, <psi:cad_assembly>, <liquid:gold>, 288, true, 180); #Gold
mods.embers.Stamper.add(<psi:cad_assembly:1>,<liquid:gold>*288, <embers:stamp_flat>,<psi:cad_assembly>);

recipes.addShaped(<psi:cad_assembly:2>,[ #Psi Metal
	[<psi:material:1>,<psi:material:1>,<psi:material:1>],
	[GunBarrel,GunBarrel,<ore:scaleDragonEnder>],
	[<psi:material:1>,<ore:button>,GunHandle]]);
 
recipes.addShaped(<psi:cad_assembly:3>,[ #Ebony
	[<psi:material:3>,<psi:material:3>,<psi:material:3>],
	[GunBarrel,GunBarrel,<ore:scaleDragonEnder>],
	[<psi:material:3>,<ore:button>,GunHandle]]); 

recipes.addShaped(<psi:cad_assembly:4>,[ #Ivory
	[GunBarrel,GunBarrel,<psi:material:4>],
	[<psi:material:4>,<psi:material:4>,<ore:scaleDragonEnder>],
	[null,<ore:button>,GunHandle]]);    

recipes.addShaped(<rpsideas:overvolted_cad_assembly>,[ #Ebony Over Volted
	[<psi:material:3>,<psi:material:3>,<psi:material:3>],
	[<botania:lens:2>,GunBarrel,<ore:scaleDragonEnder>],
	[<psi:material:3>,<ore:button>,GunHandle]]);

recipes.addShaped(<rpsideas:undervolted_cad_assembly>,[ #Ebony Under Volted
	[<psi:material:3>,<psi:material:3>,<psi:material:3>],
	[<botania:lens:4>,GunBarrel,<ore:scaleDragonEnder>],
	[null,<ore:button>,GunHandle]]);

recipes.addShaped(<rpsideas:overclocked_cad_assembly>,[ #Ivory Over Clocked
	[GunBarrel,GunBarrel,<psi:material:4>],
	[<psi:material:4>,<nuclearcraft:cooler:3>,<ore:scaleDragonEnder>],
	[null,<ore:button>,GunHandle]]); 

recipes.addShaped(<rpsideas:underclocked_cad_assembly>,[ #Ivory Under Clocked
	[GunBarrel,GunBarrel,<psi:material:4>],
	[<psi:material:4>,<psi:material:4>,<ore:scaleDragonEnder>],
	[<nuclearcraft:cooler:3>,<ore:button>,GunHandle]]);     

recipes.addShaped(<rpsideas:cad_assembly_mana_blaster>,[ #Mana 
	[null,<botania:managun>,null],
	[<botania:manaresource:16>,<ore:slimeball>,<botania:rune:8>],
	[null,<psi:cad_assembly:2>,null]]);    