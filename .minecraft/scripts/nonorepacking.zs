
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.CompactingBin;
import mods.cyclicmagic.Packager;
import mods.dropt.Dropt;

zenClass PackingNonOres {
    val block as IItemStack;
    val ball as IItemStack;
    val lump as IItemStack;
    val layer as IItemStack;   
    val dust as IItemStack;
    val x4dust as IItemStack;       

        zenConstructor(block as IItemStack){
            this.block = block;
            this.ball = null;            
            this.lump = null;
            this.layer = null;
            this.dust = null;
            this.x4dust = null;            
        }
    function withblock(block as IItemStack) as PackingNonOres {
        this.block=block;
        return this;
    }
    function withball(ball as IItemStack) as PackingNonOres {
        this.ball=ball;
        return this;
    }    
    function withlump(lump as IItemStack) as PackingNonOres {
        this.lump=lump;
        return this;
    }
    function withlayer(layer as IItemStack) as PackingNonOres {
        this.layer=layer;
        return this;
    }
    function withdust(dust as IItemStack) as PackingNonOres {
        this.dust=dust;
        return this;
    }
    function withx4dust(x4dust as IItemStack) as PackingNonOres {
        this.x4dust=x4dust;
        return this;
    }            
    function finish() as void{
        if(isNull(block)) {
            logger.logError("bloak is null, PackingNonOres Skipped");
            return;
        }
        if(!isNull(block)){
            recipes.remove(block);
            Packager.removeRecipe(block);
        } 
        if(!isNull(ball)){
            CompactingBin.addRecipe(ball.name,block,ball,9,true);
            recipes.remove(ball);
            Packager.removeRecipe(ball);
            Packager.addRecipe(block, ball*9);
            Packager.addRecipe(ball*9, block);        
        }
        if(!isNull(lump)){
            CompactingBin.addRecipe(lump.name,ball,lump,4,true);
            recipes.remove(lump);
            Packager.removeRecipe(lump);
            Packager.addRecipe(ball, lump*4);
            Packager.addRecipe(lump*4, ball);        
        }
        if(!isNull(layer)){
            CompactingBin.addRecipe(layer.name,block,layer,8,true);
            recipes.remove(layer);
            Packager.removeRecipe(layer);
            Packager.addRecipe(block, layer*8);
            Packager.addRecipe(layer*8, block);        
        } 
        if(!isNull(dust)){
            GraniteAnvil.addRecipe(block.name + dust.name,dust*9,block,4,"hammer",true);
            CompactingBin.addRecipe(dust.name,block,dust,9,true);
            recipes.remove(dust);
            Packager.removeRecipe(dust);
            Packager.addRecipe(block, dust*9);
            Packager.addRecipe(dust*9, block);        
        }
        if(!isNull(x4dust)){
            GraniteAnvil.addRecipe(block.name + x4dust.name,x4dust*4,block,4,"hammer",true);
            CompactingBin.addRecipe(x4dust.name,block,x4dust,4,true);
            recipes.remove(x4dust);
            Packager.removeRecipe(x4dust);
            Packager.addRecipe(block, x4dust*4);
            Packager.addRecipe(x4dust*4, block);        
        }         
    }     
}

PackingNonOres(<minecraft:clay>)
    .withball(<minecraft:clay_ball>)            
    .withlump(<pyrotech:material:17>)
    .finish();
PackingNonOres(<minecraft:snow>)
    .withball(<minecraft:snowball>)  
    .withlayer(<minecraft:snow_layer>)          
    .finish();    
PackingNonOres(<minecraft:redstone_block>)
    .withdust(<minecraft:redstone>)      
    .finish();
PackingNonOres(<minecraft:diamond_block>)
    .withdust(<minecraft:diamond>)      
    .finish();    
PackingNonOres(<minecraft:bone_block>)
    .withdust(<minecraft:dye:15>)      
    .finish();
PackingNonOres(<immersiveengineering:stone_decoration:3>)
    .withdust(<immersiveengineering:material:6>)      
    .finish();      
PackingNonOres(<appliedenergistics2:fluix_block>)
    .withdust(<appliedenergistics2:material:7>)    
    .withx4dust(<appliedenergistics2:material:12>)   
    .finish(); 
PackingNonOres(<appliedenergistics2:quartz_block>)
    .withdust(<appliedenergistics2:material:0>)  
    .withx4dust(<appliedenergistics2:material:10>)     
    .finish(); 
PackingNonOres(<minecraft:quartz_block>)
    .withdust(<minecraft:quartz>)  
    .withx4dust(<appliedenergistics2:material:11>)      
    .finish();      
PackingNonOres(<aunis:naquadah_block>)
    .withdust(<aunis:naquadah_alloy>)      
    .finish();
PackingNonOres(<betternether:reeds_block>)
    .withdust(<betternether:nether_reed>)      
    .finish();                                    