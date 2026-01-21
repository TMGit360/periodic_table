# Periodic Table Database

PostgreSQL database project with a Bash script that retrieves information about chemical elements based on user input.

Completed as part of the FreeCodeCamp Relational Database certification.

## Competencies

- Relational database design with normalized tables
- SQL queries with joins across multiple tables
- Bash scripting for argument handling 
- Querying PostgreSQL databases using `psql`

## Files

- `periodic_table.sql` – database schema and seed data
- `element.sh` – Bash script for querying element information

## Database Tables

- `elements`
- `properties`
- `types`

## Run

```bash
psql -U postgres -f periodic_table.sql
bash element.sh # Periodic Table Database

PostgreSQL database project with a Bash script that retrieves information about chemical elements based on user input.

Completed as part of the FreeCodeCamp Relational Database certification.

## Competencies

- Relational database design with normalized tables
- SQL queries with joins across multiple tables
- Bash scripting for argument handling and control flow
- Querying PostgreSQL databases using `psql`

## Files

- `periodic_table.sql` – database schema and seed data
- `element.sh` – Bash script for querying element information

## Database Tables

- `elements`
- `properties`
- `types`

## Run

```bash
psql -U postgres -f periodic_table.sql
bash element.sh <element>
