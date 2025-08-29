import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// Pantalla de carga simple
/// Muestra un indicador de progreso circular mientras se inicializa la aplicación
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo o icono de la aplicación
            Icon(
              Icons.account_balance_wallet,
              size: 80,
              color: AppColors.primaryBlue,
            ),
            
            const SizedBox(height: 32),
            
            // Indicador de carga circular
            CircularProgressIndicator(
              color: AppColors.primaryBlue,
              strokeWidth: 3,
            ),
            
            const SizedBox(height: 24),
            
            // Texto de carga
            Text(
              'Cargando...',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textDark,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
