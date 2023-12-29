import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today_outlined),
            label: 'today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: 'user',
          ),
        ],
      );
}
