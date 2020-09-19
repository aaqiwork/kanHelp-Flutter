import 'package:flutter/material.dart';
import 'package:kanHelp/models/employees.dart';
class PopupListItemWidget extends StatelessWidget {
  const PopupListItemWidget(this.item);

  final Employees item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        item.username,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}