import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify Transaction', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Classify this transaction intro a particular categoyry', style: TextStyle(fontSize: 16, color: Colors.white))
          ]),
      ),
    );
  }
}
