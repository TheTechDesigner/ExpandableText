import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Expandable Text';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpandableText(
                "The Tech Designer",
                style: TextStyle(
                  fontSize: 22.0,
                ),
                collapseText: 'Show less',
                expandText: 'Show more',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpandableText(
                "Welcome to you 'The Tech Designer' YouTube Channel. \n It's All About Designing. \n 1. Flutter Widgets, Customize Widget, App Page, App UI. \n 2. Ionic Component. \n 3. Android.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
                collapseText: 'Show less',
                expandText: 'Show more',
                maxLines: 1,
                linkColor: Color(0xFFC41A3B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
