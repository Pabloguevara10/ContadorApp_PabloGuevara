import 'package:flutter/material.dart';

// Definimos una clase para guardar nuestro tema y colores
class Designer {
  
  // Colores estilo Xbox Que fueron proporcionados por Gemini AI
  static const Color xboxGreen = Color(0xFF107C10);
  static const Color xboxLightGreen = Color(0xFF9BDB3A);
  static const Color xboxDarkBg = Color(0xFF1F1F1F);
  static const Color xboxLightText = Color(0xFFFAFAFA);

  // Definición del Tema
  static ThemeData get darkTheme {
    return ThemeData(
      // Aquí está todo el código de diseño que tenías en main.dart
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
    );
  }
}