import 'package:flutter/material.dart';
import 'package:project/Widgets/default_text_field.dart';
import 'package:project/Widgets/navigateTo.dart';

import 'otp_verification_screen.dart';

class ForgetPassword extends StatelessWidget {
  // const ForgetPassword({ Key? key }) : super(key: key);
  var formkey = GlobalKey<FormState>();

  var emailcontroller = TextEditingController();

  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(colors: [Colors.red, Colors.amber])),
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Forge Password?',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'Enter the email address asociated with your',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'account',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // margin: const EdgeInsets.only(left: 30.0, top: 20),
                      child: Image(
                        image: AssetImage(
                          'assets/images/login.png',
                        ),
                        width: 250,
                        height: 180,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: defaultTextFailed(
                        controller: emailcontroller,
                        label: 'info@gmail.com',
                        prefix: Icons.email_outlined,
                        type: TextInputType.emailAddress,
                        validatemsg: 'email is required',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: defaultTextFailed(
                        controller: phoneController,
                        label: 'Phone',
                        prefix: Icons.phone,
                        type: TextInputType.phone,
                        validatemsg: ' phone is required',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'ForgetPassword?',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      height: MediaQuery.of(context).size.height * .07,
                      child: ElevatedButton(
                        child: Text(
                          "Resst Password",
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        onPressed: () {
                          navigateTo(context, OtpVerification());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextButton(
                        child: Text(
                          'Go Back',
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
