# Nombre del proyecto:
## BIBLIOTECA DIGITAL (SD LIBRARY)

## Descripción de la Aplicación

Aplicación móvil desarrollada en Flutter para la consulta e interacción con un catálogo de libros reales. El proyecto demuestra una arquitectura modular, desarrollo de widgets personalizados reutilizables y gestión de estado reactivo mediante el patrón Provider.

## Objetivo

Demostrar el desacoplamiento de componentes visuales y lógica de negocio en Flutter, garantizando que los cambios de estado (guardar o remover libros de favoritos) se reflejen automáticamente en múltiples pantallas de la aplicación a través de Provider.

## Funcionalidades Principales
* **Catálogo de Libros Reales:** Renderizado eficiente de títulos clásicos e hispanos mediante `ListView.builder`.
* **Módulos de Detalle:** Vista explicativa de cada obra con sinopsis, autor, categoría y calificación.
* **Gestión de Lista de Lectura (Favoritos):** Agregado/eliminación reactiva de libros compartida globalmente.
* **Perfil de Usuario Lector:** Visualización del contador de libros guardados en tiempo real.
* **Navegación Multipantalla:** Enrutamiento nativo con `Navigator.push` y `Navigator.pop`.

## Tecnologías y Paquetes Utilizados
* **Flutter SDK:** Framework UI para aplicaciones móviles.
* **Dart:** Lenguaje de programación.
* **Provider (`^6.1.2`):** Paquete oficial recomendado para la gestión de estado centralizada.

##  Estructura del Proyecto

```text
lib/
├── data/
│   └── books_data.dart        # Colección de objetos Book reales
├── models/
│   └── book.dart              # Clase modelo de datos principal
├── providers/
│   └── book_provider.dart     # ChangeNotifier para el estado global
├── screens/
│   ├── detail_screen.dart     # Detalle completo de una obra
│   ├── favorites_screen.dart  # Lista de lectura reactiva
│   ├── home_screen.dart       # Catálogo principal
│   └── profile_screen.dart    # Perfil del usuario y estadísticas
├── widgets/
│   ├── book_card.dart         # Componente modular de tarjeta literaria
│   └── favorite_button.dart   # Botón reactivo conectado al Provider
└── main.dart                  # Punto de entrada y ChangeNotifierProvider
```

## Explicación breve del Provider implementado.

Se definió la clase BookProvider, la cual extiende de ChangeNotifier. Mantiene el estado de la lista de favoritos (_favoriteBooks) y notifica a los suscriptores invocando el método notifyListeners().

## Descripción de los widgets reutilizables creados.

* BookCard (lib/widgets/book_card.dart): Encapsula la maquetación visual de cada libro en el catálogo (portada, título, autor, chips y botón de favorito).

* FavoriteButton (lib/widgets/favorite_button.dart): Botón encapsulado que consume BookProvider, cambiando el ícono y lanzando notificaciones emergentes (SnackBar) al hacer tap.

## Instrucciones básicas para ejecutar el proyecto.

1. Clonar este repositorio:
git clone https://github.com/DiegoLop87/biblioteca_digital.git

2. Acceder al directorio del proyecto:
cd biblioteca_digital

3. Descargar dependencias:
flutter pub get

4. Ejecutar la aplicación en un emulador Android o dispositivo físico:
flutter run

## Capturas de las principales pantallas.

1. Catálogo Principal (HomeScreen)
<img width="290" height="611" alt="imagen" src="https://github.com/user-attachments/assets/8dec3344-ad47-4564-8aef-c98731942e1a" />

2. Detalle del Libro (DetailScreen)
<img width="283" height="618" alt="imagen" src="https://github.com/user-attachments/assets/4df35eae-eb31-4daa-9f0f-f684970ee48c" />
  
3. Guardados/Favoritos (FavoritesScreen)
<img width="293" height="613" alt="imagen" src="https://github.com/user-attachments/assets/8cf05502-fa39-46c4-b706-3374bda09f78" />
  
4.  Perfil Lector (ProfileScreen)
<img width="283" height="608" alt="imagen" src="https://github.com/user-attachments/assets/846f1143-891a-495f-b58e-c69a81f51900" />

## Captura o evidencia de la funcionalidad administrada mediante Provider.
Se da tap en la etiqueta y como se observa se marca de color café y de la misma manera se agrega a la pagina o screen de favoritos o lista de lectura
<img width="291" height="605" alt="imagen" src="https://github.com/user-attachments/assets/f8a702fa-86f9-4c57-a897-c1d1d2a0639c" /> <img width="283" height="611" alt="imagen" src="https://github.com/user-attachments/assets/3c149632-954a-4075-a7c6-cdcc4a11d1ff" />

## Datos del Autor
* **Estudiante:** Diego Javier López Zambrano








