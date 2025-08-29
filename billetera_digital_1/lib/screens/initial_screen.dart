import 'package:flutter/material.dart';
import 'loading_screen.dart';
import 'success_screen.dart';
import 'failure_screen.dart';
import 'home_screen.dart';

/// Pantalla de inicio que maneja el flujo de carga inicial
/// Muestra secuencialmente las pantallas de carga, éxito/error y luego la pantalla principal
class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    _startInitialFlow();
  }

  /// Inicia el flujo de pantallas inicial
  void _startInitialFlow() async {
    // Simula un proceso de carga de 2 segundos
    await Future.delayed(const Duration(seconds: 2));
    
    if (!mounted) return;
    
    // Simula un resultado aleatorio (puedes cambiar esto por tu lógica real)
    // Para demo: 70% éxito, 30% fallo
    final success = DateTime.now().millisecond % 10 < 7;
    
    if (success) {
      _showSuccessScreen();
    } else {
      _showFailureScreen();
    }
  }

  /// Muestra la pantalla de éxito y luego navega al home
  void _showSuccessScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SuccessScreen(
          message: 'Billetera Digital cargada correctamente',
          onContinue: _navigateToHome,
        ),
      ),
    );
  }

  /// Muestra la pantalla de error con opción de reintentar
  void _showFailureScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => FailureScreen(
          message: 'No se pudo cargar la aplicación.\nVerifica tu conexión a internet.',
          onRetry: () {
            // Regresa a la pantalla de carga y reintenta
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const InitialScreen()),
            );
          },
        ),
      ),
    );
  }

  /// Navega a la pantalla principal
  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const LoadingScreen();
  }
}
