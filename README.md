# **E-commerce Operational Database System**
## 📌 Overview

This project involves the design and implementation of an OLTP (Online Transaction Processing) database for a multi-department retail company. The system manages complex retail operations, including inventory tracking, customer relations, sales processing, and human resources.
## 🏢 Business Context

The database was built to support a large-scale retailer selling across multiple categories (Clothing, Electronics, Groceries, etc.). A key focus was placed on Role-Based Access Control, ensuring that departments like HR and Finance have secure, restricted access to sensitive data.

## 🛠️ Technical Features

  - **Relational Data Modeling:** A fully normalized schema to handle Customers, Products, Sales, and Employees.
  - **Many-to-Many Relationships:** Implemented a junction table (Products_has_Sales) to accurately track which products belong to which transactions.
  - **Operational Efficiency:** Designed to allow shopkeepers to track inventory levels in real-time and manage manufacturing orders based on demand.

## 🗂️ Database Architecture

- **Customers & Sales:** Tracks customer feedback and purchase history to support marketing initiatives.
- **Product Management:** Manages brands, quantities, and departmental categorization.
- **Human Resources:** Tracks employee designations and department affiliations.

## 🚀 Getting Started

- Clone the repository.
- Import the /sql-scripts/ecommerce.sql file into MySQL Workbench.
- The script will automatically create the Ecommerce schema and all necessary tables.
- Import the /ecommerce.sql file into MySQL Workbench.

    The script will automatically create the Ecommerce schema and all necessary tables.
