import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/common_widgets/blue_button.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/cinema-poster.jpeg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.black.withOpacity(0.70),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            height: 44.0 + MediaQuery.of(context).padding.bottom,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.montserrat()
                        .copyWith(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const BlueButton(
                    buttonText: "Enter",
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
