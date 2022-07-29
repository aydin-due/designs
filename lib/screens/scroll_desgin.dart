import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      gradient:  LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5,0.5],
        colors: [Color(0xff79ECCA), Color(0xff55BED7) ])
    );
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          // nav btwn pages
          physics: const BouncingScrollPhysics(), // bouncing effect on android
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2()
        ]),
      ));
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff55BED7),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll.png')));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea( //no se acerca tanto a los bordes
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Text('11º', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()), // se expande en todo el espacio posible
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff55BED7),
      child: Center(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff3FA2FF),
              shape: const StadiumBorder()
            ),
            onPressed: () {}, 
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: const Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30),),
            ))),
    );
  }
}
