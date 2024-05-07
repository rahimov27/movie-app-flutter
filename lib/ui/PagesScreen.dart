import 'package:flutter/material.dart';
import 'package:movie_app/ui/HomePage.dart';
import 'package:movie_app/ui/SecondPage.dart';
import 'package:movie_app/ui/SettingsPage.dart';
import 'package:movie_app/ui/ThirdPage.dart';

class PagesScreen extends StatefulWidget {
  const PagesScreen({Key? key}) : super(key: key);

  @override
  State<PagesScreen> createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {
  List<Widget> widgets = [
    const HomePage(),
    const SecondPage(),
    const ThirdPage(),
    const SettingsPage(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: BottomAppBar(
          color: Color(0xFF1B1E25),
          child: Nav(currentIndex: currentIndex),
          elevation: 0,
        ),
      ),
    );
  }
}

class Nav extends StatelessWidget {
  final int currentIndex;

  const Nav({
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      decoration: BoxDecoration(
        color: Color(0xFF1B1E25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
            icon: Icons.home,
            onPressed: () {},
            index: 0,
            currentIndex: currentIndex,
          ),
          NavItem(
            icon: Icons.search,
            onPressed: () {},
            index: 1,
            currentIndex: currentIndex,
          ),
          NavItem(
            icon: Icons.notifications,
            onPressed: () {},
            index: 2,
            currentIndex: currentIndex,
          ),
          NavItem(
            icon: Icons.account_circle,
            onPressed: () {},
            index: 3,
            currentIndex: currentIndex,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final int index;
  final int currentIndex;

  const NavItem({
    required this.icon,
    required this.onPressed,
    required this.index,
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSelected = index == currentIndex;
    final color = isSelected ? Colors.blue : Colors.white;

    return IconButton(
      onPressed: () {
        _updateIndex(context, index);
      },
      icon: Icon(
        icon,
        size: 24,
        color: color,
      ),
    );
  }

  void _updateIndex(BuildContext context, int newIndex) {
    final state = context.findAncestorStateOfType<_PagesScreenState>();
    if (state != null) {
      state.setState(() {
        state.currentIndex = newIndex;
      });
    }
  }
}
