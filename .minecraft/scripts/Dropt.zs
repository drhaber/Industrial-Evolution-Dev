import mods.dropt.Dropt;

Dropt.list("wildberry_bush")
    
    .add(Dropt.rule()
        .matchDrops([<rustic:wildberry_bush>])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<rustic:wildberry_bush>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(95))
        )
    );

Dropt.list("minecraft:clay")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:clay"])
      .addDrop(Dropt.drop()
          .items([<minecraft:clay_ball>],
          Dropt.range(9))
      )
  );    