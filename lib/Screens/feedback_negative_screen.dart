import 'package:flutter/material.dart';

class FeedbackNegative extends StatelessWidget {
  //const FeedbackNegative({Key? key}) : super(key: key);
  List<String> feedbackNegatives = [
    'Payment Issue',
    'Accidents',
    'Thieves',
    'Pawns (Rahen)',
    'Extra Km',
    'Maintenance issue',
    'Wrong location/Wrong Routes',
    'Parts Replacements',
    'illegal items Transport'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                      //size: 30,
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Feedback Negative',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: feedbackNegatives.map((e) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      e.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}
