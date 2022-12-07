demo.dart
1    import 'package:flutter/material.dart';
2
3    class demo extends StatefulWidget {
  4      const demo({Key? key}) : super(key: key);
  5
  6      @override
  7      State<demo> createState() => _demoState();
  8    }
9
10   class _demoState extends State<demo> {
  11
  12     int cnt =0;
  13
  14     List<Widget> l = [first(),second(),third()];
  15
  16     @override
  17     Widget build(BuildContext context) {
  18       return Scaffold(
  19         appBar: AppBar(),
  20         bottomNavigationBar: BottomNavigationBar(currentIndex: cnt,onTap: (value) {
  21           setState(() {
  22             cnt = value;
  23           });
  24
  25         },items: [
  26           BottomNavigationBarItem(icon: Icon(Icons.add_call),label: "First"),
  27           BottomNavigationBarItem(icon: Icon(Icons.add_call),label: "Second"),
  28           BottomNavigationBarItem(icon: Icon(Icons.add_call),label: "Third"),
  29         ]),
  30         drawer: Drawer(
  31           child: ListView(
  32             children: [
  33               UserAccountsDrawerHeader(
  34                 otherAccountsPictures: [
  35                   CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),),
  36                   CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),),
  37                   CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),),
  38                 ],
  39                 currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),),
  40                   currentAccountPictureSize: Size(80, 80),
  41                   accountName: Text("ABC"), accountEmail: Text("abc@gmail.com")),
  42               ListTile(
  43                 leading: Icon(Icons.account_circle_outlined),
  44                 title: Text("First"),
  45                 trailing: Icon(Icons.arrow_forward_ios),
  46                 onTap: () {
  47                   Navigator.pop(context);
  48                   setState(() {
  49                     cnt=0;
  50                   });
  51
  52                 },
  53               ),
  54               ListTile(
  55                 leading: Icon(Icons.accessibility),
  56                 title: Text("Second"),
  57                 trailing: Icon(Icons.arrow_forward_ios),
  58                 onTap: () {
  59                   Navigator.pop(context);
  60                   setState(() {
  61                     cnt=1;
  62                   });
  63                 },
  64               ),
  65               ListTile(
  66                 leading: Icon(Icons.add_call),
  67                 title: Text("Third"),
  68                 trailing: Icon(Icons.arrow_forward_ios),
  69                 onTap: () {
  70                   Navigator.pop(context);
  71                   setState(() {
  72                     cnt=2;
  73                   });
  74                 },
  75               )
  76             ],
  77           ),
  78         ),
  79         body: l[cnt],
  80       );
  81     }
  82   }
83
84   class first extends StatefulWidget {
  85     const first({Key? key}) : super(key: key);
  86
  87     @override
  88     State<first> createState() => _firstState();
  89   }
90
91   class _firstState extends State<first> {
  92     @override
  93     Widget build(BuildContext context) {
  94       return Container(
  95         color: Colors.red,
  96       );
  97     }
  98   }
99
100  class second extends StatefulWidget {
  101    const second({Key? key}) : super(key: key);
  102
  103    @override
  104    State<second> createState() => _secondState();
  105  }
106
107  class _secondState extends State<second> {
  108    @override
  109    Widget build(BuildContext context) {
  110      return Container(
  111        color: Colors.yellow,
  112      );
  113    }
  114  }
115
116  class third extends StatefulWidget {
  117    const third({Key? key}) : super(key: key);
  118
  119    @override
  120    State<third> createState() => _thirdState();
  121  }
122
123  class _thirdState extends State<third> {
  124    @override
  125    Widget build(BuildContext context) {
  126      return Container(
  127        color: Colors.green,
  );
  }
}