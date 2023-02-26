import sqlite3
import pandas as pd

vConnection = sqlite3.connect('resources/coink.db')

vData = pd.read_csv("resources/info_satisfaccion_trabajo.csv", delimiter=";")

vData.to_sql("TB_JOB_SATISFACTION", vConnection, if_exists= 'replace', index = False)

vConnection.close()
print("Data imported.")