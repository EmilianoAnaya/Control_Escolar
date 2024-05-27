import tkinter as tk
from tkinter import ttk

def imprimir_mensaje(mensaje):
    print(mensaje)

def cambio_color(event):
    event.widget.config(style='Hover.TLabel')

def restaurar_color(event):
    event.widget.config(style='TLabel')

root = tk.Tk()
root.geometry("700x450")

style = ttk.Style()
style.configure('Hover.TLabel', background='light gray')

Cuadros = []
PosY = 30
for i in range(3):
    Fila = []
    PosX = 0
    if i == 0:
        mensaje = f"ID_Horario: 17\nGrupo: A01\nSalon: B1\nMateria: Ingeniería de Software\nMaestro: Gael Emiliano\nHorario: 11:00 - 12:55"
    elif i == 1:
        mensaje = f"ID_Horario: 1\nGrupo: A02\nSalon: C4\nMateria: Fisica 1\nMaestro: Levy Absalon\nHorario: 7:00 - 12:55"
    else:
        mensaje = "...\n...\n...\n...\n...\n..."
    for j in range(6):
        label = ttk.Label(root, text=mensaje, borderwidth=2, relief="solid", padding=(0,20), style='TLabel',width=20)
        label.place(x=PosX, y=PosY)  # Ajustar la posición del texto dentro del Label
        label.bind("<Enter>", cambio_color)  # Evento cuando el mouse entra en el label
        label.bind("<Leave>", restaurar_color)  # Evento cuando el mouse sale del label
        label.bind("<Double-1>", lambda event, msg=mensaje: imprimir_mensaje(msg))
        Fila.append(label)
        PosX = PosX + 120
    Cuadros.append(Fila)
    PosY = PosY + 130

root.mainloop()