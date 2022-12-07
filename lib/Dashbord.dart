import 'package:flutter/material.dart';

class dashbord extends StatefulWidget {
  const dashbord({Key? key}) : super(key: key);

  @override
  State<dashbord> createState() => _dashbordState();
}

class _dashbordState extends State<dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Dashbord"),),
     drawer: Drawer(
       child: ListView(children: [
         UserAccountsDrawerHeader(accountName: Text("ABC"), accountEmail: Text("ABC@123"))
       ],),
     ),

    );
  }
}
