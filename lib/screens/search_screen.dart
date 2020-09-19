import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    Employees("Flutter", 54),
    Employees("Flutter", 54),
    Employees("React", 22.5),
    Employees("Ionic", 24.7),
    Employees("Xamarin", 22.1),
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
                    return SelectedItemWidget(selectedItem, deleteSelectedItem);
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
            _selectedItem == null ? 
            Text(
              "No item selected"):
              SizedBox(),
          ],
        ),
      ),
     
    );
  }
}
