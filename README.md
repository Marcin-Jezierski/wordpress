# Dockerized WordPress Infrastructure

This repository contains Docker configurations to set up a WordPress application with Apache web server and MySQL database. The infrastructure is defined using Docker Compose and includes separate containers for Apache, MySQL, and WordPress.

## Prerequisites

- Docker installed on your system. [Get Docker](https://docs.docker.com/get-docker/)
- Docker Compose installed on your system. [Get Docker Compose](https://docs.docker.com/compose/install/)

## Usage

1. Clone this repository:

    ```bash
    git clone git@github.com:Marcin-Jezierski/wordpress.git
    cd wordpress-docker
    ```

2. Set the following environment variables in a `.env` file in the root directory:

    ```dotenv
    MYSQL_ROOT_PASSWORD=<your-mysql-root-password>
    MYSQL_DATABASE=<your-mysql-database>
    MYSQL_USER=<your-mysql-user>
    MYSQL_PASSWORD=<your-mysql-password>
    ```

    Make sure to replace the placeholders with your desired values.

3. Build and run the Docker containers:

    ```bash
    docker-compose up -d
    ```

4. Access your WordPress site at [https://localhost](https://localhost).# wordpress
