#priority 9
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;

//dilithium 
<ore:oreDilithium>.add(<taiga:dilithium_ore>);
//Glass Shards
<ore:shardGlass>.addItems([<pyrotech:material:32>,<tfc:glass_shard>]);
//Smoke Emitters
<ore:smokeEmitter>.addItems([<betternether:smoker>,<railcraft:equipment:3>,<quark:smoker>]);
//Wool
<ore:rawWool>.addItems([<rustichromia:cotton_wool>,<tfc:animal/product/wool>]);
//titania 
<ore:titania>.add(<contenttweaker:titania_powder>);
<ore:dyeWhite>.add(<contenttweaker:titania_powder>);
//Rocks
<ore:rock>.removeItems([<pyrotech:rock>,<pyrotech:rock:1>,<pyrotech:rock:2>,<pyrotech:rock:3>,<pyrotech:rock:6>,<pyrotech:rock:8>]);
<ore:pepple>.addItems([<pyrotech:rock>,<pyrotech:rock:1>,<pyrotech:rock:2>,<pyrotech:rock:3>,<pyrotech:rock:6>,<pyrotech:rock:8>]);
//Lapis Gem
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dye>.remove(<minecraft:dye:4>);
//Dragon Scales
<ore:scaleDragonEnder>.add(<endreborn:dragon_scales>);
//compost
<ore:fertilizer>.add(<forestry:fertilizer_bio>);
<ore:lumpCompost>.addItems([<composter:compost>,<forestry:fertilizer_bio>]);
//Magnesium
#<ore:dustMagnesium>.add(<nuclearcraft:dust:7>);
#<ore:ingotMagnesium>.add(<nuclearcraft:ingot:7>);
//Peat
<ore:blockPeat>.add(<tfc:peat>);
//bituminousCoal
<ore:gemBituminous>.add(<tfc:ore/bituminous_coal>);
//crystalCertusQuartz
<ore:chargedCertusQuartz>.add(<appliedenergistics2:material:1>);
//naquadah
<ore:gemNaquadah>.add(<aunis:naquadah_shard>);
//Sulfur
<ore:gemSulfur>.addItems([<soot:sulfur_clump>]);
//glass
<ore:blockGlass>.add(<contenttweaker:dirtyglass>);
//woodPulp
<ore:pulpWood>.remove(<emergingtechnology:paperpulp>);
//Wood Fishing Rod
<ore:woodFishingrod>.addItems([<aquaculture:fishing_rod>,<minecraft:fishing_rod>]);
//Carpet
val carpets = <minecraft:carpet>.definition;
for i in 0 to 16{
<ore:carpet>.add(carpets.makeStack(i));
}
//Beds
val beds = <minecraft:bed>.definition;
for i in 0 to 16{
<ore:bed>.add(beds.makeStack(i));
}
//Petals
val petals = <botania:petal>.definition;
for i in 0 to 16{
<ore:Petals>.add(petals.makeStack(i));
}
//Aluminium
<ore:ingotAluminum>.addAll(<ore:ingotAluminium>);
<ore:ingotAluminium>.mirror(<ore:ingotAluminum>);
<ore:dustAluminum>.addAll(<ore:dustAluminium>);
<ore:dustAluminium>.mirror(<ore:dustAluminum>);
<ore:sheetAluminum>.addAll(<ore:sheetAluminium>);
<ore:sheetAluminium>.mirror(<ore:sheetAluminum>);
<ore:wireAluminum>.addAll(<ore:wireAluminium>);
<ore:wireAluminium>.mirror(<ore:wireAluminum>);
<ore:stickAluminum>.addAll(<ore:stickAluminium>);
<ore:stickAluminium>.mirror(<ore:stickAluminum>);
//Aluminium Brass
<ore:ingotAlubrass>.addAll(<ore:ingotAluminiumBrass>);
<ore:ingotAluminiumBrass>.mirror(<ore:ingotAlubrass>);
<ore:nuggetAlubrass>.addAll(<ore:nuggetAluminiumBrass>);
<ore:nuggetAluminiumBrass>.mirror(<ore:nuggetAlubrass>);
//Chests
<ore:chest>.addAll(<ore:chestWood>);
<ore:chestWood>.mirror(<ore:chest>);

