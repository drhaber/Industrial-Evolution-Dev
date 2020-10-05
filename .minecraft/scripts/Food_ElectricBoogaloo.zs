import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry.registerItemHeat;
import mods.terrafirmacraft.ItemRegistry.registerFood;
import mods.terrafirmacraft.Heating;

zenClass RegisterFoods {
    var FoodItem as IItemStack;
    var Hunger as int;
    var Water as float;
    var Saturation as float;
    var Decay as float;
    var Grain as float;
    var Vegetables as float; 
    var Fruit as float;    
    var Protein as float;
    var Dairy as float;

    var HeatCap as float;
    var MaxTemp as float;
    var Category as IOreDictEntry;

    zenConstructor(FoodItem as IItemStack){
        this.FoodItem = FoodItem;
        this.Hunger = 0;
        this.Water = 0.0;
        this.Saturation = 0.0;
        this.Decay = 0.0;
        this.Grain = 0.0;
        this.Vegetables = 0.0; 
        this.Fruit = 0.0;    
        this.Protein = 0.0;
        this.Dairy = 0.0;
        
        this.HeatCap = 0.0;
        this.MaxTemp = 0.0;
        this.Category = null;
    }
        function withHunger(Hunger as int) as RegisterFoods{
            this.Hunger=Hunger;
            return this;
        }    
        function withWater(Water as float) as RegisterFoods{
            this.Water=Water;
            return this;
        }
        function withSaturation(Saturation as float) as RegisterFoods{
            this.Saturation=Saturation;
            return this;
        }
        function withDecay(Decay as float) as RegisterFoods{
            this.Decay=Decay;
            return this;
        }
        function withGrain(Grain as float) as RegisterFoods{
            this.Grain=Grain;
            return this;
        }
        function withVegetables(Vegetables as float) as RegisterFoods{
            this.Vegetables=Vegetables;
            return this;
        } 
        function withFruit(Fruit as float) as RegisterFoods{
            this.Fruit=Fruit;
            return this;
        }    
        function withProtein(Protein as float) as RegisterFoods{
            this.Protein=Protein;
            return this;
        }
        function withDairy(Dairy as float) as RegisterFoods{
            this.Dairy=Dairy;
            return this;
        }
        
        function withHeatCap(HeatCap as float) as RegisterFoods{
            this.HeatCap=HeatCap;
            return this;
        }
        function withMaxTemp(MaxTemp as float) as RegisterFoods{
            this.MaxTemp=MaxTemp;
            return this;
        }
        function withCategory(Category as IOreDictEntry) as RegisterFoods{
            this.Category=Category;
            return this;
        }
        function finish() as void{
            registerFood(FoodItem,Hunger,Water,Saturation,Decay,Grain,Vegetables,Fruit,Protein,Dairy);
        if((HeatCap >0) && (MaxTemp>0)) {
            registerItemHeat(FoodItem,HeatCap,MaxTemp,false);
        }
        if(!isNull(Category)) {
            Category.add(FoodItem);
        }
    }    
}

/*
RegisterFoods()
    .withHunger()   .withWater()    .withSaturation()   .withDecay()
    .withGrain()    .withVegetables()   .withFruit()    .withProtein()  .withDairy()
    .withHeatCap()  .withMaxTemp()
    .withCategory()
    .finish();
*/

RegisterFoods(<minecraft:mushroom_stew>)
    .withHunger(2)  .withWater(2)   .withSaturation(1.2)    .withDecay(6)
    .withGrain(1)   .withVegetables(0.2)    .withFruit(0)   .withProtein(1) .withDairy(0.8)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<minecraft:fish:1>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(2) .withDairy(0.2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<minecraft:fish:2>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(2) .withDairy(0.2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<minecraft:fish:3>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(2)  .withFruit(0)   .withProtein(1) .withDairy(0.1)
    .withCategory(<ore:category>)
    .finish();

RegisterFoods(<minecraft:cooked_fish:1>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.6)    .withDecay(2.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(2) .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<minecraft:cookie>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.2)    .withDecay(0.8)
    .withGrain(1.5) .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(1)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<minecraft:melon>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.4)    .withDecay(4)
    .withGrain(0)   .withVegetables(0)  .withFruit(1)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<minecraft:spider_eye>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.1)    .withDecay(3)
    .withGrain(0)   .withVegetables(0.2)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:category>)
    .finish();

