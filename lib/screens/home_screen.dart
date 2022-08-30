import 'package:flutter/material.dart';
import 'package:designs/widgets/custom_bottom_nav.dart';
import 'package:designs/widgets/page_title.dart';
import 'package:designs/widgets/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [Background(), _HomeBody()],
    ),
    bottomNavigationBar: CustomBottomNavBar(),);
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle()
        ],
      ),
    );
  }
}
