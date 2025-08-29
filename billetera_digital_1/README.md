# Billetera Digital - Flutter App

Una aplicación Flutter simple y elegante que muestra información del usuario y opciones de tareas organizadas en contenedores visuales distintivos.

## 📱 Características

### Contenedor de Información del Usuario
- **Saludo personalizado**: "Hola, Wilber"
- **Información de contacto**: usuario@gmail.com
- **Saldo actual**: $1200
- **Color distintivo**: Azul oscuro (#1976D2)

### Contenedor de Tareas
Dividido en dos sub-contenedores:

#### 1. Comparar
- Título: "Comparar"
- Descripción: "ir al Ara"
- Color: Gris azulado (#37474F)

#### 2. Tránsito
- Título: "Transito"
- Descripción: "tramites"
- Color: Marrón (#5D4037)

## 🏗️ Estructura del Proyecto

```
lib/
├── main.dart                    # Punto de entrada de la aplicación
├── constants/                   # Constantes de la aplicación
│   ├── app_colors.dart         # Paleta de colores
│   ├── app_strings.dart        # Textos de la aplicación
│   └── app_dimensions.dart     # Dimensiones y espaciado
├── screens/                     # Pantallas de la aplicación
│   └── home_screen.dart        # Pantalla principal
└── widgets/                     # Widgets reutilizables
    ├── user_info_card.dart     # Tarjeta de información del usuario
    └── tasks_container.dart    # Contenedor de tareas
```

## 🎨 Principios de Diseño

### Organización del Código
- **Separación de responsabilidades**: Cada widget tiene una función específica
- **Constants**: Todos los valores constantes están centralizados
- **Reutilización**: Widgets modulares y reutilizables
- **Documentación**: Comentarios claros en todo el código

### Buenas Prácticas Implementadas
- ✅ Estructura de carpetas organizada
- ✅ Separación de colores, textos y dimensiones
- ✅ Widgets Stateless para mejor rendimiento
- ✅ Nombres descriptivos para variables y funciones
- ✅ Comentarios explicativos en el código
- ✅ Uso consistente de constantes
- ✅ Diseño responsivo con SingleChildScrollView

### Características Visuales
- **Sombras sutiles** para profundidad visual
- **Bordes redondeados** para un aspecto moderno
- **Colores contrastantes** para fácil distinción
- **Tipografía consistente** con diferentes pesos
- **Espaciado uniforme** siguiendo Material Design

## 🚀 Cómo ejecutar

1. Asegúrate de tener Flutter instalado
2. Clona el repositorio
3. Ejecuta: `flutter pub get`
4. Ejecuta: `flutter run`

## 📋 Dependencias

- **Flutter SDK**: ^3.8.0
- **Material Design**: Incluido por defecto

## 🎯 Propósito

Esta aplicación demuestra:
- Organización profesional de código Flutter
- Implementación de buenas prácticas de desarrollo
- Uso efectivo del sistema de colores de Material Design
- Creación de interfaces de usuario simples pero elegantes
- Estructura modular y mantenible

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
