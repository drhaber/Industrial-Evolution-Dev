import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.item.IItemStack;

events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent){
    if(!isNull(event.player.currentItem))
    if(event.player.currentItem.definition.id has "tfc:metal/shears/"){
        val meta = event.block.meta;
        val id = event.block.definition.id;
        if(id == "dynamictreestfc:leaves0"){
            if(meta < 4){
                event.player.give(<tfc:wood/leaves/acacia>);
            }else if(meta < 8){
                event.player.give(<tfc:wood/leaves/ash>);
            }else if(meta < 12){
                event.player.give(<tfc:wood/leaves/aspen>);
            }else{
                event.player.give(<tfc:wood/leaves/birch>);
            }
        }else if(id == "dynamictreestfc:leaves1"){
        if(meta < 4){
                event.player.give(<tfc:wood/leaves/blackwood>);
            }else if(meta < 8){
                event.player.give(<tfc:wood/leaves/chestnut>);
            }else if(meta < 12){
                event.player.give(<tfc:wood/leaves/douglas_fir>);
            }else{
                event.player.give(<tfc:wood/leaves/hickory>);
            }
        }else if(id == "dynamictreestfc:leaves2"){
        if(meta < 4){
                event.player.give(<tfc:wood/leaves/kapok>);
            }else if(meta < 8){
                event.player.give(<tfc:wood/leaves/maple>);
            }else if(meta < 12){
                event.player.give(<tfc:wood/leaves/oak>);
            }else{
                event.player.give(<tfc:wood/leaves/palm>);
            }
        }else if(id == "dynamictreestfc:leaves3"){
        if(meta < 4){
                event.player.give(<tfc:wood/leaves/pine>);
            }else if(meta < 8){
                event.player.give(<tfc:wood/leaves/rosewood>);
            }else if(meta < 12){
                event.player.give(<tfc:wood/leaves/sequoia>);
            }else{
                event.player.give(<tfc:wood/leaves/spruce>);
            }
        }else if(id == "dynamictreestfc:leaves4"){
        if(meta < 4){
                event.player.give(<tfc:wood/leaves/sycamore>);
            }else if(meta < 8){
                event.player.give(<tfc:wood/leaves/white_cedar>);
            }else if(meta < 12){
                event.player.give(<tfc:wood/leaves/willow>);
            }else{
                event.player.give(<tfc:wood/leaves/willow>);
            }
        }
    }
});
