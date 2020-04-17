import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Heating;


// ---- Add terracota (hardened clay) recipe ----
// Resize clay block so only one can be fired at a time
ItemRegistry.registerItemSize(<minecraft:clay>, 'HUGE', 'MEDIUM');
ItemRegistry.registerItemSize(<minecraft:hardened_clay>, 'HUGE', 'MEDIUM');

/*
// Remove vanilla recipes
furnace.remove(<minecraft:hardened_clay>);

// Add heat capacity to clay block
ItemRegistry.registerItemHeat(
    <minecraft:clay>,
    0.2,
    2000,
    false
);
ItemRegistry.registerItemHeat(
    <minecraft:hardened_clay>,
    0.2,
    2000,
    false
);

// Add heat recipe for clay block -> terracotta
Heating.addRecipe(
    'tfc_terracotta',
    <minecraft:clay>,
    <minecraft:hardened_clay>,
    1500,
    2000
);
*/