import mysql.connector
conn = mysql.connector.connect(user='21331A0557', password='Sai@1705', host='127.0.0.1', database='21331A0557')
cursor = conn.cursor()
sql1 = 'SELECT * from DUMMY'
cursor.execute(sql1)
result = cursor.fetchall();
print("Query :",sql1)
print("Output :",result)

sql2 = 'SELECT COUNT(*) from DUMMY'
cursor.execute(sql2)
result = cursor.fetchall();
print("\nQuery :",sql2)
print("Output :",result)

sql3 = 'SELECT MAX(Age) from DUMMY'
cursor.execute(sql3)
result = cursor.fetchall();
print("\nQuery :",sql3)
print("Output :",result)
conn.close()
