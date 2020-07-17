mods.astralsorcery.StarlightInfusion.addInfusion(<tfc:gem/beryl:2>, <astralsorcery:itemcraftingcomponent:4>, false, 0.7, 200);
mods.astralsorcery.StarlightInfusion.addInfusion(<tfc:metal/ingot/unknown>, <astralsorcery:itemcraftingcomponent:1>, true, 1, 200);
//StarMetal Crafting
mods.inspirations.Cauldron.addFluidRecipe(<astralsorcery:itemcraftingcomponent:1>, <ore:ingotIron>, <liquid:astralsorcery.liquidstarlight>, 2, true);
mods.astralsorcery.StarlightInfusion.addInfusion(<minecraft:iron_ingot>, <astralsorcery:itemcraftingcomponent:1>, false, 0.3, 100);
mods.astralsorcery.StarlightInfusion.addInfusion(<tfc:metal/ingot/wrought_iron>, <astralsorcery:itemcraftingcomponent:1>, false, 0.3, 100);
#mods.terrafirmacraft.Barrel.addRecipe("Star_Dust", <tombstone:dust_of_vanishing>, <liquid:astralsorcery.liquidstarlight>*100, <astralsorcery:itemcraftingcomponent:2>,12);

//Parchment
#mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/cc_parchment");
#recipes.remove(<astralsorcery:itemcraftingcomponent:5>);
//Sooty Marble
recipes.remove(<astralsorcery:blockblackmarble>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw");
recipes.addShaped(<astralsorcery:blockblackmarble>*8,[
	[<ore:stoneMarble>,<ore:stoneMarble>,<ore:stoneMarble>],
	[<ore:stoneMarble>,<contenttweaker:soot>,<ore:stoneMarble>],
	[<ore:stoneMarble>,<ore:stoneMarble>,<ore:stoneMarble>]]);
//Guide Book
recipes.remove(<astralsorcery:itemjournal>);
recipes.addShaped(<astralsorcery:itemjournal>,[
	[<astralsorcery:itemcraftingcomponent:5>,<astralsorcery:itemcraftingcomponent:5>],
	[<astralsorcery:itemcraftingcomponent:5>,<ore:leather>]]);
//Aquamarine
mods.astralsorcery.LightTransmutation.removeTransmutation(<minecraft:clay>, false);
mods.astralsorcery.LightTransmutation.addTransmutation(<minecraft:sand>, <astralsorcery:blockcustomsandore>, 10);
//Linking Tool
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking");
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("IE:shaped/internal/altar/tool_linking", <astralsorcery:itemlinkingtool>, 200, 200, [
           null, <ore:stickWood>, <ore:gemAquamarine>,
            null, <ore:lumber>, <ore:stickWood>,
           <ore:lumber>, null, null]);
//Mantle of the Stars
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/capebase");
mods.astralsorcery.Altar.addTraitAltarRecipe("IE:shaped/internal/altar/capebase",<astralsorcery:itemcape>.withTag({astralsorcery: {}}),  4500, 100,
 [
	 //Inner 3x3
	 <botania:manaresource:22>,null,<botania:manaresource:22>,
	 <embers:ember_bulb>.withTag({emberCapacity: 1000.0, ember: 1000.0}),<tfctech:metal/gold_rackwheel>,<embers:ember_bulb>.withTag({emberCapacity: 1000.0, ember: 1000.0}),
	 <botania:manaresource:22>,<botania:manaresource:22>,<botania:manaresource:22>,
	 //4 Corners
	 null,null,
	 <astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
	 //Corner Borders | scanning horizaontal downward
	 <astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,
	 <astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,
	 <astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,
	 null,null,
	 //Center extremes | scanning horizaontal downward
	 null,
	 <tfctech:metal/gold_strip>,<tfctech:metal/gold_strip>,
	 null,
	 //Outside Alter
	 <astralsorcery:blockcelestialcollectorcrystal>,
	 <psi:material:4>,<minecraft:nether_star>,
	 <psi:material:4>
 ]);
