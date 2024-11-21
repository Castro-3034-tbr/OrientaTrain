#!/bin/bash

# Crear las carpetas principales
mkdir -p {backend/api,backend/config,backend/migrations,backend/tests,backend,web-app/src,web-app/public,web-app/tests,mobile-app/android,mobile-app/ios,mobile-app/shared,mobile-app/builds,database/schemas,database/migrations,database,config,logs,scripts}

# Crear los archivos principales
touch backend/app.py
touch backend/config/config.json
touch backend/config/.env
touch backend/tests/test_api.py
touch web-app/src/index.html
touch web-app/src/app.js
touch web-app/tests/test_web.js
touch mobile-app/android/MainActivity.java
touch mobile-app/ios/MainViewController.m
touch mobile-app/shared/GeoTrainApp.dart
touch database/schemas/init.sql
touch database/migrations/create_tables.sql
touch config/config.json
touch scripts/deploy.sh
touch scripts/backup_db.sh
touch scripts/migrate_db.sh
touch logs/app.log

# Mensaje de confirmación
echo "Estructura de carpetas y archivos creada exitosamente."
