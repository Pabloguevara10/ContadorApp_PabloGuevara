import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // La variable que mantiene el estado del contador
  double _contador = 0;

  // Métodos para cambiar el estado del contador

  void _sumar() {
    setState(() {
      _contador++;
    });
  }

  void _restar() {
    setState(() {
      if (_contador > 0) {
        _contador--;
      }
      else {
        _contador = 0;
      } //Esto consigue que el contador no baje de 0 y sea siempre positivo
    });
  }

  void _multiplicar() {
    setState(() {
      _contador = _contador * 2;
    });
  }

  void _dividir() {
    setState(() {
      _contador = (_contador / 2);
    });
  }

  void _resetear() {
    setState(() {
      _contador = 0;
    });
  }

  // Método para navegar a InfoScreen
  void _irAInfo() {
    Navigator.pushNamed(context, 'info');
  }

  @override
  Widget build(BuildContext context) {
    // Obtenemos los estilos de texto del tema que definimos en main.dart
    final textStyles = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CONTADOR PABLO'),
        actions: [
          // Botón en la AppBar para ir a la pantalla de Info
          IconButton(
            icon: const Icon(Icons.perm_device_information),
            tooltip: 'Información',
            onPressed: _irAInfo,
            color: const Color.fromARGB(255, 207, 228, 13),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Valor del Contador:',
              style: textStyles.bodyMedium,
            ),
            Text(
              '$_contador',
              //DisplayLarge sirve como estilo grande para números
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      
      // Usamos una Columna para poner todos los botones flotantes
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Botón de Sumar
            FloatingActionButton(
              heroTag: null,
              onPressed: _sumar,
              tooltip: 'Sumar 1',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),

            // Botón de Restar
            FloatingActionButton(
              heroTag: null,
              onPressed: _restar,
              tooltip: 'Restar 1',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(height: 10),

            // Botón de Multiplicar
            FloatingActionButton(
              heroTag: null,
              onPressed: _multiplicar,
              tooltip: 'Multiplicar x2',
              // Usamos un Texto para 'x2'
              child: const Text('x2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),

            // Botón de Dividir
            FloatingActionButton(
              heroTag: null,
              onPressed: _dividir,
              tooltip: 'Dividir /2',
              // Usamos un Texto para '/2'
              child: const Text('/2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20), // Espacio extra

            // Botón de Resetear
            FloatingActionButton(
              heroTag: null,
              onPressed: _resetear,
              tooltip: 'Resetear',
              // Le ponemos un color de fondo diferente para destacarlo
              backgroundColor: const Color(0xFF9BDB3A),
              foregroundColor: Colors.black,
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}