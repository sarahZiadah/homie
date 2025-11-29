import 'package:flutter/material.dart';
import 'package:homie/view/pages/sign_up.dart';
import 'package:homie/view/widget/custom_button.dart';
import 'package:homie/view/widget/labeled_input_box.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
            height: size.height * 0.6,
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
                    "Sign in to continue",
                    style: TextStyle(
                      color: Color(0xff8F8667),
                      fontFamily: "Tajawal",
                      fontSize: 22,
                    ),
                  ),    
                  LabeledInputBox(
                    label: "Phone number",
                    hint: "+963 000 000 000",
                  ),
                  LabeledInputBox(
                    label: "Password",
                    hint: "Enter your password",
                  ),
                  SizedBox(height: 20),
                  CustomButton(name: "Sign in"),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              color: Color(0xff7D7A45),
                              fontSize: 22,
                              fontFamily: "Tajawal",
                            ),
                          ),
                          TextSpan(
                            text: " Sign up",
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