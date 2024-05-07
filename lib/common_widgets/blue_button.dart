import 'package:flutter/material.dart';
import 'package:movie_app/ui/HomePage.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({super.key, required this.buttonText, required this.myFunc});

  final String buttonText;
  final Function() myFunc;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(const Color(0xff54A8E5)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12.0), // Set the border radius
            ),
          ),
        ),
        onPressed: myFunc,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
