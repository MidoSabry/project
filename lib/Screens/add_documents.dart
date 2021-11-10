import 'package:flutter/material.dart';
import 'package:project/Widgets/box_text_field.dart';
import 'package:project/Widgets/default_button.dart';

class AddDocuments extends StatelessWidget {
  //const AddDocuments({Key? key}) : super(key: key);
  var customerImageUpload = TextEditingController();
  var aadharCard = TextEditingController();
  var panCard = TextEditingController();
  var passport = TextEditingController();
  var voterIdCard = TextEditingController();
  var drivingLicences = TextEditingController();
  var vehicleNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: InkWell(
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                  //size: 30,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add documents',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'These documents may help in policy issuance',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Customer Image Upload',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          boxTextField(controller: customerImageUpload),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Aadhar Card',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          boxTextField(controller: aadharCard),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Pan Card',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          boxTextField(controller: panCard),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Passport',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          boxTextField(controller: passport),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Voter id Card',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          boxTextField(controller: voterIdCard),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Driving License',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          boxTextField(controller: drivingLicences),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Vehicle Number',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          boxTextField(controller: vehicleNumber),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: defaultButton(function: () {}, text: 'Upload')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget boxTextField({TextEditingController? controller}) => Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            //color: Color.fromRGBO(255, 255, 255, 0.8),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: SizedBox(
            child: TextField(
              controller: controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
              ),
              style: TextStyle(fontSize: 16.0),
              keyboardType: TextInputType.phone,
            ),
          ),
        ),
      );
}
