import 'package:flutter/material.dart';
import "screens/screens.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/listview2",
      routes: {
        "/listview1": (BuildContext context) => Listview1(),
        "/listview2": (BuildContext context) => Listview2(),
      },
      theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.red,
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.orange, fontSize: 30),
          )),
      // A widget which will be started on application startup
    );
  }
}
