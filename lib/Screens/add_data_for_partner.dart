import 'package:flutter/material.dart';

class AddPartnerData extends StatelessWidget {
  // const PartnerViewData({Key? key}) : super(key: key);
  var partnerId = TextEditingController();
  var customerImage = TextEditingController();
  var customerName = TextEditingController();
  var mobileNo = TextEditingController();
  var emailId = TextEditingController();
  var address = TextEditingController();
  var feedBack = TextEditingController();

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
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    'Partner Id (upload)',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  boxTextField(controller: partnerId)
                ],
              ),
              Row(
                children: [
                  Text(
                    'Customer Image',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  boxTextFieldForImage(controller: customerImage)
                ],
              ),
              Row(
                children: [
                  Text(
                    'Customer Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  boxTextField(controller: customerName)
                ],
              ),
              Row(
                children: [
                  Text(
                    'Mobile No.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  boxTextField(controller: mobileNo)
                ],
              ),
              Row(
                children: [
                  Text(
                    'Email ID',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  boxTextField(controller: emailId)
                ],
              ),
              Row(
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  boxTextField(controller: address)
                ],
              ),
              Row(
                children: [
                  Text(
                    'Feedback',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  boxTextField(controller: feedBack)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget boxTextField({TextEditingController? controller}) => Container(
        height: 30,
        width: 120,
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

  Widget boxTextFieldForImage({TextEditingController? controller}) => Container(
        width: 120,
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
