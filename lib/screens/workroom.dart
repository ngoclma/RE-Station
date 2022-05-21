import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WRoom extends StatefulWidget {
  const WRoom({Key? key}) : super(key: key);

  @override
  _WRoomState createState() => _WRoomState();
}

class _WRoomState extends State<WRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('005f73'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            SizedBox(
              height: 40,
            ),
            Text(
              'Working Room',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,

                ), itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/$index.jpg'),
                      ),
                    ),
                  );
                }),

              ),
            ),
          ],
        )
      ),
    );
  }
}

