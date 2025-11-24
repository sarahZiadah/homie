import 'package:flutter/material.dart';

class LabeledInputBox extends StatelessWidget {
  final String label;
  final String hint;

  const LabeledInputBox({super.key, required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          label,
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
          alignment: Alignment.centerLeft,
          child: TextField(
            style: TextStyle(
              color: Color(0xff444326),
              fontFamily: "Tajawal",
              fontSize: 20,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                color: Color(0xff8F8667),
                fontFamily: "Tajawal",
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
