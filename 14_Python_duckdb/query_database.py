from database import DatabaseDataFram
from constants import DATABASE_PATH

class QueryDatabase:
    def __init__(self, sql_query):
        with DatabaseDataFram(DATABASE_PATH) as db:
            self.df = db.query(sql_query)