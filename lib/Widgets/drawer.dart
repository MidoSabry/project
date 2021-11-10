import 'package:flutter/material.dart';
import 'package:project/Screens/add_documents.dart';
import 'package:project/Screens/customer_verification_screen.dart';
import 'package:project/Screens/feedback_negative_screen.dart';
import 'package:project/Widgets/list_tile.dart';
import 'package:project/Widgets/navigateTo.dart';

class DrawerSide extends StatelessWidget {
  //const Drawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: InkWell(
              child: Icon(
                Icons.arrow_back,
                color: Colors.grey,
                //size: 30,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          listTile(
              title: "Upload Document",
              onTap: () {
                navigateTo(context, AddDocuments());
              }),
          SizedBox(
            height: 20,
          ),
          listTile(title: "Fill the Detail"),
          SizedBox(
            height: 20,
          ),
          listTile(
              title: "Customer Verification",
              onTap: () {
                navigateTo(context, CustomerVerification());
              }),
          SizedBox(
            height: 20,
          ),
          listTile(title: "Partner View"),
          SizedBox(
            height: 20,
          ),
          listTile(
              title: "Feedback Negative",
              onTap: () {
                navigateTo(context, FeedbackNegative());
              }),
          SizedBox(
            height: 20,
          ),
          listTile(title: "Feedback Positive"),
          SizedBox(
            height: 20,
          ),
          listTile(title: "Partner Login"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }

  Widget listTile({String? title, IconData? iconData, VoidCallback? onTap}) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: onTap,
        // leading: Icon(
        //   iconData,
        //   size: 28,
        // ),
        title: Text(
          title!,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
