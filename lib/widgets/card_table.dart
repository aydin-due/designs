import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      //table rows deben tener misma cantidad de hijos
      children: const [
       TableRow(children: [
          _Card(color: Colors.blue, icon: Icons.border_all, text: 'General',),
          _Card(color: Colors.purple, icon: Icons.car_rental, text: 'Transport',),
        ]),
        TableRow(children: [
          _Card(color: Colors.pink, icon: Icons.shop, text: 'Shopping',),
          _Card(color: Colors.orange, icon: Icons.cloud, text: 'Bills',),
        ]),
        TableRow(children: [
          _Card(color: Colors.blueGrey, icon: Icons.video_call, text: 'Entertainment',),
          _Card(color: Colors.green, icon: Icons.card_travel_outlined, text: 'Grocery',),
        ]),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _Card({super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect( // para q el blur se aplique solo al contenedor y no a todo lo demas
      borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
