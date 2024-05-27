import mysql.connector

def abrir_bd():
    host="localhost"
    user="root"
    password="123456"
    database="control_escolar"
    port="3307"
    conn = mysql.connector.connect(host=host,
                                        user=user,
                                        password=password,
                                        database=database,
                                        port=port)
    cursor = conn.cursor()
    return conn, cursor

def cerrar_bd(conn):
    conn.close()