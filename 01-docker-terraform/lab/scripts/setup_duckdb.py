from pathlib import Path

import duckdb

db_path = Path("data/data.duckdb")
views_dir = Path("views")

conn = duckdb.connect(str(db_path))

try:
    for sql_path in sorted(views_dir.glob("*.sql")):
        sql = sql_path.read_text()
        conn.execute(sql)
finally:
    conn.close()