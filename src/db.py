from sqlalchemy import *
import psycopg2


class dbcon:
    def __init__(self):
        # fmt: off
        self.engine = create_engine("postgresql+psycopg2://uclsfqrd:jnhoZPIe7ub84OX9DVfdhvcqoX7_h4ST@babar.db.elephantsql.com/uclsfqrd")
        self.conn = self.engine.connect()

    def conexao(self, comandos):
        responsedp = self.conn.execute(text(comandos))
        return responsedp


# fmt: on
