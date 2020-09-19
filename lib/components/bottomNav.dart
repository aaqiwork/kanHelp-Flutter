import 'package:flutter/material.dart';
import 'package:kanHelp/screens/home_screen.dart';
import 'package:kanHelp/screens/search_screen.dart';

//import 'package:flutter_covid_dashboard_ui/screens/screens.dart';

class BottomNavScreen extends StatefulWidget {
  int currentIndex;
  BottomNavScreen(this.currentIndex);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  //String _userType = '';
//  String userName;
//  String userId;

  final List _screens = [
    HomeScreen(),
   SearchScreen(),
    Scaffold(
      appBar: AppBar(title: Text('Screen2')),
    ),
    Scaffold(
      appBar: AppBar(title: Text('Screen3')),
    ),
  ];

  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[widget.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => widget.currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white12,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 0.0,
        items: [
          Icons.home,
          Icons.search,
          Icons.question_answer,
          Icons.account_circle,
        ]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    title: Text(''),
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: widget.currentIndex == key
                            ? Colors.blue[300]
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Icon(
                        value,
                        color: widget.currentIndex == key
                            ? Colors.white
                            : Colors.black26,
                      ),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}
