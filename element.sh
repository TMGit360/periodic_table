# script for periodic table

#!/bin/bash

#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z "$1" ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi

if [[ "$1" =~ ^[0-9]+$ ]]
then
  CONDITION="e.atomic_number = $1"
else
  CONDITION="LOWER(e.symbol) = LOWER('$1') OR LOWER(e.name) = LOWER('$1')"
fi

RESULT=$($PSQL "
  SELECT e.atomic_number, e.name, e.symbol, t.type, p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius
  FROM elements e
  JOIN properties p ON e.atomic_number = p.atomic_number
  JOIN types t ON p.type_id = t.type_id
  WHERE $CONDITION;
")

if [[ -z "$RESULT" ]]
then
  echo "I could not find that element in the database."
  exit 0
fi

IFS="|" read -r ATOMIC_NUMBER NAME SYMBOL TYPE MASS MP BP <<< "$RESULT"

echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MP celsius and a boiling point of $BP celsius."




