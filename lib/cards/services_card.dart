import 'package:flutter/material.dart';
import 'package:kanHelp/screens/sub_screen.dart';

class ServicesCard extends StatelessWidget {
  final String name;
  // String id;
  final String image;

  ServicesCard(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.of(context).pushNamed(SubScreen.routeName,
              arguments: image);
        print(name);
      },
      child: Card(
        // borderOnForeground: false,
        elevation: 0,
        margin: EdgeInsets.all(15),
        // color: Colors.lightBlue[50],
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.blue,
              width: 1,
            ),
          ),
          height: MediaQuery.of(context).size.height / 4.7,
          width: MediaQuery.of(context).size.width / 2.5,
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/icons/$image.png',
              height: 90,
              fit: BoxFit.cover,
            ),
            Text(name)
          ]),
        ),
      ),
    );
  }
}