<ore:chestVanilla>.addItems([<minecraft:chest>,<quark:custom_chest:*>]);
//Ash
<ore:dustAsh>.addItems([<pyrotech:material>,<mist:ash>,<ic2:misc_resource>]);
//Paper Pulp
<ore:lumpPulp>.add(<emergingtechnology:paperpulp>);
<ore:sheetPulp>.add(<pyrotech:material:25>);
//Bricks
<ore:ingotBrick>.addAll(<ore:brick>); //This adds ingot brick to all bricks
//magnifying_glass
<ore:glassMagnifying>.addItems([<agricraft:magnifying_glass>,<railcraft:tool_magnifying_glass>]);
//Tallow
<ore:lumpTallow>.addItems([<quark:tallow>,<rustic:tallow>]);
//Black Dye
<ore:dyeBlack>.addItems([<contenttweaker:soot>,<tfc:ore/jet>]);
//Marble
<ore:stoneMarble>.add(<tfc:raw/marble>);
//Aquamarine
<ore:gemAquamarine>.addAll(<ore:gemBeryl>);
//Biotite
<ore:gemEnderBiotite>.addAll(<ore:quartzDark>);
<ore:quartzDark>.mirror(<ore:gemEnderBiotite>);
//Brass Sleeve
<ore:sleeveBrass>.add(<railcraft:gear:3>);
//Transistors
<ore:componetTransistor>.addItems([<pneumaticcraft:transistor>,<opencomputers:material:6>]);
//Void Metal
<ore:dustVoid>.remove(<railcraft:dust:7>);

<ore:ingotVoidMetal>.addAll(<ore:ingotVoid>);
<ore:ingotVoid>.mirror(<ore:ingotVoidMetal>);

<ore:plateVoidMetal>.addAll(<ore:plateVoid>);
<ore:plateVoid>.mirror(<ore:plateVoidMetal>);

<ore:gearVoidMetal>.addAll(<ore:gearVoid>);
<ore:gearVoid>.mirror(<ore:gearVoidMetal>);

<ore:blockVoidMetal>.addAll(<ore:blockVoid>);
<ore:blockVoid>.addAll(<ore:blockVoidMetal>);

<ore:nuggetVoidMetal>.addAll(<ore:nuggetVoid>);
<ore:nuggetVoid>.addAll(<ore:nuggetVoidMetal>);

