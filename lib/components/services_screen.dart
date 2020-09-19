import 'package:flutter/material.dart';
import 'package:kanHelp/cards/services_card.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height-110 ,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServicesCard('Cleaning','cleaning'),
              ServicesCard('Cooking','cooking'),
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ServicesCard('Iron Clothes','ironing'),
            ServicesCard('Painting','painting'),
             
            ],
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ServicesCard('Vacuuming','vacuuming'),
            ServicesCard('Plumbing','plumbing'),
             
            ],
          ),
        ]));
  }
}
