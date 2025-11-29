import 'package:flutter/material.dart';
import 'package:homie/view/widget/custom_button.dart';
import 'package:homie/view/widget/labeled_input_box.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static final id = "SignUp";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: size.height * 0.8,
            width: size.width * 0.85,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(200),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
              child: ListView(
                children: [
                  Text(
                    "Welcome to Homie",
                    style: TextStyle(
                      color: Color(0xff444326),
                      fontFamily: "Tajawal",
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Sign up to continue",
                    style: TextStyle(
                      color: Color(0xff8F8667),
                      fontFamily: "Tajawal",
                      fontSize: 22,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    child: Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Color(0xffCECCC9),
                            child: Icon(
                              Icons.person,
                              size: 70,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -5,
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: Color(0xff444326),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Profile picture",
                      style: TextStyle(
                        color: Color(0xff8F8667),
                        fontFamily: "Tajawal",
                        fontSize: 22,
                      ),
                    ),
                  ),
                  LabeledInputBox(
                    label: "Full name",
                    hint: "Enter your full name",
                  ),
                  LabeledInputBox(
                    label: "Phone number",
                    hint: "+963 000 000 000",
                  ),
                  LabeledInputBox(label: "Birthday", hint: "xxxx/xx/xx"),
                  SizedBox(height: 10),
                  Text(
                    "ID picture",
                    style: TextStyle(
                      color: Color(0xff444326),
                      fontFamily: "Tajawal",
                      fontSize: 22,
                    ),
                  ),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Color(0xff7D7A45), width: 3),
                      color: Colors.white.withAlpha(300),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ),
                  LabeledInputBox(
                    label: "Password",
                    hint: "Enter your password",
                  ),
                  LabeledInputBox(
                    label: "Confirm password",
                    hint: "Enter your password again",
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(name: "as Renter"),
                      CustomButton(name: "as Lanlord"),
                    ],
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Already have an account?",
                            style: TextStyle(
                              color: Color(0xff7D7A45),
                              fontSize: 22,
                              fontFamily: "Tajawal",
                            ),
                          ),
                          TextSpan(
                            text: " Sign in",
                            style: TextStyle(
                              color: Color(0xff444326),
                              fontSize: 22,
                              fontFamily: "Tajawal",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
