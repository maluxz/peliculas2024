import 'package:flutter/material.dart';
import 'package:peliculas2024/widgets/widgets.dart'; // Importa los widgets necesarios

// Pantalla principal de la aplicación que muestra las películas en cartelera
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Utiliza un Scaffold para la estructura básica de la pantalla
      appBar: AppBar( // Barra de aplicación en la parte superior
        elevation: 0, // Sin elevación
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))], // Icono de búsqueda en la esquina derecha
        title: Center(child: Text('Películas en cine')), // Título centrado
      ),
      body: Column( // Cuerpo de la pantalla, una columna para apilar widgets verticalmente
        children: [CardSwiper()], // Contiene un CardSwiper para mostrar las películas
      ),
    );
  }
}
