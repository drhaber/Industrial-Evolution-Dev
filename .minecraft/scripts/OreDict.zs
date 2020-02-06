import crafttweaker.oredict.IOreDictEntry;
val sandy = <ore:sand>;
sandy.remove(<minecraft:sand>);
sandy.remove(<minecraft:sand:1>);

//Aluminium
<ore:ingotAluminum>.addAll(<ore:ingotAluminium>);
<ore:ingotAluminium>.mirror(<ore:ingotAluminum>);
//Bricks
<ore:ingotBrick>.addAll(<ore:brick>); //This adds ingot brick to all bricks
//Aquamarine
<ore:gemAquamarine>.addAll(<ore:gemBeryl>);
//Sand 
#<ore:tfcSand>.addAll(<ore:sand>);
