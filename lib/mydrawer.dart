import 'package:flutter/material.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({Key? key}) : super(key: key);

  @override
  State<mydrawer> createState() => _mydrawerState();
}

class _mydrawerState extends State<mydrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.indigo[600],
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage("myimage/22.jpg"))),
          ),
          Text("Account Manager",style: TextStyle(color: Colors.white)),
        ],
      ),
    ),
    );

  }
}
