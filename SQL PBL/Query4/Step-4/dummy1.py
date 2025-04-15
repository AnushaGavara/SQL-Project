import mysql.connector
conn = mysql.connector.connect(user='21331A0557', password='Sai@1705', host='127.0.0.1', database='21331A0557')
cursor = conn.cursor()
insert_stmt = ("INSERT INTO dummy(ID, Age)" "VALUES (%d, %d)")
data = (3, 30)

try:
   cursor.execute(insert_stmt, data)
   conn.commit()

except:
   conn.rollback()

print("Data inserted")

conn.close()