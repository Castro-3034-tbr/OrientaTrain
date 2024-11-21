#!/bin/bash

# Crear las carpetas principales
mkdir -p OrientaTrain_Proyect/{backend/api,backend/config,backend/migrations,backend/tests,backend,web-app/src,web-app/public,web-app/tests,mobile-app/android,mobile-app/ios,mobile-app/shared,mobile-app/builds,database/schemas,database/migrations,database,config,logs,scripts}

# Crear los archivos principales
touch OrientaTrain_Proyect/backend/app.py
touch OrientaTrain_Proyect/backend/config/config.json
touch OrientaTrain_Proyect/backend/config/.env
touch OrientaTrain_Proyect/backend/tests/test_api.py
touch OrientaTrain_Proyect/web-app/src/index.html
touch OrientaTrain_Proyect/web-app/src/app.js
touch OrientaTrain_Proyect/web-app/tests/test_web.js
touch OrientaTrain_Proyect/mobile-app/android/MainActivity.java
touch OrientaTrain_Proyect/mobile-app/ios/MainViewController.m
touch OrientaTrain_Proyect/mobile-app/shared/GeoTrainApp.dart
touch OrientaTrain_Proyect/database/schemas/init.sql
touch OrientaTrain_Proyect/database/migrations/create_tables.sql
touch OrientaTrain_Proyect/config/config.json
touch OrientaTrain_Proyect/scripts/deploy.sh
touch OrientaTrain_Proyect/scripts/backup_db.sh
touch OrientaTrain_Proyect/scripts/migrate_db.sh
touch OrientaTrain_Proyect/logs/app.log

# Mensaje de confirmación
echo "Estructura de carpetas y archivos creada exitosamente."
