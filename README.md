# OrientaTrain
Sistema de Geolocalización para Entrenamiento de Orientación

```markdown
# Proyecto de Entrenamiento de Orientación

Este proyecto tiene como objetivo proporcionar un sistema de geolocalización para entrenamientos de orientación. A través de una aplicación móvil, los usuarios pueden interactuar con balizas geolocalizadas por GPS. El sistema almacena datos en una base de datos MySQL y se puede administrar desde una página web.

## Componentes del Proyecto

### 1. **Backend**
El backend se encarga de la lógica del servidor, proporcionando una API RESTful para la gestión de usuarios, balizas y rutas de entrenamiento. La API interactúa con una base de datos MySQL para almacenar la información.

### 2. **Aplicación Móvil**
La aplicación móvil estará disponible para **Android** e **iOS**. Los dispositivos móviles actúan como balizas GPS que los usuarios pueden utilizar en su entrenamiento. La aplicación también puede almacenar el recorrido de cada usuario durante el entrenamiento.

### 3. **Página Web (Master)**
El sistema maestro se implementa en una página web donde los usuarios pueden gestionar las balizas, crear nuevos mapas y visualizar datos de entrenamientos previos. La página web se conecta a la base de datos MySQL para almacenar y recuperar la información.

### 4. **Base de Datos**
La base de datos MySQL será el núcleo central para almacenar todos los datos del proyecto, incluyendo la información de los usuarios, las balizas, los recorridos y los mapas generados.

## Estructura del Proyecto

```
/proyecto-entrenamiento-orientacion
│
├── /backend                   # Carpeta para el backend (API y lógica del servidor)
│   ├── /api                   # Código de la API
│   ├── /config                # Configuración de la base de datos y variables de entorno
│   ├── /migrations            # Migraciones para gestionar la base de datos
│   ├── /tests                 # Pruebas unitarias y de integración
│   └── /app.py                # Archivo principal para iniciar el servidor
│
├── /mobile-app                # Carpeta para la aplicación móvil
│   ├── /android               # Código específico de Android
│   ├── /ios                   # Código específico de iOS
│   ├── /shared                # Código compartido entre ambas plataformas
│   └── /builds                # Archivos de build para despliegue
│
├── /web-app                   # Carpeta para la página web (sistema maestro)
│   ├── /src                   # Archivos fuente de la web
│   ├── /public                # Archivos públicos (index.html, favicon, etc.)
│   └── /tests                 # Pruebas unitarias y de integración
│
├── /database                  # Carpeta para la base de datos
│   ├── /schemas               # Esquemas SQL para crear las tablas
│   ├── /migrations            # Scripts para migraciones de la base de datos
│   └── /seed_data.sql         # Datos de ejemplo
│
├── /config                    # Archivos de configuración global
│   ├── .env                   # Variables de entorno
│   └── config.json            # Configuración general
│
├── /logs                      # Carpeta para archivos de log
│   └── /app.log               # Logs del servidor
│
├── /scripts                   # Scripts auxiliares (despliegue, migración, etc.)
│   ├── deploy.sh              # Script de despliegue
│   ├── backup_db.sh           # Script para respaldos de la base de datos
│   └── migrate_db.sh          # Script para migrar la base de datos
│
└── README.md                  # Documentación general del proyecto
```

## Requisitos

Antes de comenzar con el proyecto, asegúrate de tener instalados los siguientes requisitos:

- **Python 3.x**: Para ejecutar el backend.
- **MySQL**: Para la base de datos.
- **Node.js y npm**: Para el frontend y la página web.
- **Android Studio / Xcode**: Para compilar y ejecutar la aplicación móvil.
- **Flutter / React Native** (si se usa un framework compartido para ambas plataformas): Para el desarrollo móvil.

## Instalación

### Backend (API y Base de Datos)

1. Clona el repositorio:
    ```bash
    git clone https://github.com/tu-usuario/proyecto-entrenamiento-orientacion.git
    cd proyecto-entrenamiento-orientacion/backend
    ```

2. Instala las dependencias:
    ```bash
    pip install -r requirements.txt
    ```

3. Crea la base de datos MySQL y configura las credenciales en el archivo `.env`.

4. Ejecuta las migraciones para crear las tablas:
    ```bash
    python manage.py migrate
    ```

5. Inicia el servidor:
    ```bash
    python app.py
    ```

### Aplicación Móvil

1. Clona el repositorio de la aplicación móvil:
    ```bash
    git clone https://github.com/tu-usuario/proyecto-entrenamiento-orientacion.git
    cd proyecto-entrenamiento-orientacion/mobile-app
    ```

2. Si estás usando Flutter o React Native, instala las dependencias:
    ```bash
    flutter pub get   # O
    npm install       # Para React Native
    ```

3. Conecta la aplicación a la API backend configurando la URL base en el archivo correspondiente.

4. Compila y ejecuta la aplicación en tu dispositivo o emulador:
    ```bash
    flutter run    # O
    react-native run-android   # Para Android
    react-native run-ios       # Para iOS
    ```

### Página Web (Frontend)

1. Clona el repositorio de la página web:
    ```bash
    git clone https://github.com/tu-usuario/proyecto-entrenamiento-orientacion.git
    cd proyecto-entrenamiento-orientacion/web-app
    ```

2. Instala las dependencias:
    ```bash
    npm install
    ```

3. Configura la URL de la API backend en el archivo de configuración.

4. Inicia el servidor de desarrollo:
    ```bash
    npm start
    ```

### Base de Datos

1. Asegúrate de tener MySQL en funcionamiento.

2. Crea la base de datos `entrenamiento` y aplica las migraciones para crear las tablas necesarias.

## Pruebas

1. Para ejecutar las pruebas del backend, dirígete a la carpeta `backend/tests` y ejecuta los tests:
    ```bash
    python -m unittest discover
    ```

2. Para las pruebas de la aplicación móvil, sigue las instrucciones específicas de la plataforma (Android/iOS) o utiliza herramientas de pruebas automatizadas.

3. Para las pruebas de la página web, usa herramientas como **Jest** o **Mocha** para pruebas unitarias y de integración.

## Contribuir

Si deseas contribuir al proyecto, por favor sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama para tus cambios.
3. Realiza tus modificaciones y haz commit.
4. Abre un pull request explicando tus cambios.

## Licencia
