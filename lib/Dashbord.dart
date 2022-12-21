import 'package:account_manager/Dbhelper.dart';
import 'package:account_manager/insert.dart';
import 'package:account_manager/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class dashbord extends StatefulWidget {
  const dashbord({Key? key}) : super(key: key);

  @override
  State<dashbord> createState() => _dashbordState();
}

class _dashbordState extends State<dashbord> {
  List<Map<String, Object?>> l = [];
  Database? db;
  bool status = false;
  TextEditingController tname = TextEditingController();

  @override
  void initState() {
    super.initState();
    getalldata();
  }

  getalldata() async {
    // Get the records
    db = await Dbhelper().createDatabase();
    String qry = "SELECT * FROM Test";
    List<Map<String, Object?>> l1 = await db!.rawQuery(qry);
    l.addAll(l1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Dashbord"),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Save as PDF")),
                  PopupMenuItem(child: Text("Save as Excel")),
                ],
              )
            ]),
        drawer: Drawer(
            child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  mydrawer(),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.backup),
              title: Text("Backup"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.restore),
              title: Text("Restore"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.change_circle),
              title: Text("Change Currency"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.phone_android_rounded),
              title: Text("Change Security Question"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share the App"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star_rate),
              title: Text("Rate the App"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.more_vert),
              title: Text("More App"),
              onTap: () {},
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SimpleDialog(title: Text("Add New Account",),
                  children: [
                    /*AppBar(
                      title: Text("Add New Account"),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: tname,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Account Name"),
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
                );
              },
            ));
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: l.length,
          itemBuilder: (context, index) {
            Map m = l[index];
            return ListTile(
              leading: Text("${m['name']}"),

            );
          },
        ));
  }
}
