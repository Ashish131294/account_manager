import 'package:account_manager/Dashbord.dart';
import 'package:flutter/material.dart';

class insert extends StatefulWidget {
  const insert({Key? key}) : super(key: key);

  @override
  State<insert> createState() => _insertState();
}

class _insertState extends State<insert> {
  TextEditingController t1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Account"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: t1,
              decoration: InputDecoration(border: OutlineInputBorder(),
              labelText: "Account Name"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return dashbord();
                },));


              }, child: Text("Cancel")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {

              }, child: Text("Save")),
            )
          ],)

        ],
      ),
    );
  }
}
