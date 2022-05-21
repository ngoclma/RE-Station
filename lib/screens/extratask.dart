import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Extra extends StatefulWidget {
  const Extra({Key? key}) : super(key: key);

  @override
  _ExtraState createState() => _ExtraState();
}

class _ExtraState extends State<Extra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('0a9396'),
      appBar: AppBar(
        backgroundColor: HexColor('94d2bd'),
        title: Text('Extras'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            SizedBox(height: 40),
            Container(
              child: Text(
                'Total extra salary earned: S580',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              child: Text(
                'Total no. co-workers networked: 2',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              child: Text(
                  'View Team-based Project',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
              },
            ),
            SizedBox(height: 80),
            Container(
              child: Text(
                'Total no. courses finished: 3',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              child: Text(
                  'Learning Resources',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
              ),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
