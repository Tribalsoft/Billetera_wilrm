import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'constants/app_colors.dart';

/// Punto de entrada principal de la aplicación
/// Configura el tema y la pantalla inicial
void main() {
  runApp(const BilleteraDigitalApp());
}

/// Widget principal de la aplicación
/// Define la configuración global del tema y navegación
class BilleteraDigitalApp extends StatelessWidget {
  const BilleteraDigitalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Configuración básica de la aplicación
      title: 'Billetera Digital',
      debugShowCheckedModeBanner: false, // Oculta el banner de debug
      
      // Configuración del tema de la aplicación
      theme: ThemeData(
        // Colores principales de la aplicación
        primarySwatch: Colors.blue,
        primaryColor: AppColors.primaryBlue,
        
        // Configuración de la fuente
        fontFamily: 'Roboto',
        
        // Configuración de la barra de aplicación
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryBlue,
          foregroundColor: AppColors.textWhite,
          elevation: 0,
          centerTitle: true,
        ),
        
        // Configuración visual general
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      // Pantalla inicial de la aplicación
      home: const HomeScreen(),
    );
  }
}

