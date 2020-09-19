import 'package:flutter/material.dart';
import 'package:kanHelp/designs/backdrop.dart';

class SubScreen extends StatelessWidget {
  static const routeName = '/instructor-list';

  SubScreen();
  @override
  Widget build(BuildContext context) {
     final trade =
        ModalRoute.of(context).settings.arguments as String; 
    return Scaffold(
          body: Container(
         
          child: Column(
            children: [
            Backdrop(size:MediaQuery.of(context).size, image: trade,),
            ],
          )),
    );
  }
}
