#!/bin/bash

# Mensaje de bienvenida
echo "Iniciando proyecto OrientaTrain_Proyect..."

# Abrir una nueva terminal para iniciar el servidor backend
gnome-terminal -- bash -c "echo 'Iniciando el servidor backend...'; cd OrientaTrain_Proyect/backend; python app.py; exec bash"

# Abrir una nueva terminal para iniciar la base de datos
gnome-terminal -- bash -c "echo 'Iniciando la base de datos...'; cd OrientaTrain_Proyect/database; sudo service mysql start; exec bash"

# Abrir una nueva terminal para iniciar la página web (frontend)
gnome-terminal -- bash -c "echo 'Iniciando la página web (frontend)...'; cd OrientaTrain_Proyect/web-app; npm install; npm start; exec bash"

# Abrir una nueva terminal para iniciar la aplicación móvil (si se usa Flutter, por ejemplo)
gnome-terminal -- bash -c "echo 'Iniciando la aplicación móvil...'; cd OrientaTrain_Proyect/mobile-app; flutter run; exec bash"

# Mensaje de confirmación
echo "¡Proyecto iniciado con éxito! Las terminales están abiertas y los procesos están en ejecución."