RegisterFoods(<minecraft:baked_potato>)
    .withHunger(1)  .withWater(1.5) .withSaturation(0.9)    .withDecay(5)
    .withGrain(1)   .withVegetables(0)  .withFruit(1)   .withProtein(0.5)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<minecraft:poisonous_potato>)
    .withHunger(1)  .withWater(3)   .withSaturation(0)  .withDecay(2)
    .withGrain(1)   .withVegetables(2)  .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:category>)
    .finish();

RegisterFoods(<minecraft:pumpkin_pie>)
    .withHunger(3)  .withWater(1)   .withSaturation(1.8)    .withDecay(4)
    .withGrain(3.6) .withVegetables(0)  .withFruit(0)   .withProtein(1.7)   .withDairy(3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<minecraft:rabbit_stew>)
    .withHunger(3)  .withWater(5)   .withSaturation(1.8)    .withDecay(5)
    .withGrain(0.2) .withVegetables(2)  .withFruit(2)   .withProtein(1.5)   .withDairy(0.5)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<minecraft:chorus_fruit>)
    .withHunger(1)  .withWater(0.1) .withSaturation(0.1)    .withDecay(1.3)
    .withGrain(0)   .withVegetables(0.2)    .withFruit(0.1) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<minecraft:beetroot_soup>)
    .withHunger(4)  .withWater(3)   .withSaturation(2)  .withDecay(5)
    .withGrain(2)   .withVegetables(0)  .withFruit(4)   .withProtein(1.5)   .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();


RegisterFoods(<foodexpansion:itemjelly>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(1)
    .withGrain(0)   .withVegetables(0.1)    .withFruit(0.1) .withProtein(0.1)   .withDairy(0.2)
    .withCategory(<ore:category>)
    .finish();

RegisterFoods(<foodexpansion:itembacon>)
    .withHunger(1)  .withWater(0.5) .withSaturation(0.1)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.2)   .withDairy(1)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemcookedbacon>)
    .withHunger(1)  .withWater(0.1) .withSaturation(0.4)    .withDecay(1.5)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1) .withDairy(1)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<foodexpansion:itembaconandegg>)
    .withHunger(2)  .withWater(0.1) .withSaturation(1)  .withDecay(1.5)
    .withGrain(2)   .withVegetables(1)  .withFruit(0)   .withProtein(2.5)   .withDairy(3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemcarrotseedsoup>)
    .withHunger(3)  .withWater(3)   .withSaturation(1.8)    .withDecay(6)
    .withGrain(1)   .withVegetables(1)  .withFruit(3)   .withProtein(1) .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemcompressedflesh>)
    .withHunger(1)  .withWater(-0.2)    .withSaturation(0.4)    .withDecay(0.4)
    .withGrain(0)   .withVegetables(0.1)    .withFruit(0)   .withProtein(2.1)   .withDairy(0.3)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemchocolatebar>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.7)    .withDecay(0.1)
    .withGrain(0.3) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.4)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemspidersoup>)
    .withHunger(3)  .withWater(3)   .withSaturation(1.7)    .withDecay(3)
    .withGrain(1)   .withVegetables(0.3)    .withFruit(2)   .withProtein(0) .withDairy(0.2)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemnetherwartsoup>)
    .withHunger(3)  .withWater(2)   .withSaturation(1.8)    .withDecay(3)
    .withGrain(1)   .withVegetables(0.2)    .withFruit(2)   .withProtein(0) .withDairy(0.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemcactusfruit>)
    .withHunger(1)  .withWater(3)   .withSaturation(0.2)    .withDecay(1.3)
    .withGrain(0)   .withVegetables(0.1)    .withFruit(0.1) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<foodexpansion:itemcookedmushroom>)
    .withHunger(1)  .withWater(0.1) .withSaturation(0.4)    .withDecay(2.3)
    .withGrain(0)   .withVegetables(0.2)    .withFruit(0.1) .withProtein(0.3)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemcarrotpie>)
    .withHunger(2)  .withWater(0.2) .withSaturation(1.4)    .withDecay(4)
    .withGrain(0.3) .withVegetables(0)  .withFruit(0.2) .withProtein(0.1)   .withDairy(0.5)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itembatwing>)
    .withHunger(1)  .withWater(0.5) .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1) .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemcookedbatwing>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.6)    .withDecay(2)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.5)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemblazecream>)
    .withHunger(3)  .withWater(0.2) .withSaturation(1.6)    .withDecay(2)
    .withGrain(0.2) .withVegetables(1)  .withFruit(0)   .withProtein(0.4)   .withDairy(0.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemmelonsalad>)
    .withHunger(2)  .withWater(1.4) .withSaturation(1.2)    .withDecay(5)
    .withGrain(0)   .withVegetables(0)  .withFruit(2)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemroastedseed>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.3)    .withDecay(1)
    .withGrain(0.1) .withVegetables(0)  .withFruit(0.1) .withProtein(0.1)   .withDairy(0.1)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryVegetable>)
    .finish();

