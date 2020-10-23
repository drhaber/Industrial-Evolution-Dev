#loader preinit
import mods.treetweaker.TreeFactory;

var largemenril = TreeFactory.createTree("largemenril");
largemenril.setTreeType("LARGE_OAK");
largemenril.setLog("integrateddynamics:menril_log:1");
largemenril.setLeaf("integrateddynamics:menril_leaves");
largemenril.extraTreeHeight = 6;
largemenril.minTreeHeight = 15;
largemenril.generationFrequency = 50;
largemenril.extraThick = true; //will make trunk 2x2
largemenril.setGenBiome("aether_legacy:aether_highlands");
largemenril.register();