import 'package:flutter/material.dart';
import 'package:project/Screens/add_documents.dart';
import 'package:project/Screens/customer_verification_screen.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/drawer.dart';
import 'package:project/Widgets/navigateTo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      drawer: DrawerSide(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              defaultButton(
                  function: () {
                    navigateTo(context, AddDocuments());
                  },
                  text: 'Upload Document'),
              defaultButton(
                  function: () {
                    navigateTo(context, CustomerVerification());
                  },
                  text: 'Customer Verification'),
              defaultButton(function: () {}, text: 'Partner View'),
              Container(),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
