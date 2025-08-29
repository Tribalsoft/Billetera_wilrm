import 'package:flutter/material.dart';
import '../widgets/user_info_card.dart';
import '../widgets/tasks_container.dart';
import '../constants/app_colors.dart';

/// Pantalla principal de la aplicación
/// Contiene la información del usuario y las opciones de tareas
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Color de fondo de la pantalla
      backgroundColor: AppColors.backgroundColor,
      
      // Barra de aplicación
      appBar: AppBar(
        title: const Text(
          'Billetera Digital',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.textWhite,
          ),
        ),
        backgroundColor: AppColors.primaryBlue,
        elevation: 0, // Sin sombra para un diseño más limpio
        centerTitle: true,
      ),
      
      // Cuerpo principal de la pantalla
      body: const SingleChildScrollView(
        // Permite scroll si el contenido es muy largo
        child: Column(
          children: [
            // Primer contenedor: Información del usuario
            UserInfoCard(),
            
            // Segundo contenedor: Opciones de tareas
            TasksContainer(),
          ],
        ),
      ),
    );
  }
}
