import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/ui/PagesScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  String text = '';
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    initUser();
    super.initState();
  }

  void initUser() async {
    final prefs = await SharedPreferences.getInstance();
    text = prefs.getString("username") ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/back-poster.jpeg",
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
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: "Username",
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
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          const Color(0xff54A8E5),
                        ),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setString('user', nameController.text);
                        text = prefs.getString("user") ?? '';
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PagesScreen()));
                      },
                      child: const Text(
                        "Enter",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    text,
                    style: const TextStyle(color: Colors.white, fontSize: 40),
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
