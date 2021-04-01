import moretweaker.railcraft.RollingMachine;

furnace.addRecipe(<aunis:crystal_fragment>*2, <appliedenergistics2:crystal_seed>);
#mods.nuclearcraft.alloy_furnace.addRecipe(<aunis:naquadah_shard>, <nuclearcraft:alloy:11>, <aunis:naquadah_alloy>*2);
mods.appliedenergistics2.Inscriber.addRecipe(<aunis:circuit_control_crystal>, <aunis:crystal_white>, false, <aunis:circuit_control_base>, <projectred-core:resource_item>);
mods.appliedenergistics2.Inscriber.addRecipe(<aunis:circuit_control_naquadah>, <aunis:naquadah_shard>, false, <aunis:circuit_control_base>, <projectred-core:resource_item>);
mods.terrafirmacraft.Barrel.addRecipe("White_Crystal", <aunis:crystal_fragment>, <liquid:limewater>*100, <aunis:crystal_white>,32);
#mods.nuclearcraft.alloy_furnace.addRecipe(<aunis:crystal_white>, <minecraft:glowstone_dust>, <aunis:crystal_yellow>);
#mods.nuclearcraft.alloy_furnace.addRecipe(<aunis:crystal_white>, <minecraft:ender_pearl>, <aunis:crystal_blue>);
#mods.nuclearcraft.alloy_furnace.addRecipe(<aunis:crystal_white>, <minecraft:ender_eye>, <aunis:crystal_ender>);
#mods.nuclearcraft.alloy_furnace.addRecipe(<aunis:crystal_white>, <minecraft:redstone>, <aunis:crystal_red>);

RollingMachine.addShaped(<contenttweaker:naquadah_sheet>,[[<aunis:naquadah_shard>,<aunis:naquadah_shard>],[<aunis:naquadah_shard>,<aunis:naquadah_shard>]], 300);
recipes.remove(<aunis:transportrings_ring_fragment>);
RollingMachine.addShaped(<aunis:transportrings_ring_fragment>,[
[<contenttweaker:naquadah_sheet>,<contenttweaker:naquadah_sheet>,<contenttweaker:naquadah_sheet>],
[<ore:sheetConstantan>,<ore:enderpearl>,<ore:sheetConstantan>],
[<contenttweaker:naquadah_sheet>,<contenttweaker:naquadah_sheet>,<contenttweaker:naquadah_sheet>]], 300);

//Rings
recipes.remove(<aunis:transportrings_block>);
recipes.addShaped(<aunis:transportrings_block>,[
	[<aunis:transportrings_ring_fragment>,<aunis:transportrings_ring_fragment>,<aunis:transportrings_ring_fragment>],
	[<aunis:transportrings_ring_fragment>,<appliedenergistics2:material:9>,<aunis:transportrings_ring_fragment>],
	[<aunis:transportrings_ring_fragment>,<aunis:transportrings_ring_fragment>,<aunis:transportrings_ring_fragment>]]);
recipes.remove(<aunis:transportrings_controller_block>);
recipes.addShaped(<aunis:transportrings_controller_block>,[
	[null,<aunis:naquadah_shard>,null],
	[<ore:sheetGold>,<opencomputers:material:16>,<ore:sheetGold>],
	[<ore:sheetGold>,<appliedenergistics2:material:9>,<ore:sheetGold>]]);
