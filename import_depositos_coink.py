import sqlite3
import pandas as pd

vConnection = sqlite3.connect('resources/coink.db')

vData = pd.read_csv("resources/depositos_oinks.csv")

vData["operation_date"] = pd.to_datetime(vData["operation_date"])
vData["user_createddate"] = pd.to_datetime(vData["user_createddate"])

vData.to_sql("TB_DEPOSITO_OINK", vConnection, if_exists= 'replace', index = False)

vConnection.close()
print("Data imported.")