RegisterFoods(<foodexpansion:itemocelotmeat>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.2)   .withDairy(0.2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemcookedocelotmeat>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.6)    .withDecay(2.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.7)   .withDairy(0.2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemlollipop>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.4)    .withDecay(0.1)
    .withGrain(0.1) .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(0.1)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itembeetrootnoodles>)
    .withHunger(3)  .withWater(1)   .withSaturation(1.6)    .withDecay(4)
    .withGrain(2)   .withVegetables(0.1)    .withFruit(3)   .withProtein(1) .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<foodexpansion:itemparrotmeat>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(2.5)   .withDairy(2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemcookedparrotmeat>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.8)    .withDecay(2.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(2.5)   .withDairy(2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemllamameat>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(2)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(2.5)   .withDairy(0.5)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemcookedllamameat>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.8)    .withDecay(1.5)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(2.5)   .withDairy(0.5)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<foodexpansion:itempolarbearmeat>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(2)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.5) .withProtein(2.5)   .withDairy(2.5)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<foodexpansion:itemcookedpolarbearmeat>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.8)    .withDecay(1.5)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.5) .withProtein(2.5)   .withDairy(2.3)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();


RegisterFoods(<inspirations:edibles>)
    .withHunger(1)  .withWater(3)   .withSaturation(0.6)    .withDecay(2)
    .withGrain(0)   .withVegetables(0.3)    .withFruit(1)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryVegetable>)
    .finish();

RegisterFoods(<inspirations:potato_soup>)
    .withHunger(4)  .withWater(2)   .withSaturation(2.3)    .withDecay(6)
    .withGrain(1.5) .withVegetables(2)  .withFruit(3)   .withProtein(2.7)   .withDairy(3.5)
    .withCategory(<ore:categoryMeal>)
    .finish();


RegisterFoods(<quark:root>)
    .withHunger(1)  .withWater(0.6) .withSaturation(0.2)    .withDecay(0.7)
    .withGrain(0.1) .withVegetables(0.8)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryVegetable>)
    .finish();

RegisterFoods(<quark:root_flower>)
    .withHunger(1)  .withWater(0.7) .withSaturation(0.3)    .withDecay(1.2)
    .withGrain(0.1) .withVegetables(0.9)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<quark:root_flower:1>)
    .withHunger(1)  .withWater(0.7) .withSaturation(0.3)    .withDecay(1.2)
    .withGrain(0.1) .withVegetables(0.9)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<quark:root_flower:2>)
    .withHunger(1)  .withWater(0.7) .withSaturation(0.3)    .withDecay(1.2)
    .withGrain(0.1) .withVegetables(0.9)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<quark:frog_leg>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1) .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<quark:cooked_frog_leg>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.4)    .withDecay(2.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1) .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<quark:golden_frog_leg>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.2)    .withDecay(2.25)
    .withGrain(0)   .withVegetables(1)  .withFruit(0)   .withProtein(1) .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<quark:crab_leg>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.2)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<quark:cooked_crab_leg>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.4)    .withDecay(2.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.4)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();


