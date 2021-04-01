import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;


val shulkers = [<minecraft:white_shulker_box>,<minecraft:orange_shulker_box>,<minecraft:magenta_shulker_box>,<minecraft:light_blue_shulker_box>,<minecraft:yellow_shulker_box>,
<minecraft:lime_shulker_box>,<minecraft:pink_shulker_box>,<minecraft:gray_shulker_box>,<minecraft:silver_shulker_box>,<minecraft:cyan_shulker_box>,<minecraft:purple_shulker_box>,
<minecraft:blue_shulker_box>,<minecraft:brown_shulker_box>,<minecraft:green_shulker_box>,<minecraft:red_shulker_box>,<minecraft:black_shulker_box>] as IItemStack[];
for shulk in shulkers{
ItemRegistry.registerItemSize(shulk, "LARGE", "HEAVY");
}
#=============================================================================================================================================		
/*
val one_block_machines = [<forestry:bottler>,<forestry:carpenter>,<forestry:centrifuge>,<forestry:fermenter>,
<forestry:moistener>,<forestry:squeezer>,<forestry:still>,<nuclearcraft:nuclear_furnace_idle>,
<nuclearcraft:manufactory_idle>,<nuclearcraft:decay_hastener_idle>,<nuclearcraft:fuel_reprocessor_idle>,
<nuclearcraft:alloy_furnace_idle>,<nuclearcraft:infuser_idle>,<nuclearcraft:melter_idle>,<nuclearcraft:supercooler_idle>,
<nuclearcraft:electrolyser_idle>,<nuclearcraft:rock_crusher_idle>,<nuclearcraft:fission_controller_new_fixed>,
<nuclearcraft:fusion_core>,<nuclearcraft:irradiator_idle>,<nuclearcraft:ingot_former_idle>,<nuclearcraft:pressurizer_idle>,
<nuclearcraft:chemical_reactor_idle>,<nuclearcraft:salt_mixer_idle>,<nuclearcraft:crystallizer_idle>,
<nuclearcraft:dissolver_idle>,<nuclearcraft:extractor_idle>,<nuclearcraft:centrifuge_idle>,<astralsorcery:blockobservatory>] as IItemStack[];
for OBM in one_block_machines{
ItemRegistry.registerItemSize(OBM, "HUGE", "HEAVY");
}
#=============================================================================================================================================		

val very_large_machines = [<forestry:rainmaker>,<forestry:fabricator>,<forestry:engine_peat>,<forestry:engine_biogas>,
<forestry:arboretum>,<forestry:farm_crops>,<forestry:farm_mushroom>,<forestry:farm_gourd>,<forestry:farm_nether>,
<forestry:farm_ender>,<forestry:peat_bog>,<forestry:arboretum:1>,<forestry:farm_crops:1>,<forestry:farm_mushroom:1>,<forestry:farm_gourd:1>,<forestry:farm_nether:1>,
<forestry:farm_ender:1>,<forestry:peat_bog:1>,<nuclearcraft:nuclear_furnace_idle>,<nuclearcraft:manufactory_idle>,
<nuclearcraft:decay_hastener_idle>,<nuclearcraft:fuel_reprocessor_idle>,<nuclearcraft:alloy_furnace_idle>,<nuclearcraft:infuser_idle>,
<nuclearcraft:melter_idle>,<nuclearcraft:supercooler_idle>,<nuclearcraft:electrolyser_idle>,<nuclearcraft:rock_crusher_idle>,
<nuclearcraft:fission_controller_new_fixed>,<nuclearcraft:fusion_core>,<nuclearcraft:irradiator_idle>,<nuclearcraft:ingot_former_idle>,
<nuclearcraft:pressurizer_idle>,<nuclearcraft:chemical_reactor_idle>,<nuclearcraft:salt_mixer_idle>,<nuclearcraft:crystallizer_idle>,
<nuclearcraft:dissolver_idle>,<nuclearcraft:extractor_idle>,<nuclearcraft:centrifuge_idle>,<nuclearcraft:solar_panel_basic>,
<nuclearcraft:solar_panel_advanced>,<nuclearcraft:solar_panel_du>,<nuclearcraft:solar_panel_elite>,<nuclearcraft:decay_generator>,
<nuclearcraft:rtg_uranium>,<nuclearcraft:rtg_plutonium>,<nuclearcraft:rtg_americium>,<nuclearcraft:rtg_californium>] as IItemStack[];
for VLM in very_large_machines{
ItemRegistry.registerItemSize(VLM, "VERY_LARGE", "HEAVY");
}
*/
#=============================================================================================================================================		
val metal_minecarts = [<minecraft:minecart>,<minecraft:chest_minecart>,<minecraft:furnace_minecart>,<minecraft:tnt_minecart>,
<minecraft:hopper_minecart>,<minecraft:command_block_minecart>,<railcraft:cart_spawner>,<railcraft:mow_track_layer>,
<railcraft:mow_track_relayer>,<railcraft:cart_chest_metals>,<railcraft:cart_redstone_flux>,<railcraft:cart_cargo>,
<railcraft:cart_tank>,<railcraft:cart_chest_void>,<railcraft:mow_track_remover>,<railcraft:mow_undercutter>,
<railcraft:cart_trade_station>,<railcraft:cart_work>,<railcraft:cart_jukebox>,<railcraft:cart_bed>,
<railcraft:cart_worldspike_standard>,<railcraft:cart_worldspike_admin>,<railcraft:cart_worldspike_personal>,
<forestry:cart.beehouse>,<forestry:cart.beehouse:1>,<botania:poolminecart>] as IItemStack[];
for MMC in metal_minecarts{
ItemRegistry.registerItemSize(MMC, "VERY_LARGE", "HEAVY");
}

