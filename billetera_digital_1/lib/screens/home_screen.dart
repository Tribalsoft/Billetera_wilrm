import 'package:flutter/material.dart';
import '../widgets/user_info_card.dart';
import '../widgets/tasks_container.dart';
import '../constants/app_colors.dart';
import '../constants/app_dimensions.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDimensions.paddingMedium),
          child: Column(
            children: [
              // Primer contenedor: Información del usuario - Ocupa 1/3 del espacio
              Expanded(
                flex: 2,
                child: UserInfoCard(),
              ),
              
              const SizedBox(height: AppDimensions.spaceMedium),
              
              // Segundo contenedor: Opciones de tareas - Ocupa 2/3 del espacio
              Expanded(
                flex: 3,
                child: TasksContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
