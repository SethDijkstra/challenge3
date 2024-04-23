# Node.js and MariaDB Full-Stack Application

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)
![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)
![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)

This project demonstrates a full-stack application setup using Node.js as the backend, Nginx as a reverse proxy, and MariaDB as the database. It's designed for ease of setup, scaling, and management using Docker and Docker Compose.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Scaling the Application](#scaling-the-application)
- [Troubleshooting Common Issues](#troubleshooting-common-issues)
- [Conclusion](#conclusion)

## Prerequisites

Ensure the following tools are installed on your system before you proceed:
- **Docker**
- **Docker Compose**
- **Git**

## Getting Started

### Clone the Repository

Clone this repository to get started with your local setup:

```bash
git clone https://github.com/seth_dijkstra/challenge3.git
cd challenge3
```

### Build and Run the Docker Containers

Execute the following commands to build and run the Docker containers:

```bash
docker-compose build
docker-compose up -d
```

### Database Initialization

Ensure the `init.sql` file is properly set up to initialize the MariaDB database:

```dockerfile
# Dockerfile for MariaDB
FROM mariadb:latest
COPY init/init.sql /docker-entrypoint-initdb.d/
```

### Verify the Setup

run docker-compose ps


### Verify Application Functionality

Test the application's functionality by navigating to:

```
http://localhost:8080/api/books
```

You should see a JSON output of books, confirming that the setup is correct.

## Scaling the Application

### Scale Up the Service

Scale the `node-service` to 3 instances using:

```bash
docker-compose up -d --scale node-service=3
```

### Verify the Scaling

Check the status of the scaled instances:

```bash
docker-compose ps
```

## Troubleshooting Common Issues

### "Table does not exist" Error

If you encounter a "Table does not exist" error, verify the `init.sql` execution or manually create the table:

```bash
docker exec -it challenge3-db-1 bash
mysql -u root -p
# Run the SQL commands to create the table and insert data.
```

### Port Allocation Error

If a port conflict occurs, make sure that the port bindings are correctly configured in your `docker-compose.yml`.

## Conclusion

This README provides a detailed guide for setting up, scaling, and troubleshooting a full-stack Node.js application using Docker. This environment supports development and testing with robust scalability options.


