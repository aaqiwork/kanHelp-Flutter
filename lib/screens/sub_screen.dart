import 'package:flutter/material.dart';
import 'package:kanHelp/components/noItems.dart';
import 'package:kanHelp/components/popupListItem.dart';
import 'package:kanHelp/components/searchFunctionality.dart';
import 'package:kanHelp/components/searchTextField.dart';
import 'package:kanHelp/components/selectedItem.dart';
import 'package:kanHelp/designs/backdrop.dart';
import 'package:kanHelp/models/employees.dart';
import 'package:kanHelp/screens/search_screen.dart';
import 'package:search_widget/search_widget.dart';

class SubScreen extends StatefulWidget {
  static const routeName = '/instructor-list';

  SubScreen();

  @override
  _SubScreenState createState() => _SubScreenState();
}

class _SubScreenState extends State<SubScreen> {
  Employees _selectedItem;
 List<Employees> list = <Employees>[
    Employees(
        "Amanda Seyfried", 5, '152453356', 'Cooking', 'Bangalore', '1.jpg'),
    Employees("Julie Ann", 4.5, '452123256', 'Cleaning', 'Bangalore', '2.jpg'),
    Employees(
        "Matthew Perry", 4.7, '754855231', 'Vacuuming', 'Bangalore', '3.jpg'),
    Employees(
        "James Franco", 4.7, '9578451235', 'Plumbing', 'Bangalore', '4.jpg'),
    Employees(
        "Courtney May", 4.3, '7451514244', 'Cooking', 'Bangalore', '5.jpg'),
    Employees(
        "Mariam Abdullah", 4.1, '1524533564', 'Cooking', 'Bangalore', '6.jpg'),
    Employees(
        "Joe Frazier", 5.0, '7454845562', 'Electrical', 'Bangalore', '7.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
     final trade =
        ModalRoute.of(context).settings.arguments as String; 
    return Scaffold(
          body: SingleChildScrollView(
                      child: Container(
         height:MediaQuery.of(context).size.height,
            child: Column(
              children: [
              Backdrop(size:MediaQuery.of(context).size, image: trade,),
              Expanded(child: SearchFunction()),
              ],
            )),
          ),
    );
  }
}
