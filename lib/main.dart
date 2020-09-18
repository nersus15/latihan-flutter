import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageStatefull(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.blueAccent,
        child: new Container(
          color: Colors.lightGreen,
          margin: const EdgeInsets.all(50.0),
        ),
      ),
    );
  }
}

class PageStatefull extends StatefulWidget {
  @override
  _PageStatefullState createState() => _PageStatefullState();
}

class _PageStatefullState extends State<PageStatefull> {
  String text = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    text = 'Init State';
  }

  void gantiText() {
    setState(() {
      text = 'Change State Value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new MaterialButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            child: new Text(text),
            onPressed: gantiText),
      ),
    );
  }
}
