import 'package:flutter/material.dart';
import 'package:kanHelp/models/employees.dart';

class SelectedItemWidget extends StatelessWidget {
  const SelectedItemWidget(this.selectedItem,);

  final Employees selectedItem;
  //final VoidCallback deleteSelectedItem;

  @override
  Widget build(BuildContext context) {
    String image = selectedItem.image;
    return Card(
      elevation: 12,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 4,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset('assets/images/$image',
                      height: 140,
                      width: 140,
                      // width: 120,
                      fit: BoxFit.cover),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selectedItem.username,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text('Rating:'+selectedItem.score.toString()),
                          Text('Trade:'+selectedItem.trade.toString()),
                          Text('Location:'+selectedItem.location.toString()),
                          Text('Mobile:'+selectedItem.number.toString()),
                        ]),
                  ),
                ]),
              ),
            ),
         
         
          ],
        ),
      ),
    );
  }
}