RegisterFoods(<emergingtechnology:algaebarcooked>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.6)    .withDecay(0.4)
    .withGrain(0)   .withVegetables(0.2)    .withFruit(0.4) .withProtein(0.1)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeal>)
    .finish();
    
RegisterFoods(<forestry:fruits:1>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.1)    .withDecay(0.1)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.2) .withProtein(0.1)   .withDairy(0.4)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<forestry:fruits:2>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.1)    .withDecay(0.1)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.2) .withProtein(0.1)   .withDairy(0.3)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<forestry:fruits:5>)
    .withHunger(1)  .withWater(3.2) .withSaturation(0.4)    .withDecay(4)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.4) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<forestry:fruits:6>)
    .withHunger(1)  .withWater(3)   .withSaturation(0.4)    .withDecay(4)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.3) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<forestry:honeyed_slice>)
    .withHunger(2)  .withWater(0)   .withSaturation(1)  .withDecay(0.6)
    .withGrain(2)   .withVegetables(0)  .withFruit(0.2) .withProtein(0.5)   .withDairy(0.5)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<forestry:ambrosia>)
    .withHunger(2)  .withWater(0.2) .withSaturation(1)  .withDecay(0)
    .withGrain(0)   .withVegetables(0.1)    .withFruit(0)   .withProtein(0.1)   .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<forestry:honey_pot>)
    .withHunger(2)  .withWater(0.2) .withSaturation(1)  .withDecay(0)
    .withGrain(0)   .withVegetables(0.1)    .withFruit(0)   .withProtein(0.1)   .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<nuclearcraft:graham_cracker>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.3)    .withDecay(0.8)
    .withGrain(0.2) .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(0.1)
    .withCategory(<ore:categoryGrain>)
    .finish();

RegisterFoods(<nuclearcraft:dominos>)
    .withHunger(6)  .withWater(0.3) .withSaturation(3)  .withDecay(2)
    .withGrain(2)   .withVegetables(2)  .withFruit(1)   .withProtein(2.5)   .withDairy(0.5)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<nuclearcraft:ground_cocoa_nibs>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.1)    .withDecay(0.1)
    .withGrain(0.1) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.2)
    .withCategory(<ore:category>)
    .finish();

RegisterFoods(<nuclearcraft:cocoa_butter>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.3)    .withDecay(0.1)
    .withGrain(0.3) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.5)
    .withCategory(<ore:category>)
    .finish();

RegisterFoods(<nuclearcraft:unsweetened_chocolate>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.4)    .withDecay(0.1)
    .withGrain(0.2) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.3)
    .withCategory(<ore:categoryDairy>)
    .finish();

RegisterFoods(<nuclearcraft:dark_chocolate>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.3)    .withDecay(0.1)
    .withGrain(0.2) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.3)
    .withCategory(<ore:categoryDairy>)
    .finish();

RegisterFoods(<nuclearcraft:milk_chocolate>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.4)    .withDecay(0.1)
    .withGrain(0.3) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.5)
    .withCategory(<ore:categoryDairy>)
    .finish();

RegisterFoods(<nuclearcraft:marshmallow>)
    .withHunger(1)  .withWater(0.2) .withSaturation(0.7)    .withDecay(0.3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(0.2)   .withDairy(0.4)
    .withCategory(<ore:categoryDairy>)
    .finish();

RegisterFoods(<nuclearcraft:smore>)
    .withHunger(2)  .withWater(0.2) .withSaturation(1.3)    .withDecay(2)
    .withGrain(0.5) .withVegetables(0.1)    .withFruit(0)   .withProtein(0.2)   .withDairy(0.8)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<nuclearcraft:moresmore>)
    .withHunger(4)  .withWater(0.4) .withSaturation(2.3)    .withDecay(2)
    .withGrain(1)   .withVegetables(0.2)    .withFruit(0)   .withProtein(0.4)   .withDairy(1.6)
    .withCategory(<ore:categoryMeal>)
    .finish();


RegisterFoods(<rustic:cloudsbluff>)
    .withHunger(1)  .withWater(0.1) .withSaturation(0.1)    .withDecay(1.3)
    .withGrain(0)   .withVegetables(0.2)    .withFruit(0.1) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<rustic:core_root>)
    .withHunger(1)  .withWater(0.6) .withSaturation(0.2)    .withDecay(0.7)
    .withGrain(0.1) .withVegetables(0.8)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryVegetable>)
    .finish();

