from database.connection.Connection import abrir_bd,cerrar_bd
from classes.Materia import Materia
from json import loads

def get_Materias(IDCarrera):
    conn, cursor = abrir_bd()
    cursor.execute(f''' SELECT materias.* FROM materias_carreras 
                        JOIN materias ON materias.id_materia = materias_carreras.id_materia 
                        WHERE materias_carreras.id_carrera = '{IDCarrera}' ''')
    res = cursor.fetchall()
    cerrar_bd(conn)
    if res == []:
        return []
    else:
        MateriasCarrera = []
        for fila in res:
            MateriaTMP = Materia()
            MateriaTMP.set_IDMateria(fila[0])
            MateriaTMP.set_Asignatura(fila[1])
            MateriaTMP.set_Creditos(fila[2])
            MateriasCarrera.append(MateriaTMP)
        return MateriasCarrera
    
def get_Prerregistro(id_alumno):
    conn, cursor = abrir_bd()
    cursor.execute(f"SELECT materias FROM prerregistro WHERE id_alumno = '{id_alumno}' ")
    res = cursor.fetchall()
    cerrar_bd(conn)
    if res == []:
        return None
    else:
        for fila in res:
            ListaMaterias = fila[0]
            break
        return loads(ListaMaterias)
    
def CheckPrerregistro(id_alumno):
    conn, cursor = abrir_bd()
    cursor.execute(f"SELECT * FROM prerregistro WHERE id_alumno = '{id_alumno}'")
    res = cursor.fetchone()
    cerrar_bd(conn)
    if res == None:
        return False
    else:
        return True

def BajaMateriasSeleccionadas(id_alumno):
    conn, cursor = abrir_bd()
    cursor.execute(f"DELETE FROM prerregistro WHERE id_alumno = '{id_alumno}' ")
    cursor.execute(f"UPDATE alumnos SET prerregistro = 0 WHERE id_alumno = '{id_alumno}' ")
    conn.commit()
    cerrar_bd(conn)

def AltaMateriasSeleccionadas(Materias,id_alumno):
    conn, cursor = abrir_bd()
    if not CheckPrerregistro(id_alumno):
        cursor.execute(f"INSERT INTO prerregistro (id_alumno,materias) VALUES ('{id_alumno}','{Materias}')")
    else:
        cursor.execute(f"UPDATE prerregistro SET materias = '{Materias}' WHERE id_alumno = '{id_alumno}' ")
    cursor.execute(f"UPDATE alumnos SET prerregistro = 1 WHERE id_alumno = '{id_alumno}' ")
    conn.commit()
    cerrar_bd(conn)
    