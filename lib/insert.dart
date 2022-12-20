import 'package:account_manager/Dashbord.dart';
import 'package:account_manager/Dbhelper.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class insert extends StatefulWidget {
  const insert({Key? key}) : super(key: key);

  @override
  State<insert> createState() => _insertState();
}

class _insertState extends State<insert> {
  TextEditingController tname = TextEditingController();
  Database? db;


  @override
  void initState() {
    super.initState();
    Dbhelper().createDatabase().then((value) {
      db=value;
    });
  }

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
              controller: tname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Account Name"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return dashbord();
                        },
                      ));
                    },
                    child: Text("Cancel")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () async {
                      String name = tname.text;

                      String qry ="insert into Test(name) values('$name')";
                      int a=await db!.rawInsert(qry);
                      print(a);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return dashbord();
                      },));
                    },
                    child: Text("Save")),
              )
            ],
          )
        ],
      ),
    );
  }
}