//Silicon
<ore:itemSilicon>.remove(<libvulpes:productingot:3>);
<ore:waferSilicon>.remove(<libvulpes:productingot:3>);
<ore:itemSilicon>.add(<projectred-core:resource_item:301>);
<ore:waferSilicon>.addAll(<ore:itemSilicon>);
<ore:itemSilicon>.mirror(<ore:waferSilicon>);
<ore:bouleSilicon>.add(<projectred-core:resource_item:300>);
mods.jei.JEI.hide(<libvulpes:productboule:3>);
mods.jei.JEI.hide(<advancedrocketry:wafer>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:5>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem:6>);
furnace.remove(<projectred-core:resource_item:300>);
mods.appliedenergistics2.Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
#mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:13>*2);
mods.appliedenergistics2.Inscriber.addRecipe(<appliedenergistics2:material:20>,<ore:itemSilicon>, true, <appliedenergistics2:material:19>);
#mods.nuclearcraft.alloy_furnace.addRecipe(<ore:itemSilicon>, <ore:dustGraphite>, <nuclearcraft:alloy:13>*2);
//Coal
<ore:gemCoal>.addAll(<ore:coal>);
<ore:coal>.mirror(<ore:gemCoal>);
//Cobblestone
<ore:tfcCobblestone>.addItems([<tfc:cobble/gneiss>,<tfc:cobble/diorite>,<tfc:cobble/marble>,<tfc:cobble/granite>,
<tfc:cobble/rhyolite>,<tfc:cobble/limestone>,<tfc:cobble/schist>,<tfc:cobble/chert>,<tfc:cobble/dacite>,
<tfc:cobble/conglomerate>,<tfc:cobble/claystone>,<tfc:cobble/shale>,<tfc:cobble/gabbro>,<tfc:cobble/dolomite>,
<tfc:cobble/quartzite>,<tfc:cobble/slate>,<tfc:cobble/rocksalt>,<tfc:cobble/phyllite>,<tfc:cobble/chalk>,
<tfc:cobble/basalt>,<tfc:cobble/andesite>]);
//dirt
<ore:tfcDirt>.addItems([<tfc:dirt/marble>,<tfc:dirt/andesite>,<tfc:dirt/phyllite>,
<tfc:dirt/claystone>,<tfc:dirt/granite>,<tfc:dirt/chert>,<tfc:dirt/gneiss>,
<tfc:dirt/chalk>,<tfc:dirt/rocksalt>,<tfc:dirt/shale>,<tfc:dirt/conglomerate>,
<tfc:dirt/quartzite>,<tfc:dirt/diorite>,<tfc:dirt/limestone>,<tfc:dirt/dolomite>,
<tfc:dirt/slate>,<tfc:dirt/dacite>,<tfc:dirt/schist>,<tfc:dirt/basalt>,<tfc:dirt/rhyolite>,<tfc:dirt/gabbro>]);
//Grass
<ore:tfcGrass>.addItems([<tfc:grass/limestone>,<tfc:grass/schist>,<tfc:grass/marble>,<tfc:grass/quartzite>,
<tfc:grass/diorite>,<tfc:grass/gabbro>,<tfc:grass/dacite>,<tfc:grass/phyllite>,<tfc:grass/claystone>,
<tfc:grass/granite>,<tfc:grass/chalk>,<tfc:grass/basalt>,<tfc:grass/rocksalt>,<tfc:grass/slate>,
<tfc:grass/shale>,<tfc:grass/gneiss>,<tfc:grass/chert>,<tfc:grass/dolomite>,<tfc:grass/conglomerate>,
<tfc:grass/andesite>,<tfc:grass/rhyolite>]);
//Sand 
<ore:tfcSand>.addItems([<tfc:sand/granite>,<tfc:sand/diorite>,<tfc:sand/gabbro>,<tfc:sand/shale>,
<tfc:sand/claystone>,<tfc:sand/rocksalt>,<tfc:sand/limestone>,<tfc:sand/conglomerate>,
<tfc:sand/dolomite>,<tfc:sand/phyllite>,<tfc:sand/slate>,<tfc:sand/quartzite>,
<tfc:sand/dacite>,<tfc:sand/andesite>,<tfc:sand/basalt>,<tfc:sand/rhyolite>,<tfc:sand/chalk>,
<tfc:sand/chert>,<tfc:sand/schist>,<tfc:sand/gneiss>,<tfc:sand/marble>]);
//Chests
<ore:tfcChest>.addItems([<tfc:wood/chest/spruce>,<tfc:wood/chest/hevea>,<tfc:wood/chest/rosewood>,<tfc:wood/chest/white_cedar>,<tfc:wood/chest/birch>,<tfc:wood/chest/acacia>,<tfc:wood/chest/pine>,<tfc:wood/chest/blackwood>,<tfc:wood/chest/douglas_fir>,<tfc:wood/chest/chestnut>,<tfc:wood/chest/kapok>,<tfc:wood/chest/oak>,<tfc:wood/chest/palm>,<tfc:wood/chest/maple>,<tfc:wood/chest/hickory>,<tfc:wood/chest/ash>,<tfc:wood/chest/aspen>,<tfc:wood/chest/willow>,<tfc:wood/chest/sequoia>,<tfc:wood/chest/sycamore>]);						   
<ore:chestWood>.addAll(<ore:chestTrapped>);
//Aluminium Plate
<ore:plateAluminum>.addAll(<ore:plateAluminium>);
<ore:plateAluminium>.mirror(<ore:plateAluminum>);
//Diamond
<ore:chipDiamond>.add(<tfc:gem/diamond:0>);
//Gears
<ore:gearIron>.addAll(<ore:gearWroughtIron>);
mods.jei.JEI.removeAndHide(<railcraft:gear:3>);
//Rock Shovel Head
<ore:tfcRockShovelHead>.addItems([<tfc:stone/shovel_head/metamorphic>,<tfc:stone/shovel_head/sedimentary>,
<tfc:stone/shovel_head/igneous_intrusive>,<tfc:stone/shovel_head/igneous_extrusive>]);
//Rods/Sticks
<ore:stickIron>.addAll(<ore:rodWroughtIron>);
<ore:stickIron>.addAll(<ore:stickWroughtIron>);
<ore:stickSteel>.addAll(<ore:rodSteel>);
<ore:stickCopper>.addAll(<ore:rodCopper>);
<ore:stickSteel>.addAll(<ore:rodSteel>);
<ore:stickTitanium>.addAll(<ore:rodTitanium>);
<ore:stickAluminum>.addAll(<ore:rodAluminium>);

