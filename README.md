# Beginner's Database Concepts with PostgreSQL

This project is designed to help beginners understand fundamental database concepts using PostgreSQL. It includes a Docker Compose environment that sets up a PostgreSQL server with tables and sample data to practice concepts like foreign keys, relationships, joins, and aggregations.

## How to Use

### Prerequisites

Before you get started, make sure you have Docker and Docker Compose installed on your system.

### Cloning the Repository

Clone this repository to your local machine:

git clone https://github.com/kleber-yokota/sql-beginner.git
cd sql-beginner


### Running Docker Compose

To start the PostgreSQL server and load tables and example data, run the following command:

docker-compose up -d


This will create a Docker container with PostgreSQL and execute SQL commands from the `init.sql` file to create tables and insert fictitious data.

### Accessing PostgreSQL

You can access PostgreSQL from any SQL client, such as `psql` or a graphical interface. Use the following connection details:

- **Host:** localhost
- **Port:** 5432
- **Database:** Your database (defined in `docker-compose.yml`)
- **User:** Your user (defined in `docker-compose.yml`)
- **Password:** Your password (defined in `docker-compose.yml`)

### Practicing Concepts

Now you can practice concepts like foreign keys, relationships, joins, and aggregations using the provided tables and sample data.

## Files

- `docker-compose.yml`: Defines the Docker container configuration for PostgreSQL.
- `init.sql`: Contains SQL commands to create schemas, tables, and insert sample data.

## Contributions

Feel free to contribute improvements, fixes, or additional features to this project. If you're a beginner, this is a great project to practice your SQL skills.

## License

This project is distributed under the [MIT License](LICENSE).



