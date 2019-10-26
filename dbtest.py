import cx_Oracle

DB = "xxx_high"
DB_USER = "admin"
DB_PASSWORD = "password"

connection = cx_Oracle.connect(DB_USER, DB_PASSWORD, DB)

print ("Connected")


