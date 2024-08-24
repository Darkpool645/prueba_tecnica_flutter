# Prueba Técnica: CRUD de tareas con flutter

## Objetivo
Desarrollar una aplicación móvil en Flutter que permita a los usuarios gestionar un listado de tareas. Los usuarios deben poder crear nuevas tareas, visualizar una lista de tareas existentes, actualizar una tarea existente y eliminar una tarea.

## Requisitos

### Modelo de Tarea
* `id` (int): Identificador único de la tarea.
* `title` (String): Título de la tarea.
* `description` (String): Descripción detallada de la tarea.
* `isCompleted` (bool): Estado de la tarea (completada o no).

### Características de la Aplicación
* __Pantalla Principal__ : Lista de todas las tareas.
* __Agregar Tarea__: Pantalla con un formulario para agregar una nueva tarea.
* __Editar Tarea__: Pantalla con un formulario para editar una tarea existente.
* __Eliminar Tarea__: Opción para eliminar una tarea.
* __Marcar como Completada / Incompleta__: Posibilidad de marcar una tarea como completada o incompleta.

Te recomiendo que primero intentes hacer la prueba sin utilizar este repositorio. En caso de tener complicaciones, guiarse del repositorio.
Durante todo el proceso (desde creación del proyecto hasta despliegue en amplify) estáre subiendo los commits por separado para que sepan para que funciona cada cambio. 
Los comits que ponga tendran el título del cambio y una descripción detallada de que se hizo y para que se hizo.
___
# Proceso de instalación

## Requisitos Previos
Antes de comenzar, asegúrate de tener instalado lo siguiente:
- [Flutter](https://flutter.dev/docs/get-started/install) (versión recomendada: 3.0.0 o superior)
- [Dart](https://dart.dev/get-dart) (incluido con Flutter)
- Un editor de texto o IDE como [Visual Studio Code](https://code.visualstudio.com/) o [Android Studio](https://developer.android.com/studio)

## Instalación
Sigue estos pasos para configurar y ejecutar el proyecto en tu entorno local.

### 1. Clona el Repositorio
Clona el repositorio a tu máquina local usando Git:
```bash
git clone https://github.com/Darkpool645/prueba_tecnica_flutter
```
Cambia al directorio del proyecto:
```bash
cd prueba_tecnica_flutter
```

### 2. Instala las Dependencias
Una vez en el directorio del proyecto, instala las dependencias necesarias ejecutando:
```bash
flutter pub get
```
Este comando descargará todos los paquetes necesarios para el proyecto.

### 3. Configura Flutter para Web
Asegúrate de que Flutter está configurado para el desarrollo web. Si aún no lo has hecho, habilita el soporte para web ejecutando:
```bash
flutter config --enable-web
```

### 4. Ejecuta la aplicación en el navegador
Para ejecutar la aplicación en tu navegador web (como Chrome), usa el siguiente comando:
```bash
flutter run -d chrome
```
Esto compilará la aplicación y la abrirá en tu navegador predeterminado, permitiéndote ver y probar la aplicación directamente en Chrome.

___

# Estructura del Proyecto

```bash
/lib
|--/data                # Manejo de datos y lógica de negocio
|--|--/models           # Modelos de datos utilizados en la aplicación
|--|--/repository       # Clases y funciones para acceder a datos (API, base de datos, etc.)
|--/presentation        # Capa de presentación de la aplicación
|--|--/cubits           # Gestión de estado usando Cubits (o Bloc)
|--|--/screens          # Pantallas de la aplicación
|--|--/widgets          # Widgets reutilizables en la interfaz de usuario
|-- main.dart           # Archivo principal que inicia la aplicación
```
