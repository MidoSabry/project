import 'package:flutter/material.dart';
import 'package:project/Screens/forget_password.dart';
import 'package:project/Screens/home_screen.dart';
import 'package:project/Screens/register_screen.dart';
import 'package:project/Widgets/default_text_field.dart';
import 'package:project/Widgets/navigateAndFinish.dart';
import 'package:project/Widgets/navigateTo.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);
  var formkey = GlobalKey<FormState>();

  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Welcome back!',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue),
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
                        suffix: Icons.info,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: defaultTextFailed(
                        controller: passwordcontroller,
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        child: Text(
                          'ForgetPassword?',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                        onTap: () {
                          navigateTo(context, ForgetPassword());
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: MediaQuery.of(context).size.height * .06,
                      child: ElevatedButton(
                        child: Text(
                          "Login",
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
                              navigateAndFinish(context, RegisterScreen());
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      // margin: const EdgeInsets.only(left: 30.0, top: 20),
                      child: Image(
                        image: AssetImage(
                          'assets/images/fing.png',
                        ),
                        width: 80,
                        height: 80,
                      ),
                    ),
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
