--Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.
--I decided to sort by the Pokemon Trainer attack strongest to weakest. Trainer Name "Cooltrainer Forgon" has the highest attack number = 341.




SELECT p.name AS PokemonName, t.trainername AS TrainName, pt.pokelevel AS Level,
       type1.name AS typeOne,
       type2.name AS typeTwo,
       pt.attack AS Attack
FROM pokemons AS p
    JOIN pokemon_trainer AS pt ON p.id = pt.pokemon_id
    JOIN trainers AS t ON t.trainerID = pt.trainerID
    JOIN types AS type1 ON p.primary_type = type1.id
    JOIN types AS type2 ON p.secondary_type = type2.id
order by pt.attack desc;
