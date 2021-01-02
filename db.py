from typing import Dict, List, Tuple
import pymysql.cursors
import pymysql
import config

conn =  pymysql.connect(
      host=config.HOST,
      port=int(config.PORT),
      user=config.USER,
      password=config.PASSWORD,
      db="adminChat",
      charset='utf8mb4'
)
cursor = conn.cursor()

def insert(table: str, column_values: Dict):
    columns = ', '.join( column_values.keys() )
    values = [tuple(column_values.values())]
    placeholders = ", ".join(("%s " * len(column_values.keys())).split())
    cursor.executemany(
        f"INSERT INTO {table} "
        f"({columns}) "
        f"VALUES ({placeholders})",
        values)
    conn.commit()

def row(table: str, where: Dict) -> List[Tuple]:
    key = tuple(where.keys())[0]
    value = where[key]
    if value == "":
        print("Пустое значение.")
    else:
        cursor.execute(f"SELECT * FROM {table} WHERE {key} {value}")
        row = cursor.fetchall()
        if len(row) == 0:
            return None
        return row
        