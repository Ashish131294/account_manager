import 'package:account_manager/Dashbord.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

void main() {
  runApp(MaterialApp(
    home: dashbord(),
    debugShowCheckedModeBanner: false,
  ));
}

class pass extends StatefulWidget {
  const pass({Key? key}) : super(key: key);

  @override
  State<pass> createState() => _passState();
}

class _passState extends State<pass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("myimage/1.jpg"), fit: BoxFit.cover)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150, left: 110),
                      child: Text(
                        "Account Manager",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 185, left: 150),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "FORGOT PASSWORD?",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250, left: 155),
                    child: TextButton(
                        onPressed: () {
                          screenLock(
                            context: context,
                            correctString: '1234',
                          );
                        },
                        child: Text(
                          "CREATE PASSWORD",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ],
              ),
            )));
  }
}
