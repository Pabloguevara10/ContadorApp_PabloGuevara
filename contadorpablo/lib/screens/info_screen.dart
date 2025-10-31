import 'package:flutter/material.dart';
import '../main.dart'; // Importamos main.dart para usar los colores

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información'),
        // Al ser un appbar, deberia tener una flecha de "regresar" automáticamente
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.gamepad_sharp,
                size: 100,
                color: MyApp.xboxLightGreen,
              ),
              const SizedBox(height: 20),
              
              const Text(
                'Desarrollado por:',
                style: TextStyle(fontSize: 20, color: Colors.white70),
              ),
              const SizedBox(height: 10),

      
              const Text(
                'Pablo Guevara',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: MyApp.xboxLightGreen,
                ),
              ),
            

              const SizedBox(height: 10),
              const Text(
                'App de Contador para la Evaluacion 2 de Prog III.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              
              const SizedBox(height: 40),

              // Botón para regresar
              FloatingActionButton.extended(
                onPressed: () {
                  // Cierra la pantalla y regresa a la (HomeScreen)
                  Navigator.pop(context);
                },
                label: const Text('Regresar', style: TextStyle(fontSize: 18)),
                icon: const Icon(Icons.arrow_back),
                backgroundColor: MyApp.xboxLightGreen,
                foregroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}