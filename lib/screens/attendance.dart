import 'package:flutter/material.dart';
import 'package:newapp/screens/menu.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);


  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: <Widget> [
                  Text(
                    'Please take a picture to take attendance',
                  ),
                  ElevatedButton(
                    child: Text('Take A Picture'),
                    onPressed: () async {
                      await Navigator.pushNamed(context, '/menu');
                    },
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }


}
