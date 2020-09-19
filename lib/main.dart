import 'package:flutter/material.dart';
import 'package:kanHelp/components/bottomNav.dart';
import 'package:kanHelp/screens/sub_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BottomNavScreen(0),
        routes: {
          SubScreen.routeName: (ctx) => SubScreen(),
        });
  }
}
