import tkinter as tk
from ttkwidgets import CheckboxTreeview
from tkinter import END,messagebox,ttk
from frontend.ConfigVentanas import GUI_Herramientas as Tools
from database import DB_Prerregistro as sql
from json import dumps

class GUI_Prerregistro(tk.Toplevel):
    def __init__(self,parent,alumno):
        super().__init__(parent)

        self.title("Asignación de Carreras")
        self.geometry("600x400")
        self.resizable(False,False)

        self.protocol("WM_DELETE_WINDOW",lambda: Tools.CerrarVentana(self,parent.btnPrerregistro))

        self.etiMateria = ttk.Label(self,text=f"Alumno: {alumno.get_Username()}")
        self.etiMensaje = ttk.Label(self,text="Seleccione las materias a Prerregistrar:")

        self.etiMateria.place(x=80,y=10)
        self.etiMensaje.place(x=60,y=30)
        
        self.TablaMaterias = CheckboxTreeview(self, columns=("Materia","Creditos"))
        self.TablaMaterias.heading("Materia",text="Materia")
        self.TablaMaterias.heading("Creditos",text="Creditos")
        self.TablaMaterias.heading("#0",text="Check")
        self.TablaMaterias.column("#0",width=50)
        self.TablaMaterias.column("Materia",width=360)
        self.TablaMaterias.column("Creditos",width=70)
        self.TablaMaterias.place(x=53,y=60,height=250)

        self.BotonesSEMICRUD = Tools.BotonesSemiCRUD(self,180,325)
        self.btnEditar, self.btnGuardar, self.btnBaja = self.BotonesSEMICRUD.get_Botones()

        self.btnGuardar["command"]=lambda: self.GuardarPrerregistro(alumno.get_IDAlumno())
        self.btnEditar["command"]=self.EditarMaterias
        self.btnBaja["command"]=lambda: self.BajaPrerregistro(alumno.get_IDAlumno())
# 
        for materia in sql.get_Materias(alumno.get_IDCarrera()):
            self.TablaMaterias.insert("",END,iid=materia.get_IDMateria(),values=(materia.get_Asignatura(),materia.get_Creditos()))
        self.ActualizarListaMaterias(alumno.get_IDAlumno())
        self.TablaMaterias.state(["disabled"])

    def CancelarCampos(self):
        self.btnEditar["state"]="normal"
        self.btnGuardar["state"]="disabled"
        self.btnBaja["state"]="disabled"
        self.TablaMaterias.state(["disabled"])

    def EditarMaterias(self):
        self.btnEditar["state"]="disabled"
        self.btnGuardar["state"]="normal"
        self.btnBaja["state"]="normal"
        self.TablaMaterias.state(["!disabled"])

    def BajaPrerregistro(self,id_alumno):
        if messagebox.askyesno("Baja Prerregistro","Estas seguro de que quieres dar de baja tu Prerregistro?"):
            if self.MateriasActuales != None:
                sql.BajaMateriasSeleccionadas(id_alumno)
                messagebox.showinfo("Baja de Prerregistro","El Prerregistro ha sido eliminado, Por favor vuelva a realizarlo para asi poder ser asignado a un Grupo.")
                self.TablaMaterias.uncheck_all()
                self.ActualizarListaMaterias(id_alumno)
                self.CancelarCampos()
            else:
                messagebox.showerror("Error al Baja","La baja no pudo ser realizada debido que no se cuenta con un Prerregistro.")
    
    def GuardarPrerregistro(self,id_alumno):
        MateriasSeleccionadas = list(map(int, self.TablaMaterias.get_checked()))
        if len(MateriasSeleccionadas) >= 3 and len(MateriasSeleccionadas) < 7:
            MateriasSeleccionadas = dumps(MateriasSeleccionadas)
            sql.AltaMateriasSeleccionadas(MateriasSeleccionadas,id_alumno)
            messagebox.showinfo("Exito al Guardar","Las Materias seleccionadas han sido guardadas como el Prerregistro del Alumno.")
        else:
            messagebox.showerror("Error al Guardar","Seleccione al menos 3 materias a Prerregistrar o un máximo de 6 materias.")
        self.ActualizarListaMaterias(id_alumno)
        self.CancelarCampos()

    def ActualizarListaMaterias(self,id_alumno):
        self.MateriasActuales = sql.get_Prerregistro(id_alumno)
        if self.MateriasActuales != None:
            for MateriaCarrera in self.MateriasActuales:
                self.TablaMaterias.change_state(MateriaCarrera,"checked")