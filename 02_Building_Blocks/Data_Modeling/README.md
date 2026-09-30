# Module 02: Data Modeling & Data Warehousing

This folder contains my practical work on Data Modeling and Data Warehousing concepts. I implemented these concepts using Databricks notebooks to understand how data is structured and processed in a modern data platform.

## What's Inside This Module:

### 1. Data Warehousing Architecture (`01_data_warehousing_architecture`)
In this notebook, I built a multi-layer data architecture:
*   **Staging Layer:** Raw data ingestion.
*   **Transformation:** Cleaning and preparing the data.
*   **Core Layer:** The final, reliable data ready for analysis.
*   **Incremental Data Loading:** Implemented logic to load only new or updated data instead of processing everything from scratch.

### 2. Star Schema Implementation (`02_star_schema_modeling`)
I took a large, denormalized dataset and structured it into a Star Schema.
*   Separated the data into **Dimension Tables** (descriptive attributes) and a **Fact Table** (measurable metrics).
*   Used SQL Views and Databricks functions to efficiently build these tables.

### 3. Slowly Changing Dimensions (`03_slowly_changing_dimensions`)
I implemented SCD (Slowly Changing Dimensions) logic to handle how data changes over time. This is a crucial concept for keeping historical records accurate in a Data Warehouse (e.g., tracking when a customer changes their address).