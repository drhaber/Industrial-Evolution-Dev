import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.worldgenindicators.BlockChecker;
import mods.worldgenindicators.WorldGenManager;
import mods.worldgenindicators.SurfaceIndicator;
import crafttweaker.block.IBlock;


//Menril Sapling as Indicator Spawn Solution
    var Ore = <libvulpes:ore0>.asBlock();
    var MenrilSapling = <integrateddynamics:menril_sapling>.asBlock();
    var surfaceIndicator = SurfaceIndicator.create().add(MenrilSapling);
    var blockChecker = BlockChecker.create(0.1).addValid(Ore).addIndicator(surfaceIndicator);
    WorldGenManager.addChecker(blockChecker);