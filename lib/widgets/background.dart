import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8], //donde comienza y termina el degradado
          colors: [
            Color(0xff2D2B5A),
            Color(0xff1E2031)
          ])
      );
    return Stack(
      children: [
        Container(decoration: boxDecoration),
        Positioned( //mover la posicion del widget
          top: -100,
          left: -30,
          child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi/5, //girar el cuadro
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(colors: [
             Color.fromRGBO(236, 98, 188, 1),
             Color.fromRGBO(241, 142, 172, 1)
          ])
        ),
      ),
    );
  }
}