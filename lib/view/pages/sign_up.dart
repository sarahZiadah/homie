import 'package:flutter/material.dart';
import 'package:homie/view/widget/labeled_input_box.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.07,
              ),
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
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    child: Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xffCECCC9),
                        child: Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),
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
                  LabeledInputBox(label: "Full name", hint: "Enter your full name"),
                  LabeledInputBox(label: "Birthday", hint: "xxxx/xx/xx"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
