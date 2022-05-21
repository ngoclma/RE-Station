import 'package:flutter/material.dart';
import 'package:newapp/screens/achievement.dart';
import 'package:newapp/screens/start.dart';
import 'package:newapp/screens/attendance.dart';
import 'package:newapp/screens/todolist.dart';
import 'package:newapp/screens/extratask.dart';
import 'package:newapp/screens/workroom.dart';
import 'package:newapp/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('RE: Station'),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Start(),
        '/attendance': (context) => Attendance(),
        '/todo': (context) => Todo(),
        '/extra': (context) => Extra(),
        '/room': (context) => WRoom(),
        '/achievement': (context) => Achievement(),
        '/menu': (context) => Menu(),
      },
    );
  }
}


