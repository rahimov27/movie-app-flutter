import 'package:flutter/material.dart';
import 'package:movie_app/providers/MovieProvider.dart';
import 'package:movie_app/welcome_pages/ScreenOne.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: const MaterialApp(
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenOne();
  }
}
