import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:homie/view/pages/sign_in.dart';
import 'package:homie/view/pages/sign_up.dart';
import 'package:homie/view/pages/home_page.dart';


void main() {
  runApp(ProviderScope(child: const Homie()));
}

class Homie extends StatelessWidget {
  const Homie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignUp.id: (context) => SignUp()
      },
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}