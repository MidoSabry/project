import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/drawer.dart';

class PartnerView extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Partner'),
            SizedBox(
              width: 20,
            ),
            Text('View'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              defaultButton(function: () {}, text: 'Customer 1'),
              defaultButton(function: () {}, text: 'Customer 2'),
              defaultButton(function: () {}, text: 'Customer 3'),
              defaultButton(function: () {}, text: 'Customer 4'),
              defaultButton(function: () {}, text: 'Customer 5'),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
