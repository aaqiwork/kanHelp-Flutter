import 'package:flutter/material.dart';
import 'package:kanHelp/components/services_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:40),
              Container(
                  child: Text('Choose your service',
                      style: TextStyle(fontSize: 25))),
              ServicesScreen()
            ],
          ),
      ),
    );
  }
}
