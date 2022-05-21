import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("00b4d8"),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: <Widget> [
                  SizedBox(height: 100),
                  Text(
                    'Welcome back, KANG',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: HexColor('ffb703'),
                    ),
                  ),
                  SizedBox(height: 100),



          ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: HexColor('ca6702'), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Text(
                      'Please Take Attendance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () async {
                      await Navigator.pushNamed(context, '/attendance');
                    },
                  ),
                  SizedBox(height: 300),
                  Text(
                    'RE: Station',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: HexColor('005f73'),
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
