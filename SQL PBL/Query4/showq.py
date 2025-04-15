import mysql.connector
conn = mysql.connector.connect(host='127.0.0.1',user='21331A0557', password='Sai@1705')
cursor = conn.cursor()
cursor.execute("show databses")
for i in c :
    print(i)

'''cursor = conn.cursor()
cursor.execute("show tables")
for i in c :
    print(i)
'''
