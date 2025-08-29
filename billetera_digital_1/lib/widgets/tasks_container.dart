import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../constants/app_dimensions.dart';

/// Widget que contiene las opciones de tareas
/// Se divide en dos sub-contenedores: Comparar y Tránsito
class TasksContainer extends StatelessWidget {
  const TasksContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Configuración del contenedor principal de tareas - Ocupa todo el espacio disponible
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(AppDimensions.paddingLarge),
      decoration: BoxDecoration(
        color: AppColors.tasksContainer,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusMedium),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título de la sección
          Text(
            AppStrings.tasksTitle,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: AppDimensions.spaceLarge),
          
          // Contenedor con las dos opciones de tareas - Ocupa el espacio restante
          Expanded(
            child: Row(
              children: [
                // Primera opción: Comparar
                Expanded(
                  child: _buildTaskCard(
                    title: AppStrings.compareTitle,
                    subtitle: AppStrings.compareSubtitle,
                    color: AppColors.compareContainer,
                  ),
                ),
                const SizedBox(width: AppDimensions.spaceLarge),
                
                // Segunda opción: Tránsito
                Expanded(
                  child: _buildTaskCard(
                    title: AppStrings.transitTitle,
                    subtitle: AppStrings.transitSubtitle,
                    color: AppColors.transitContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Método para construir una tarjeta de tarea individual
  /// [title]: Título de la tarea
  /// [subtitle]: Subtítulo o descripción de la tarea
  /// [color]: Color de fondo del contenedor
  Widget _buildTaskCard({
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      // Ocupa todo el ancho y alto disponible
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(AppDimensions.paddingLarge),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusMedium),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icono representativo
          Icon(
            title == AppStrings.compareTitle ? Icons.compare_arrows : Icons.directions_car,
            color: AppColors.textWhite,
            size: 32,
          ),
          const SizedBox(height: AppDimensions.spaceMedium),
          
          // Título de la tarea
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: AppDimensions.spaceSmall),
          
          // Subtítulo de la tarea
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.textWhite.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }
}
