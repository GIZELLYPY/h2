
### This project provides a comprehensive approach to data extraction, transformation, and analysis using PySpark and PostgreSQL.

## Set-up
1. Clone this project https://github.com/GIZELLYPY/h2.git
2. Create `$HOME/data/postgres` directory for PostgreSQL files: `mkdir -p ~/data/postgres`
3. Deploy Docker: `docker-compose up -d`
4. On terminal, search for jupyter container id by `docker container ls`
5. Retrieve the token to log into Jupyter: `docker logs {jupyter_containter_id_here}` 

## Project Overview
This project focuses on extracting data from a local PostgreSQL database using PySpark and SQL, and generating insights from the data. The main objective is to analyze client data and their corresponding results in a gaming context, specifically focusing on rake generation and player demographics.

## Technologies Used
- **Python**: Programming language used for data processing.
- **PySpark**: Framework for big data processing.
- **PostgreSQL**: Database management system for storing and retrieving data.
- **Pandas**: Library for data manipulation and analysis.
- **Requests**: Library for making HTTP requests to APIs.

## Project Structure
- **Modules**:
  - `import_conn_properties`: Handles the import of database connection properties.
  - `write_on_db`: Writes data to the database.
  - `get_from_db`: Retrieves data from the database.
  
- **SQL Scripts**:
  - `create_table_clientes.py`: Script to create the clients table in PostgreSQL.
  - `create_table_results.py`: Script to create the results table in PostgreSQL.
  - `create_table_raw_data.py`: Script to create the raw data table in PostgreSQL.
  - `create_table_partidas_brasileirao_serie_a_2023.py`: Script to create the Brazilian Serie A matches table.

## Data Processing Steps
1. **Data Extraction**:
   - Read client data from a CSV file and load it into a Spark DataFrame.
   - Read results data from another CSV file and load it into a Spark DataFrame.

2. **Data Transformation**:
   - Define schemas for the DataFrames to ensure data types are correctly interpreted.
   - Perform data cleaning and transformation as necessary.

3. **Database Operations**:
   - Create tables in PostgreSQL for clients and results.
   - Write the DataFrames to the respective tables in the database.

4. **Data Analysis**:
   - Analyze rake generation by player demographics (e.g., by generation).
   - Calculate total rake generated per month.
   - Determine the proportion of winnings by gender.

5. **API Integration**:
   - Fetch match data from an external API for the Brazilian Serie A and store it in a PostgreSQL table.

## Usage Instructions
1. Ensure that you have the required libraries installed:
   ```bash
   pip install pyspark psycopg2-binary mysql-connector-python-rf requests pandas
   ```

2. Set up your PostgreSQL database and update the connection properties in the `conn_properties` files.

3. Run the SQL scripts to create the necessary tables in your PostgreSQL database.

4. Execute the main Python script to perform data extraction, transformation, and analysis.

5. Review the results in the PostgreSQL database or through the console output.

## Conclusion
This project provides a comprehensive approach to data extraction, transformation, and analysis using PySpark and PostgreSQL. It serves as a foundation for further exploration and insights into gaming data and player behavior.

