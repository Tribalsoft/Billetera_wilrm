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
      // Configuración visual del contenedor - Ocupa todo el espacio disponible
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(AppDimensions.paddingLarge),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribución equitativa
        children: [
          // Saludo al usuario
          Text(
            AppStrings.greeting,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.textWhite,
            ),
          ),
          
          // Información de contacto
          Row(
            children: [
              const Icon(
                Icons.email,
                color: AppColors.textWhite,
                size: 20,
              ),
              const SizedBox(width: AppDimensions.spaceSmall),
              const Text(
                AppStrings.contactLabel,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(width: AppDimensions.spaceSmall),
              Flexible(
                child: Text(
                  AppStrings.userEmail,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.textWhite.withOpacity(0.9),
                  ),
                ),
              ),
            ],
          ),
          
          // Saldo disponible
          Row(
            children: [
              const Icon(
                Icons.account_balance_wallet,
                color: AppColors.textWhite,
                size: 24,
              ),
              const SizedBox(width: AppDimensions.spaceSmall),
              const Text(
                AppStrings.balanceLabel,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(width: AppDimensions.spaceSmall),
              Text(
                AppStrings.balanceAmount,
                style: const TextStyle(
                  fontSize: 24,
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
