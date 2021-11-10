import 'package:flutter/material.dart';
import 'package:project/Widgets/default_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  searchDataWidget(labelName: 'Name'),
                  SizedBox(
                    height: 30,
                  ),
                  searchDataWidget(labelName: 'Mobile Number'),
                  SizedBox(
                    height: 30,
                  ),
                  searchDataWidget(labelName: 'Aadhar Number'),
                  SizedBox(
                    height: 30,
                  ),
                  searchDataWidget(labelName: 'Pan Card Number'),
                  SizedBox(
                    height: 30,
                  ),
                  searchDataWidget(labelName: 'Email'),
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                      child: defaultButton(
                          function: () {}, text: 'Search', radius: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchDataWidget(
          {String? labelName, TextEditingController? controller}) =>
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelName.toString(),
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 40,
              child: TextFormField(
                controller: controller,

                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return validatemsg;
                //   }
                //   return null;
                // },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
