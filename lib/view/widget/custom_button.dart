import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.name});
  String? name;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: size.width * 0.35,
        height: size.height * 0.06,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff444326),
            elevation: 10,
          ),
          child: Text(
            name!,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Tajawal",
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
