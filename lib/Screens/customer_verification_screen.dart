import 'package:flutter/material.dart';

class CustomerVerification extends StatelessWidget {
  const CustomerVerification({Key? key}) : super(key: key);

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
                  Icons.arrow_back,
                  color: Colors.black,
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer Verification',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 160,
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Aadhaar',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 120,
                            height: 40.0,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Verified',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 160,
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Pan',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 120,
                            height: 40.0,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Unverified',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 160,
                            child: TextFormField(
                              decoration: InputDecoration(
                                label: Text(
                                  'Driving Licenses',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 120,
                            height: 40.0,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Verified',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