RegisterFoods(<rustic:ginseng>)
    .withHunger(1)  .withWater(0.6) .withSaturation(0.2)    .withDecay(0.7)
    .withGrain(0.1) .withVegetables(0.8)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryVegetable>)
    .finish();

RegisterFoods(<rustic:marsh_mallow>)
    .withHunger(1)  .withWater(0.6) .withSaturation(0.2)    .withDecay(0.7)
    .withGrain(0.1) .withVegetables(0.8)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<rustic:ironberries>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.3)    .withDecay(0.7)
    .withGrain(0)   .withVegetables(0.3)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<rustic:chili_pepper>)
    .withHunger(1)  .withWater(3)   .withSaturation(0.4)    .withDecay(2.5)
    .withGrain(0)   .withVegetables(0)  .withFruit(1)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryVegetable>)
    .finish();

RegisterFoods(<rustic:grapes>)
    .withHunger(1)  .withWater(5)   .withSaturation(0.4)    .withDecay(4.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.5) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<rustic:wildberries>)
    .withHunger(1)  .withWater(5)   .withSaturation(0.4)    .withDecay(11)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.5) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<contenttweaker:dried_fruit>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.4)    .withDecay(0.1)
    .withGrain(0.5) .withVegetables(0.5)    .withFruit(0.5) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<contenttweaker:i_vegetable_soup>)
    .withHunger(3)  .withWater(2)   .withSaturation(1.8)    .withDecay(6)
    .withGrain(2)   .withVegetables(0)  .withFruit(1)   .withProtein(1) .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<contenttweaker:smoothie>)
    .withHunger(1)  .withWater(4)   .withSaturation(0.4)    .withDecay(6)
    .withGrain(0)   .withVegetables(0.5)    .withFruit(0.5) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<contenttweaker:pemmican>)
    .withHunger(4)  .withWater(1)   .withSaturation(2.3)    .withDecay(0)
    .withGrain(0.2) .withVegetables(0.5)    .withFruit(0.5) .withProtein(1.5)   .withDairy(1)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<contenttweaker:snow_cream>)
    .withHunger(3)  .withWater(1)   .withSaturation(1.7)    .withDecay(6)
    .withGrain(1)   .withVegetables(0)  .withFruit(0)   .withProtein(0.2)   .withDairy(2.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<contenttweaker:dried_ground_meat>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.6)    .withDecay(0.1)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1) .withDairy(0.3)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<contenttweaker:ground_meat>)
    .withHunger(1)  .withWater(0.2) .withSaturation(0.6)    .withDecay(2)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1) .withDairy(0.3)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<contenttweaker:cookie_dough>)
    .withHunger(1)  .withWater(0.1) .withSaturation(0.1)    .withDecay(9)
    .withGrain(1.5) .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(1)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryGrain>)
    .finish();

RegisterFoods(<contenttweaker:raw_seeds>)
    .withHunger(1)  .withWater(0.2) .withSaturation(0.2)    .withDecay(0.1)
    .withGrain(0.1) .withVegetables(0.1)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryVegetable>)
    .finish();

RegisterFoods(<contenttweaker:water_glass>)
    .withHunger(1)  .withWater(4)   .withSaturation(0)  .withDecay(0)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:category>)
    .finish();


