import 'package:flutter/material.dart';
import 'package:project/Screens/login_screen.dart';
import 'package:project/Widgets/default_text_field.dart';
import 'package:project/Widgets/navigateAndFinish.dart';
import 'package:project/Widgets/navigateTo.dart';

import 'home_screen.dart';

class RegisterScreen extends StatelessWidget {
  //const RegisterScreen({ Key? key }) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            padding: EdgeInsetsDirectional.only(
                top: 60, bottom: 15, start: 15, end: 15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          'Fill the details & create your account',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: defaultTextFailed(
                                controller: nameController,
                                label: 'Name',
                                prefix: Icons.person_outline,
                                type: TextInputType.name,
                                validatemsg: ' Name is required',
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
                              width: MediaQuery.of(context).size.width,
                              child: defaultTextFailed(
                                controller: emailController,
                                label: 'info@gmail.com',
                                prefix: Icons.email_outlined,
                                type: TextInputType.emailAddress,
                                validatemsg: 'email is required',
                                suffix: Icons.info,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: defaultTextFailed(
                                controller: passwordController,
                                label: 'Password',
                                prefix: Icons.lock_outlined,
                                // isPassword: ShopCubit.get(context).isPassword,
                                // suffixpressed: () {
                                //   ShopCubit.get(context).changePasswordVisibility();
                                // },
                                suffix: Icons.visibility_off_outlined,
                                type: TextInputType.visiblePassword,
                                validatemsg: 'password is required',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        height: MediaQuery.of(context).size.height * .06,
                        child: ElevatedButton(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          onPressed: () {
                            navigateAndFinish(context, HomeScreen());
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
                        height: 60,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'don\'t have an account?',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              child: Text(
                                'Signup',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontStyle: FontStyle.italic),
                              ),
                              onTap: () {
                                navigateAndFinish(context, LoginScreen());
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
