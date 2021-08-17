// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import 'package:flutter_assignment/TextWidget.dart';
import 'package:flutter_assignment/RaisedButtonWidget.dart';
void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  MyHomePage();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   String _text="How are Yo Dear" ;
int _countClick=0;
  void _ChangeText() {
    setState(() {
      _countClick=_countClick+1;
       _text="Welcome The Click No : "+_countClick.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome First Flutter '),
      ),
      body: Center(
        child: Column(
          children:[
            TextWidget(text: _text),
            RaisedButtonWidget(_ChangeText),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    )
    );
  }
}
