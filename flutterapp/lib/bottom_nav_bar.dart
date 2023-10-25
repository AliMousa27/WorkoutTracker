import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int bottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) => onBottomTapped(value),
          currentIndex: bottomIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Workouts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Logs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, size: 30),
              label: 'Start',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center_rounded),
              label: 'Exercises',
            ),
          ],
        ),
      ),
    );
  }

  void onBottomTapped(int newIndex) {
    setState(() {
      bottomIndex = newIndex;
      print('Bottom index changed to $newIndex');
    });
  }
}
