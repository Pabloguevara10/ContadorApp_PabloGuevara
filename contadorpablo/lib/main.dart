import 'package:contadorpablo/designs/designer.dart';
import 'routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Con esto se elimina la cinta de "Debug"
      debugShowCheckedModeBanner: false,
      title: 'Contador App',
      theme: Designer.darkTheme,
      // ruta inicial
      initialRoute: AppRoutes.inicialRoute,
      // rutas de navegación
      routes: AppRoutes.routes

    );
  }
}
