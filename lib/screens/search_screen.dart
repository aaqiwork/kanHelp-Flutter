import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kanHelp/components/allEmployees.dart';
import 'package:kanHelp/components/noItems.dart';
import 'package:kanHelp/components/popupListItem.dart';
import 'package:kanHelp/components/searchTextField.dart';
import 'package:kanHelp/components/selectedItem.dart';
import 'package:kanHelp/models/employees.dart';
import 'package:search_widget/search_widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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

  Employees _selectedItem;

  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Search Widget"),
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Container(
          height: MediaQuery.of(context).size.height * 2,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 16,
              ),
              SearchWidget<Employees>(
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
              _selectedItem == null
                  ?  Expanded(child: AllEmployees())
                    
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
