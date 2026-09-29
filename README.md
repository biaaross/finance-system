# Finance System

A SQL Server-based financial account and investment management system developed as a portfolio project.

The project focuses on database design, financial data analysis, query optimization, and advanced SQL concepts. The long-term goal is to integrate the database with a C#/.NET application.

## Project Purpose

The system simulates a basic financial platform where users can:

* Have financial accounts
* Deposit and withdraw money
* Hold stocks
* Track stock prices
* Create buy/sell orders
* Track portfolio positions
* Analyze financial data

The project uses fictional/test data for development and learning purposes.

## Technologies

* SQL Server
* T-SQL
* Git
* GitHub
* C# / .NET — planned for the next stage

## Database Structure

Main tables:

* `Customer`
* `Account`
* `CashTransaction`
* `Stock`
* `StockPrice`
* `Order`
* `PortfolioPosition`

### Main Relationships

```text
Customer
   │
   └── Account
          │
          ├── CashTransaction
          │
          ├── Order ─── Stock
          │
          └── PortfolioPosition ─── Stock
                                      │
                                      └── StockPrice
```

## Project Structure

```text
finance-system/
│
├── README.md
├── .gitignore
│
├── docs/
│   ├── database-design.md
│   └── er-diagram.png
│
└── sql/
    │
    ├── 01-database/
    │   └── create-database.sql
    │
    ├── 02-schema/
    │   ├── 01-customer.sql
    │   ├── 02-account.sql
    │   ├── 03-cash-transaction.sql
    │   ├── 04-stock.sql
    │   ├── 05-stock-price.sql
    │   ├── 06-order.sql
    │   └── 07-portfolio-position.sql
    │
    ├── 03-seed/
    │   └── sample-data.sql
    │
    ├── 04-queries/
    │   └── 01-basic-queries.sql
    │
    ├── 05-analysis/
    │   ├── 01-account-analysis.sql
    │   ├── 02-transaction-analysis.sql
    │   ├── 03-portfolio-analysis.sql
    │   └── 04-stock-analysis.sql
    │
    ├── 06-performance/
    │   ├── 01-index-analysis.sql
    │   ├── 02-execution-plan.sql
    │   ├── 03-query-performance.sql
    │   ├── 04-covering-index.sql
    │   └── 05-composite-index.sql
    │
    └── 07-advanced/
        ├── 01-cte.sql
        ├── 02-window-functions.sql
        ├── 03-stored-procedures.sql
        ├── 04-functions.sql
        ├── 05-views.sql
        └── 06-triggers.sql
```

## SQL Topics Covered

### Database Design

* Relational database design
* Primary keys
* Foreign keys
* Constraints
* One-to-many relationships
* Composite primary keys

### Querying

* `SELECT`
* `WHERE`
* `JOIN`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `CASE`
* Aggregate functions

### Financial Analysis

* Customer balance analysis
* Cash flow analysis
* Portfolio valuation
* Unrealized profit/loss
* Stock price analysis
* Trading volume analysis

### Performance

* Indexes
* Composite indexes
* Covering indexes
* Execution plans
* Query performance
* `STATISTICS IO`

### Advanced SQL

* CTE
* Window functions
* Stored procedures
* User-defined functions
* Views
* Triggers

## Current Status

The SQL database development stage is complete.

The project currently includes:

* Database design
* Database schema
* Sample data
* Basic queries
* Financial analysis queries
* Performance studies
* Advanced SQL implementations

## Next Stage

The next development stage is planned as a C#/.NET application.

Planned architecture:

```text
C# / .NET
     │
     ▼
Database Access
     │
     ▼
SQL Server
     │
     ▼
Business Logic
     │
     ▼
ASP.NET Core Web API
```

Future development will include:

* SQL Server connection from C#
* Data access layer
* CRUD operations
* Repository/Service architecture
* ASP.NET Core Web API
* DTOs and validation
* Error handling
* Testing
* Authentication and authorization

## Disclaimer

This project is an educational and portfolio project.

All financial and stock market data used in the project is fictional/test data and does not represent real market data or investment advice.
