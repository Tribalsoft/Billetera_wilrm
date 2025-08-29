import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../constants/app_dimensions.dart';

/// Widget que muestra la información del usuario
/// Contiene saludo, contacto y saldo del usuario
class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Configuración visual del contenedor
      padding: const EdgeInsets.all(AppDimensions.paddingLarge),
      margin: const EdgeInsets.all(AppDimensions.paddingMedium),
      decoration: BoxDecoration(
        color: AppColors.userInfoContainer,
        borderRadius: BorderRadius.circular(AppDimensions.borderRadiusMedium),
        // Sombra para dar profundidad
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
          // Saludo al usuario
          Text(
            AppStrings.greeting,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: AppDimensions.spaceSmall),
          
          // Información de contacto
          Row(
            children: [
              const Text(
                AppStrings.contactLabel,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(width: AppDimensions.spaceSmall),
              Text(
                AppStrings.userEmail,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textWhite.withOpacity(0.9),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spaceSmall),
          
          // Saldo disponible
          Row(
            children: [
              const Text(
                AppStrings.balanceLabel,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(width: AppDimensions.spaceSmall),
              Text(
                AppStrings.balanceAmount,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textWhite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
