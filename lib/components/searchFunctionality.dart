import 'package:flutter/material.dart';
import 'package:kanHelp/components/noItems.dart';
import 'package:kanHelp/components/popupListItem.dart';
import 'package:kanHelp/components/searchTextField.dart';
import 'package:kanHelp/components/selectedItem.dart';
import 'package:kanHelp/models/employees.dart';
import 'package:search_widget/search_widget.dart';

class SearchFunction extends StatefulWidget {
  @override
  _SearchFunctionState createState() => _SearchFunctionState();
}

class _SearchFunctionState extends State<SearchFunction> {
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
        "Joe Frazier", 5.0, '7454845562', 'Ironing', 'Bangalore', '7.jpg'),
  ];

  Employees _selectedItem;
  @override
  Widget build(BuildContext context) {
    return Column(
          children:[ SearchWidget<Employees>(
                dataList: list,
                hideSearchBoxWhenItemSelected: false,
                listContainerHeight: MediaQuery.of(context).size.height / 4,
                queryBuilder: (query, list) {
                  return list
                      .where((item) => item.username
                          .toLowerCase()
                          .contains(query.toLowerCase()))
                      .toList();
                },
                popupListItemBuilder: (item) {
                  return PopupListItemWidget(item);
                },
                selectedItemBuilder: (selectedItem, deleteSelectedItem) {
                  return SelectedItemWidget(selectedItem);
                },
                // widget customization
                noItemsFoundWidget: NoItemsFound(),
                textFieldBuilder: (controller, focusNode) {
                  return MyTextField(controller, focusNode);
                },
                onItemSelected: (item) {
                  setState(() {
                    _selectedItem = item;
                  });
                },
              ),
                const SizedBox(
              height: 32,
            ),
            _selectedItem == null ? Text("No employee selected") : SizedBox(),]
    );
  }
}