RegisterFoods(<extrabotany:friedchicken>)
    .withHunger(2)  .withWater(1)   .withSaturation(1)  .withDecay(0.1)
    .withGrain(0)   .withVegetables(0.5)    .withFruit(0)   .withProtein(2) .withDairy(1.5)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<extrabotany:gildedmashedpotato>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.6)    .withDecay(0)
    .withGrain(1)   .withVegetables(0)  .withFruit(1)   .withProtein(0.5)   .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<extrabotany:manadrink>)
    .withHunger(1)  .withWater(3)   .withSaturation(0.4)    .withDecay(0)
    .withGrain(0)   .withVegetables(0.6)    .withFruit(0)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<extrabotany:candy>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.3)    .withDecay(0)
    .withGrain(0.2) .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(0.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<extrabotany:candy:1>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.3)    .withDecay(0)
    .withGrain(0.2) .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(0.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<extrabotany:candy:2>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.3)    .withDecay(0)
    .withGrain(0.2) .withVegetables(0)  .withFruit(0)   .withProtein(0) .withDairy(0.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<cfm:item_flesh>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.6)    .withDecay(5.5)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.5)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<cfm:item_flesh_cooked>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.6)    .withDecay(5)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(1.7)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<cfm:item_bread_slice>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.5)    .withDecay(2)
    .withGrain(1.5) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.5)
    .withCategory(<ore:categoryGrain>)
    .finish();

RegisterFoods(<cfm:item_toast>)
    .withHunger(1)  .withWater(0)   .withSaturation(0.5)    .withDecay(2.5)
    .withGrain(1.5) .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.5)
    .withCategory(<ore:categoryGrain>)
    .finish();

RegisterFoods(<cfm:item_sausage>)
    .withHunger(1)  .withWater(0.2) .withSaturation(0.1)    .withDecay(2)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(0.2)   .withDairy(0.1)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<cfm:item_sausage_cooked>)
    .withHunger(1)  .withWater(0.1) .withSaturation(0.2)    .withDecay(1.5)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(0.2)   .withDairy(0.2)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<cfm:item_kebab>)
    .withHunger(1)  .withWater(0.5) .withSaturation(0.1)    .withDecay(3)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(0.1)   .withDairy(0.2)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<cfm:item_kebab_cooked>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.3)    .withDecay(2.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(0.2)   .withDairy(0.2)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();


RegisterFoods(<betternether:black_apple>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.6)    .withDecay(3.25)
    .withGrain(0.5) .withVegetables(0)  .withFruit(1)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<betternether:stalagnate_bowl_wart>)
    .withHunger(3)  .withWater(2)   .withSaturation(1.8)    .withDecay(3.5)
    .withGrain(1)   .withVegetables(0.2)    .withFruit(2)   .withProtein(0) .withDairy(0.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<betternether:stalagnate_bowl_mushroom>)
    .withHunger(2)  .withWater(2)   .withSaturation(1.2)    .withDecay(4)
    .withGrain(1)   .withVegetables(0.2)    .withFruit(0)   .withProtein(1) .withDairy(0.8)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<betternether:stalagnate_bowl_apple>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.8)    .withDecay(2)
    .withGrain(0.5) .withVegetables(0)  .withFruit(1)   .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<netherex:enoki_mushroom>)
    .withHunger(1)  .withWater(0.1) .withSaturation(0.4)    .withDecay(2.3)
    .withGrain(0)   .withVegetables(0.2)    .withFruit(0.1) .withProtein(0.3)   .withDairy(0)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryFruit>)
    .finish();

RegisterFoods(<netherex:congealed_magma_cream>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.2)    .withDecay(0)
    .withGrain(0)   .withVegetables(0)  .withFruit(0)   .withProtein(0.2)   .withDairy(0.3)
    .withCategory(<ore:categoryMeal>)
    .finish();

RegisterFoods(<netherex:ghast_meat_raw>)
    .withHunger(1)  .withWater(1)   .withSaturation(0.2)    .withDecay(-1)
    .withGrain(0)   .withVegetables(0.3)    .withFruit(0.5) .withProtein(2.5)   .withDairy(2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryMeat>)
    .finish();

RegisterFoods(<netherex:ghast_meat_cooked>)
    .withHunger(1)  .withWater(2)   .withSaturation(0.8)    .withDecay(-1)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.5) .withProtein(2.5)   .withDairy(2)
    .withHeatCap(1) .withMaxTemp(480)
    .withCategory(<ore:categoryCookedMeat>)
    .finish();

RegisterFoods(<integrateddynamics:menril_berries>)
    .withHunger(1)  .withWater(5)   .withSaturation(0.4)    .withDecay(4.25)
    .withGrain(0)   .withVegetables(0)  .withFruit(0.5) .withProtein(0) .withDairy(0)
    .withCategory(<ore:categoryFruit>)
    .finish();

