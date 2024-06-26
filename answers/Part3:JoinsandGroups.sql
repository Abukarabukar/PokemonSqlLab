--1. What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM pokemons, types WHERE pokemons.primary_type = types.id;
OR
SELECT pokemons.name, types.name FROM pokemons  JOIN types  ON pokemons.primary_type = types.id;





--2. What is Rufflet's secondary type?

SELECT pokemons.name, types.name
FROM pokemons JOIN types
ON pokemons.secondary_type = types.id
WHERE pokemons.name = 'Rufflet';





--3. What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT  trainers.trainername AS Trainers_Name, pokemons.name AS Pokemon_Name FROM  trainers JOIN pokemons
ON pokemons.id = trainers.trainerID
WHERE pokemons.id = 303;

--4. How many pokemon have a secondary type Poison
select count(*) from pokemons join types on pokemons.secondary_type = types.id where types.name = 'Poison';

--5. What are all the primary types and how many pokemon have that type?
Select types.name, count(pokemons.id) from pokemons join types on pokemons.primary_type = types.id group by types.name;

--6. How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT trainerID, count(*) from pokemon_trainer where pokelevel = 100 group by trainerID;


--7. How many pokemon only belong to one trainer and no other?
SELECT COUNT(pokemon_id)
FROM pokemon_trainer
WHERE pokemon_id IN (
    SELECT pokemon_id
    FROM pokemon_trainer
    GROUP BY pokemon_id
    HAVING COUNT(DISTINCT trainerID) = 1
);
