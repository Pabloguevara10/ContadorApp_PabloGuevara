import 'package:flutter/material.dart';
import 'screens/info_screen.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Defino los colores estilo Xbox que me proporcionó Gemini AI
  static const Color xboxGreen = Color(0xFF107C10);
  static const Color xboxLightGreen = Color(0xFF9BDB3A);
  static const Color xboxDarkBg = Color(0xFF1F1F1F);
  static const Color xboxLightText = Color(0xFFFAFAFA);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Con esto se elimina la cinta de "Debug"
      debugShowCheckedModeBanner: false,
      title: 'Contador App',
      
      // Aquí definimos el Tema Xbox Proporcionado por Gemini AI
      theme: ThemeData(
        brightness: Brightness.dark, // Modo oscuro por defecto
        primaryColor: xboxGreen,
        scaffoldBackgroundColor: xboxDarkBg, // Fondo de la app
        
        // Estilo de la AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: xboxGreen,
          elevation: 4,
          titleTextStyle: TextStyle(
            color: xboxLightText,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: xboxLightText),
        ),

        // Estilo del texto
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: xboxLightText, fontSize: 18),
          displayLarge: TextStyle(
            color: xboxLightGreen, // Color del número grande
            fontSize: 100,
            fontWeight: FontWeight.bold,
          ),
        ),

        // FloatingActionButtons del Sistema
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: xboxGreen, // Fondo
          foregroundColor: xboxLightText, // Iconos
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),

      // ruta inicial
      initialRoute: 'info',

      // rutas de navegación
      routes: {
        'home': (context) => const HomeScreen(),
        'info': (context) => const InfoScreen(),
      },
    );
  }
}
