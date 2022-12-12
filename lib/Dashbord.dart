import 'package:account_manager/insert.dart';
import 'package:account_manager/mydrawer.dart';
import 'package:flutter/material.dart';

class dashbord extends StatefulWidget {
  const dashbord({Key? key}) : super(key: key);

  @override
  State<dashbord> createState() => _dashbordState();
}

class _dashbordState extends State<dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashbord"),
          /*actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                               //useSafeArea: true,
                  //barrierColor: Colors.transparent,
                  builder: (context) {
                    return Column(
                      children: [
                        TextButton(
                            onPressed: () {}, child: Text("Save as PDF")),
                        TextButton(
                            onPressed: () {}, child: Text("Save as Excel")),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.more_vert))
        ],*/
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
              return insert();
            },
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
