import 'package:flutter/material.dart';
import 'package:movie_app/ui/HomePage.dart';
import 'package:movie_app/ui/SecondPage.dart';
import 'package:movie_app/ui/ThirdPage.dart';

class PagesScreen extends StatefulWidget {
  const PagesScreen({super.key});

  @override
  State<PagesScreen> createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {
  List<Widget> widgets = [
    const HomePage(),
    const SecondPage(),
    const ThirdPage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
      ),
    );
  }
}
