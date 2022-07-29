import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage('assets/landscape.jpg')),
        const Title(),
        const ButtonSection(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text('Cupidatat veniam duis occaecat laboris consequat sit adipisicing exercitation id deserunt. Consectetur sint proident tempor irure reprehenderit. Exercitation laboris et duis officia laboris reprehenderit consequat do ea consequat irure magna velit. Occaecat sint ad adipisicing dolore est cupidatat reprehenderit sit nostrud nulla excepteur mollit tempor.'))
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Oeschinen Lake Campground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.black45),
            )
          ]),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'CALL',),
          CustomButton(icon: Icons.navigation_sharp, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE')
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30,),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}
