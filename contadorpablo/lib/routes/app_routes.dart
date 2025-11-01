import 'package:contadorpablo/screens/home_screen.dart';
import 'package:contadorpablo/screens/info_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String inicialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'info': (BuildContext context) => const InfoScreen()
  };
}
