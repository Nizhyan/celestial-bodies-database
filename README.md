# Celestial Bodies Database

A PostgreSQL relational database project modeling galaxies, stars, planets, moons, and suns and their relationships.

# Structure
- **galaxy** — contains stars
- **star** — references a galaxy, contains planets
- **planet** — references a star, contains moons
- **moon** — references a planet
- **sun** — standalone table of sun-like stars

# File
`universe.sql` — full database dump (schema + data), generated with `pg_dump`.

Built as part of [freeCodeCamp's Relational Database course](https://www.freecodecamp.org/).
