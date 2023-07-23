#!/usr/bin/python3

import psycopg2

# connect to database
connect_str = 'host=postgres port=5432 dbname=bakery user=postgres password=postgres1234'
conn = psycopg2.connect(connect_str)
conn.autocommit = True
cursor = conn.cursor()

# execute sql script
sql_file = open('./sql/create_table_clients.sql', 'r')
sqlFile = sql_file.read()
sql_file.close()
sqlCommands = sqlFile.split(';')
for command in sqlCommands:
    if command.strip() != '':
        cursor.execute(command)
print("Tabela clients criada com sucesso.")