val large_machines = [<forestry:engine_clockwork>,<immersivepetroleum:speedboat>,<minecraft:anvil>,
<minecraft:anvil:1>,<minecraft:anvil:2>,<railcraft:anvil>,<railcraft:anvil:1>,<railcraft:anvil:2>,
<yurtmod:tent_upgrade_gold>,<yurtmod:tent_upgrade_obsidian>,<yurtmod:tent_upgrade_diamond>] as IItemStack[];
for LM in large_machines{
ItemRegistry.registerItemSize(LM, "LARGE", "HEAVY");
}

val wooddoors = <ore:doorWood>.items;
for WD in wooddoors{
ItemRegistry.registerItemSize(WD, "HUGE", "MEDIUM");
}

val banners= <minecraft:banner>.definition;
for i in 0 to 16{
ItemRegistry.registerItemSize(banners.makeStack(i), "HUGE", "MEDIUM");
}

val boats_and_wood_carts = [<minecraft:boat>,<minecraft:spruce_boat>,<minecraft:birch_boat>,<minecraft:jungle_boat>,
<minecraft:acacia_boat>,<minecraft:dark_oak_boat>,<extrabotany:flyingboat>,<extrabotany:flyingboat:1>,
<extrabotany:flyingboat:2>,<railcraft:cart_pumpkin>,<railcraft:cart_gift>,<railcraft:cart_tnt_wood>,
<astikorcarts:cargocart>,<astikorcarts:mobcart>,<astikorcarts:plowcart>,<yurtmod:yurt_wall_piece>,
<yurtmod:tepee_wall_piece>,<yurtmod:bed_wall_piece>,<yurtmod:indlu_wall_piece>,<yurtmod:shamiana_wall_piece>] as IItemStack[];
for BWC in boats_and_wood_carts{
ItemRegistry.registerItemSize(BWC, "LARGE", "LIGHT");
}

ItemRegistry.registerItemSize(<openlights:prismaticpaste>, "LARGE", "LIGHT");

ItemRegistry.registerItemSize(<yurtmod:tent>, "HUGE", "MEDIUM");

val Tools = [<yurtmod:mallet>,<yurtmod:super_mallet>,<yurtmod:depth_upgrade_stone>,<yurtmod:depth_upgrade_iron>,
<yurtmod:depth_upgrade_gold>,<yurtmod:depth_upgrade_obsidian>,<yurtmod:depth_upgrade_diamond>] as IItemStack[];
for TS in Tools{
ItemRegistry.registerItemSize(TS, "LARGE", "MEDIUM");
}