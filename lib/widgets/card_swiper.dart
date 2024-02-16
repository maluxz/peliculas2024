import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

// Widget reutilizable para mostrar un swiper de tarjetas de películas
class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el tamaño de la pantalla
    final size = MediaQuery.of(context).size;

    // Retornamos un SizedBox con dimensiones definidas para el swiper
    return SizedBox(
      width: double.infinity, // Ancho ocupando todo el espacio disponible
      height: size.height * 0.5, // Altura que ocupa el 50% de la altura de la pantalla
      child: Swiper( // Widget Swiper para el desplazamiento de las tarjetas
        itemCount: 10, // Número total de tarjetas
        layout: SwiperLayout.STACK, // Diseño de las tarjetas (apiladas)
        itemWidth: size.width * 0.6, // Ancho de cada tarjeta (el 60% del ancho de la pantalla)
        itemHeight: size.height * 0.4, // Altura de cada tarjeta (el 40% de la altura de la pantalla)
        itemBuilder: (_, int index) { // Constructor de cada tarjeta
          // Devuelve un GestureDetector para manejar eventos de toque
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: ''), // Navega a la pantalla de detalles al hacer clic en la tarjeta
            child: ClipRRect( // Widget para recortar los bordes de la imagen
              borderRadius: BorderRadius.circular(20), // Borde redondeado para la imagen
              child: FadeInImage( // Widget para mostrar una imagen con una animación de fundido
                placeholder: AssetImage('assets/loading.gif'), // Imagen de carga mientras se carga la imagen real
                image: AssetImage('assets/no-image.jpeg'), // Imagen real de la película
              ),
            ),
          );
        },
      ),
    );
  }
}
