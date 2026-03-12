# GEMINI.md

## Project Overview
This repository contains the materials for **Week 02** of the JSD12 course. It focuses on the end-to-end design of an e-commerce platform and practical SQL exercises using PostgreSQL.

The workspace is divided into two main tracks:
1.  **Bookstore E-commerce Design:** Planning, user stories, architectural diagrams, and a JavaScript-based OOP prototype.
2.  **PostgreSQL Practice:** A database schema and exercise set for a restaurant/supplier management system.

## Directory Structure & Key Files

### E-commerce Project (Bookstore)
*   `01_my-ecommerce.md`: Project vision, problem statement, and proposed solutions for an online bookstore.
*   `02_business-model-canvas.excalidraw`: High-level business strategy visualization.
*   `03_use-case-diagram.excalidraw`: System behavior and actor interactions.
*   `04_er-diagram.excalidraw`: Logical data model for the bookstore.
*   `05_product-backlog.md`: User stories for customers, admins, inventory staff, and logistics/payment partners.
*   `06_bring-it-to-javascript.js`: A JavaScript prototype implementing the bookstore's domain model using ES6 classes (Customers, Authors, Products, Orders, etc.).

### PostgreSQL Exercises (Restaurant/Supplier)
*   `postgresql/create-tables.sql`: DDL script to initialize the restaurant management schema (`Suppliers`, `Staff`, `Ingredients`, `MenuItems`, `Orders`, etc.).
*   `postgresql/01_suppliers.sql` to `07_orders_items.sql`: Mock data insertion scripts for testing.
*   `postgresql/query.sql`: Basic query practice.
*   `postgresql/exercise/`: A collection of specific SQL exercises (e.g., `exercise_01.sql` to `exercise_10.sql`).

## Building and Running

### JavaScript
The JavaScript file is a standalone script for testing the data model.
*   **Run with Node.js:**
    ```bash
    node 06_bring-it-to-javascript.js
    ```

### PostgreSQL
The SQL scripts are designed to be run in sequence to set up the environment.
1.  **Initialize Tables:** Run `postgresql/create-tables.sql`.
2.  **Seed Data:** Run files `01_suppliers.sql` through `07_orders_items.sql` in order.
3.  **Run Exercises:** Execute files in the `postgresql/exercise/` directory.

## Development Conventions
*   **OOP Design:** Entities in `06_bring-it-to-javascript.js` use constructors to handle associations (e.g., `Orders` takes `Customer`, `Payment`, and `Shipping` objects).
*   **Database Schema:** Uses `SERIAL PRIMARY KEY` for IDs and `REFERENCES` for foreign key constraints. Data is cleared using `TRUNCATE ... CASCADE` before seeding.
*   **Naming Convention:** SQL tables and columns generally use snake_case or specific camelCase (e.g., `MenuItems`, `order_id`). JavaScript classes use PascalCase (e.g., `Products`, `Logistics_Company`).

## Usage
This directory serves as a learning sandbox. You can:
*   Reference the `.excalidraw` files for system design patterns.
*   Use `05_product-backlog.md` as a checklist for feature implementation.
*   Extend the JavaScript classes in `06_bring-it-to-javascript.js` to add business logic.
*   Solve the SQL challenges in `postgresql/exercise/` using the provided schema.
