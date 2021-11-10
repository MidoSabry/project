import 'package:flutter/material.dart';
import 'package:project/Widgets/box_text_field.dart';
import 'package:project/Widgets/default_button.dart';
import 'package:project/Widgets/default_text_field.dart';

class CustomerID extends StatelessWidget {
  //const AddDocuments({Key? key}) : super(key: key);
  var customerName = TextEditingController();
  var customerAddress = TextEditingController();
  var aadharCardNumber = TextEditingController();
  var panCardNumber = TextEditingController();
  var passportNumber = TextEditingController();
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
                onTap: () {},
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
                    'Customer ID Generated',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customerIDData(
                          labelName: 'Customer Name', controller: customerName),
                      SizedBox(
                        height: 30,
                      ),
                      customerIDData(
                          labelName: 'Customer Address',
                          controller: customerAddress),
                      SizedBox(
                        height: 30,
                      ),
                      customerIDData(
                          labelName: 'Aadhar Card Number',
                          controller: aadharCardNumber),
                      SizedBox(
                        height: 30,
                      ),
                      customerIDData(
                          labelName: 'Pan Card Number',
                          controller: panCardNumber),
                      SizedBox(
                        height: 30,
                      ),
                      customerIDData(
                          labelName: 'Passport Number',
                          controller: passportNumber),
                      SizedBox(
                        height: 30,
                      ),
                      customerIDData(
                          labelName: 'Driving License Number',
                          controller: drivingLicences),
                      SizedBox(
                        height: 30,
                      ),
                      customerIDData(
                          labelName: 'Vehicle Number',
                          controller: vehicleNumber),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Center(
                      child:
                          defaultButton(function: () {}, text: 'Save details')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customerIDData(
          {String? labelName, TextEditingController? controller}) =>
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelName.toString(),
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: controller,

              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return validatemsg;
              //   }
              //   return null;
              // },
              decoration: InputDecoration(
                hintText: labelName,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            )
          ],
        ),
      );
}
