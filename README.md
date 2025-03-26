# E-commerce Back End Starter Code

# Project Name
E_commerce

## Description
This project is a functional Express.js API that interacts with a PostgreSQL database using Sequelize. The API allows users to perform CRUD operations on categories, products, and tags.

## Installation
1. Clone the repository:
   ```sh
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```sh
   cd <project-folder>
   ```
3. Install dependencies:
   ```sh
   npm install
   ```
4. Set up environment variables:
   - Create a `.env` file in the root directory.
   - Add the following variables:
     ```env
     DB_NAME=<your_database_name>
     DB_USER=<your_postgresql_username>
     DB_PASSWORD=<your_postgresql_password>
     ```

## Usage

### Database Setup
1. Create the database schema and seed test data:
   ```sh
   npm run schema
   npm run seed
   ```

### Start the Server
Run the following command to start the application:
```sh
npm start
```
The server will be started, and Sequelize models will sync with the PostgreSQL database.

### API Testing

Use [Insomnia Core](https://insomnia.rest/) or a similar tool to test the API endpoints:

#### GET Requests
- Retrieve categories: `GET /api/categories`
- Retrieve products: `GET /api/products`
- Retrieve tags: `GET /api/tags`

#### POST, PUT, DELETE Requests
- Use POST, PUT, and DELETE routes to create, update, and delete data.

## Acceptance Criteria
- GIVEN a functional Express.js API
- WHEN I add my database name, PostgreSQL username, and PostgreSQL password to an environment variable file
  - THEN I am able to connect to a database using Sequelize
- WHEN I enter schema and seed commands
  - THEN a development database is created and is seeded with test data
- WHEN I enter the command to invoke the application
  - THEN my server is started and the Sequelize models are synced to the PostgreSQL database
- WHEN I open API GET routes in Insomnia Core for categories, products, or tags
  - THEN the data for each of these routes is displayed in a formatted JSON
- WHEN I test API POST, PUT, and DELETE routes in Insomnia Core
  - THEN I am able to successfully create, update, and delete data in my database