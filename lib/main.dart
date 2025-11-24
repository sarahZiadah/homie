import 'package:flutter/material.dart';
import 'package:homie/view/pages/sign_up.dart';

void main() {
  runApp(const Homie());
}

class Homie extends StatelessWidget {
  const Homie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}