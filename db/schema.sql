DROP TABLE IF EXISTS pokemons           CASCADE;

create table pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  poke_type VARCHAR(255),
  cp INTEGER,
  img_url VARCHAR(512)
);
