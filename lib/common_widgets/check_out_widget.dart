import 'package:flutter/material.dart';

class CheckOutWidgets extends StatelessWidget {
  const CheckOutWidgets(
      {super.key,
      required this.fieldName,
      required this.hintTextField,
      required this.size});

  final String fieldName;
  final String hintTextField;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldName,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: size,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: hintTextField,
              hintStyle: TextStyle(
                fontSize: 12,
                color: Color(0xffB2B5BB),
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
      ],
    );
  }
}
