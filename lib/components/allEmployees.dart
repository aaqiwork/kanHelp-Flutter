import 'package:flutter/material.dart';
import 'package:kanHelp/components/selectedItem.dart';
import 'package:kanHelp/models/employees.dart';

class AllEmployees extends StatefulWidget {
  @override
  _AllEmployeesState createState() => _AllEmployeesState();
}

class _AllEmployeesState extends State<AllEmployees> {
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
    return ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return SelectedItemWidget(list[index]);
        });
  }
}
