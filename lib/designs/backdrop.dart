import 'package:flutter/material.dart';

class Backdrop extends StatelessWidget {
  const Backdrop({
    Key key,
    @required this.size,
    @required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.32,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
                image: AssetImage(
                  'assets/images/$image.jpg',
                ),
              ),
            ),
            child: Container(
                alignment: Alignment.center,
                height: 40,
                width: size.width / 2,
                //color: Colors.black54,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  image.toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 7),
                )),
          ),

          // Back Button
          SafeArea(
            child: BackButton(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
