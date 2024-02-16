import 'package:flutter/material.dart';
import 'package:peliculas2024/screens/screens.dart';

void main() {
  runApp(const MainApp());
}

// Clase principal que define la aplicación
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Películas', // Título de la aplicación
      initialRoute: 'home', // Ruta inicial de la aplicación
      routes: {
        'home':(_) => HomeScreen(), // Ruta para la pantalla principal (HomeScreen)
        'details':(_) => DetailsScreen(), // Ruta para la pantalla de detalles (DetailsScreen)
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent), // Esquema de colores
        useMaterial3: true, // Utiliza el estilo de diseño Material 3
      ),
    );
  }
}