<ore:stickStone>.addAll(<ore:rodStone>);
<ore:rodStone>.mirror(<ore:stickStone>);
//Axe Merge
<ore:axe>.addAll(<ore:toolAxe>);
<ore:toolAxe>.mirror(<ore:axe>);
//Saw Teirs
<ore:sawI>.addItems([<tfc:metal/saw/copper:*>]);
<ore:sawII>.addItems([<tfc:metal/saw/bismuth_bronze:*>,<tfc:metal/saw/black_bronze:*>,<tfc:metal/saw/bronze:*>,<tfc:metal/saw/nickel_silver:*>,<tfc:metal/saw/mithril:*>]);
<ore:sawIII>.addItems([<tfc:metal/saw/wrought_iron:*>,<tfc:metal/saw/invar:*>]);
<ore:sawIV>.addItems([<tfc:metal/saw/steel:*>,<tfc:metal/saw/aluminium:*>]);
<ore:sawV>.addItems([<tfc:metal/saw/black_steel:*>]);
<ore:sawVI>.addItems([<tfc:metal/saw/blue_steel:*>,<tfc:metal/saw/red_steel:*>,<tfc:metal/saw/cobalt:*>,<tfc:metal/saw/manyullyn:*>,<tfc:metal/saw/osmium:*>,<tfc:metal/saw/titanium:*>,<tfc:metal/saw/tungsten:*>,<tfc:metal/saw/tungsten_steel:*>]);

    //Baldes
    <ore:circlesawBrass>.add(<pyrotech:sawmill_blade_gold>);
    <ore:circlesawBronze>.add(<pyrotech:sawmill_blade_bone>);
    <ore:circlesawIron>.addItems([<pyrotech:sawmill_blade_iron>,<architecturecraft:sawblade>,<advancedrocketry:sawbladeiron>]);
    <ore:circlesawSteel>.add(<pyrotech:sawmill_blade_stone>);
    <ore:circlesawBlackSteel>.add(<pyrotech:sawmill_blade_flint>);
    <ore:circlesawManyullyn>.add(<pyrotech:sawmill_blade_obsidian>);
    <ore:circlesawDiamond>.add(<pyrotech:sawmill_blade_diamond>);
//Dough
<ore:dough>.addItems([<tfc:food/barley_dough>,<tfc:food/cornmeal_dough>,<tfc:food/oat_dough>,<tfc:food/rice_dough>,<tfc:food/rye_dough>,<tfc:food/wheat_dough>]);
//Mushrooms
<ore:mushroomAny>.addItems([<rustic:mooncap_mushroom>,<tfc:plants/porcini>]);
//Bread
<ore:breadAny>.addItems([<tfc:food/oat_bread>,<tfc:food/cornbread>,<tfc:food/oat_bread>,<tfc:food/rice_bread>,<tfc:food/rye_bread>,<tfc:food/wheat_bread>]);	
//Crooks
<ore:crookAny>.addItems([<inspirations:wooden_crook>,<inspirations:stone_crook>,<inspirations:bone_crook>,<inspirations:blaze_crook>,<inspirations:wither_crook>]);
//Buttons
<ore:buttonWood>.addItems([<tfc:wood/button/acacia>,<tfc:wood/button/ash>,<tfc:wood/button/aspen>,<tfc:wood/button/birch>,<tfc:wood/button/blackwood>,<tfc:wood/button/chestnut>,<tfc:wood/button/douglas_fir>,<tfc:wood/button/hickory>,<tfc:wood/button/kapok>,<tfc:wood/button/maple>,<tfc:wood/button/oak>,<tfc:wood/button/palm>,<tfc:wood/button/pine>,<tfc:wood/button/rosewood>,<tfc:wood/button/sequoia>,<tfc:wood/button/spruce>,<tfc:wood/button/sycamore>,<tfc:wood/button/white_cedar>,<tfc:wood/button/willow>]);
<ore:button>.add(<minecraft:stone_button>);
<ore:button>.addAll(<ore:buttonWood>);
//Wands

