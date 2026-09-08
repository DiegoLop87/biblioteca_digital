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


## Explicación breve del Provider implementado.

Se definió la clase BookProvider, la cual extiende de ChangeNotifier. Mantiene el estado de la lista de favoritos (_favoriteBooks) y notifica a los suscriptores invocando el método notifyListeners().

## Descripción de los widgets reutilizables creados.

* BookCard (lib/widgets/book_card.dart): Encapsula la maquetación visual de cada libro en el catálogo (portada, título, autor, chips y botón de favorito).

* FavoriteButton (lib/widgets/favorite_button.dart): Botón encapsulado que consume BookProvider, cambiando el ícono y lanzando notificaciones emergentes (SnackBar) al hacer tap.


