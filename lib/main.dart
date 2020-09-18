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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  void buttonPressed(BuildContext context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Column(
          children: <Widget>[
            new MaterialButton(
              onPressed: () {
                buttonPressed(context, PagePertama());
              },
              color: Colors.lightBlue[200],
              textColor: Colors.white,
              child: Text('Page Pertama'),
            ),
            new MaterialButton(
              onPressed: () {
                buttonPressed(context, PageKedua());
              },
              color: Colors.lightBlue[200],
              textColor: Colors.white,
              child: Text('Page Kedua'),
            ),
            new MaterialButton(
              onPressed: () {
                buttonPressed(context, PageKetiga());
              },
              color: Colors.lightBlue[200],
              textColor: Colors.white,
              child: Text('Page Ketiga'),
            )
          ],
        ),
      ),
    );
  }
}

class PagePertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Ini Page Pertama'),
      ),
    );
  }
}

class PageKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Ini Page Kedua'),
      ),
    );
  }
}

class PageKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Ini Page Ketiga'),
      ),
    );
  }
}