<ore:botWands>.add(<botania:twigwand>.withTag({color1: 0, color2: 0, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 1, color2: 1, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 2, color2: 2, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 3, color2: 3, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 4, color2: 4, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 5, color2: 5, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 6, color2: 6, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 7, color2: 7, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 8, color2: 8, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 8, color2: 8, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 9, color2: 9, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 10, color2: 10, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 11, color2: 11, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 12, color2: 12, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 13, color2: 13, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 14, color2: 14, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));
<ore:botWands>.add(<botania:twigwand>.withTag({color1: 15, color2: 15, boundTileZ: 0, boundTileX: 0, boundTileY: -1}));

<ore:anyWands>.addAll(<ore:botWands>);
#=============================================================================================================================================		
//Ore Clusters
<ore:clusterZinc>.add(<pyrotech:generated_slag_zinc_custom>);
<ore:clusterAntimony>.add(<pyrotech:generated_slag_antimony_custom>);
<ore:clusterPlantinum>.add(<pyrotech:generated_slag_platinum_custom>);
<ore:clusterTungsten>.add(<pyrotech:generated_slag_tungsten_custom>);
<ore:clusterCobalt>.add(<pyrotech:generated_slag_cobalt_custom>);
<ore:clusterBismuth>.add(<pyrotech:generated_slag_bismuth_custom>);
<ore:clusterOsmium>.add(<pyrotech:generated_slag_osmium_custom>);

<ore:clusterAluminium>.add(<pyrotech:generated_slag_aluminium_custom>);
<ore:clusterCopper>.add(<pyrotech:generated_slag_copper_custom>);
<ore:clusterGold>.add(<pyrotech:generated_slag_gold_custom>);
<ore:clusterIridium>.add(<pyrotech:generated_slag_iridium_custom>);
<ore:clusterIron>.add(<pyrotech:generated_slag_iron_custom>);
<ore:clusterLead>.add(<pyrotech:generated_slag_lead_custom>);
<ore:clusterNickel>.add(<pyrotech:generated_slag_nickel_custom>);
<ore:clusterSilver>.add(<pyrotech:generated_slag_silver_custom>);
<ore:clusterTin>.add(<pyrotech:generated_slag_tin_custom>);
<ore:clusterArdite>.add(<pyrotech:generated_slag_ardite_custom>);
<ore:clusterPitchblend>.add(<pyrotech:generated_slag_pitchblend_custom>);

<ore:oreCluster>.addItems([<pyrotech:generated_slag_zinc_custom>,<pyrotech:generated_slag_antimony_custom>,
<pyrotech:generated_slag_platinum_custom>,<pyrotech:generated_slag_tungsten_custom>,
<pyrotech:generated_slag_cobalt_custom>,<pyrotech:generated_slag_bismuth_custom>,
<pyrotech:generated_slag_osmium_custom>,<pyrotech:generated_slag_aluminium_custom>,
<pyrotech:generated_slag_copper_custom>,<pyrotech:generated_slag_gold_custom>,
<pyrotech:generated_slag_iridium_custom>,<pyrotech:generated_slag_iron_custom>,
<pyrotech:generated_slag_lead_custom>,<pyrotech:generated_slag_nickel_custom>,
<pyrotech:generated_slag_silver_custom>,<pyrotech:generated_slag_tin_custom>,<pyrotech:generated_slag_pitchblend_custom>,
<pyrotech:generated_slag_ardite_custom>]);
#=============================================================================================================================================		

//spalings
<ore:treeSapling>.addItems([<dynamictrees:appleseed>,<dynamictrees:oakseed>,<dynamictrees:spruceseed>,
<dynamictrees:birchseed>,<dynamictrees:jungleseed>,<dynamictrees:acaciaseed>,<dynamictrees:darkoakseed>,
<dynamictrees:cactusseed>,<dynamictreestfc:seed/acacia>,<rustic:oliveseed>,<dynamictreestfc:seed/hevea>,
<dynamictreestfc:seed/willow>,<dynamictreestfc:seed/white_cedar>,<dynamictreestfc:seed/sycamore>,
<dynamictreestfc:seed/spruce>,<dynamictreestfc:seed/sequoia>,<dynamictreestfc:seed/rosewood>,<dynamictreestfc:seed/pine>,
<dynamictreestfc:seed/palm>,<dynamictreestfc:seed/oak>,<dynamictreestfc:seed/maple>,<dynamictreestfc:seed/kapok>,
<dynamictreestfc:seed/hickory>,<dynamictreestfc:seed/douglas_fir>,<dynamictreestfc:seed/chestnut>,
<dynamictreestfc:seed/blackwood>,<dynamictreestfc:seed/birch>,<dynamictreestfc:seed/aspen>,<dynamictreestfc:seed/ash>]);

//seeds
<ore:seedAny>.addItems([<agricraft:agri_seed:*>,<botania:grassseeds:*>,<tfc:crop/seeds/barley>,<tfc:crop/seeds/maize>,
<tfc:crop/seeds/oat>,<tfc:crop/seeds/rice>,<tfc:crop/seeds/rye>,<tfc:crop/seeds/wheat>,
<tfc:crop/seeds/beet>,<tfc:crop/seeds/cabbage>,<tfc:crop/seeds/carrot>,<rustic:chili_pepper_seeds>,
<rustic:ironwoodseed>,<botania:worldseed>,<botania:overgrowthseed>,<tfc:crop/seeds/yellow_bell_pepper>,
<tfc:crop/seeds/jute>,<minecraft:pumpkin_seeds>,<minecraft:melon_seeds>,<immersiveengineering:seed>,
<inspirations:cactus_seeds>,<rustic:grape_stem>,<rustic:apple_seeds>,<tfc:crop/seeds/garlic>,
<tfc:crop/seeds/green_bean>,<tfc:crop/seeds/onion>,<tfc:crop/seeds/potato>,<tfc:crop/seeds/soybean>,
<tfc:crop/seeds/squash>,<tfc:crop/seeds/sugarcane>,<tfc:crop/seeds/tomato>,<tfc:crop/seeds/red_bell_pepper>,
<dynamictrees:appleseed>,<dynamictrees:oakseed>,<dynamictrees:spruceseed>,<dynamictrees:birchseed>,
<dynamictrees:jungleseed>,<dynamictrees:acaciaseed>,<dynamictrees:darkoakseed>,<dynamictrees:cactusseed>,
<dynamictreestfc:seed/acacia>,<rustic:oliveseed>,<dynamictreestfc:seed/hevea>,<dynamictreestfc:seed/willow>,
<dynamictreestfc:seed/white_cedar>,<dynamictreestfc:seed/sycamore>,<dynamictreestfc:seed/spruce>,
<dynamictreestfc:seed/sequoia>,<dynamictreestfc:seed/rosewood>,<dynamictreestfc:seed/pine>,<dynamictreestfc:seed/palm>,
<dynamictreestfc:seed/oak>,<dynamictreestfc:seed/maple>,<dynamictreestfc:seed/kapok>,<dynamictreestfc:seed/hickory>,
<dynamictreestfc:seed/douglas_fir>,<dynamictreestfc:seed/chestnut>,<dynamictreestfc:seed/blackwood>,
<dynamictreestfc:seed/birch>,<dynamictreestfc:seed/aspen>,<dynamictreestfc:seed/ash>,<rustichromia:cotton_seed>]);

<ore:seedWheat>.add(<tfc:crop/seeds/wheat>);
<ore:seedBeetroot>.add(<tfc:crop/seeds/beet>);
<ore:seedSugar>.add(<inspirations:sugar_cane_seeds>);
<ore:seedSugar>.add(<tfc:crop/seeds/sugarcane>);
<ore:seedPotato>.add(<inspirations:potato_seeds>);
<ore:seedPotato>.add(<tfc:crop/seeds/potato>);
<ore:seedCarrot>.add(<inspirations:carrot_seeds>);
<ore:seedCarrot>.add(<tfc:crop/seeds/carrot>);
<ore:seedTomato>.add(<rustic:tomato_seeds>);
<ore:seedTomato>.add(<tfc:crop/seeds/tomato>);
#=============================================================================================================================================		
//foods
<ore:foodApple>.addItems([<minecraft:apple>,<tfc:food/red_apple>]);
<ore:foodWheatbread>.addItems([<minecraft:bread>,<tfc:food/wheat_bread>]);
<ore:foodRawpork>.addItems([<minecraft:porkchop>,<tfc:food/pork>,<emergingtechnology:syntheticpigraw>]);
<ore:foodCookedpork>.addItems([<minecraft:cooked_porkchop>,<tfc:food/cooked_pork>,<emergingtechnology:syntheticpigcooked>]);
<ore:foodRawfish>.addItems([<minecraft:fish>,<tfc:food/fish>]);
<ore:foodCookedfish>.addItems([<minecraft:cooked_fish>,<tfc:food/cooked_fish>]);
<ore:foodRawmutton>.addItems([<minecraft:mutton>,<tfc:food/mutton>]);
<ore:foodCookedmutton>.addItems([<minecraft:cooked_mutton>,<tfc:food/cooked_mutton>]);
<ore:foodRawchicken>.addItems([<minecraft:chicken>,<tfc:food/chicken>,<emergingtechnology:syntheticchickenraw>]);
<ore:foodCookedchicken>.addItems([<minecraft:cooked_chicken>,<tfc:food/cooked_chicken>,<emergingtechnology:syntheticchickencooked>]);
<ore:foodRawbeef>.addItems([<minecraft:beef>,<tfc:food/beef>,<emergingtechnology:syntheticcowraw>]);
<ore:foodCookedbeef>.addItems([<minecraft:cooked_beef>,<tfc:food/cooked_beef>,<emergingtechnology:syntheticcowcooked>]);
<ore:foodRawrabbit>.addItems([<minecraft:rabbit>,<tfc:food/rabbit>]);
<ore:foodCookedrabbit>.addItems([<minecraft:cooked_rabbit>,<tfc:food/cooked_rabbit>]);
<ore:foodBeet>.addItems([<minecraft:beetroot>,<tfc:food/beet>]);
<ore:foodCarrot>.addItems([<minecraft:carrot>,<tfc:food/carrot>]);
<ore:foodPotato>.addItems([<minecraft:potato>,<tfc:food/potato>]);
<ore:foodRawsquid>.addItems([<foodexpansion:itemsquid>,<tfc:food/calamari>]);
<ore:foodCookedsquid>.addItems([<foodexpansion:itemcookedsquid>,<tfc:food/cooked_calamari>]);
<ore:foodRawhorse>.addItems([<foodexpansion:itemhorsemeat>,<tfc:food/horse_meat>]);
<ore:foodCookedhorse>.addItems([<foodexpansion:itemcookedhorsemeat>,<tfc:food/cooked_horse_meat>]);
<ore:foodRawwolf>.addItems([<foodexpansion:itemwolfmeat>,<tfc:food/wolf>]);
<ore:foodCookedwolf>.addItems([<foodexpansion:itemcookedwolfmeat>,<tfc:food/cooked_wolf>]);
<ore:foodCherry>.addItems([<forestry:fruits>,<tfc:food/cherry>]);
<ore:foodLemon>.addItems([<forestry:fruits:3>,<tfc:food/lemon>]);
<ore:foodPlum>.addItems([<forestry:fruits:4>,<tfc:food/plum>]);
<ore:foodOlive>.addItems([<rustic:olives>,<tfc:food/olive>]);
<ore:foodTomato>.addItems([<rustic:tomato>,<tfc:food/tomato>]);
<ore:foodCookedegg>.addItems([<tfc:food/cooked_egg>,<foodexpansion:itemfriedegg>,<betteranimalsplus:fried_egg>]);
<ore:foodWheatflour>.addItems([<nuclearcraft:flour>,<rustichromia:dust_flour>,<tfc:food/wheat_flour>]);
<ore:foodVenisonraw>.addItems([<tfc:food/venison>]);
<ore:foodVenisoncooked>.addItems([<tfc:food/cooked_venison>]);
