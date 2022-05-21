import 'package:flutter/material.dart';
import 'package:newapp/services/achieved.dart';
import 'package:hexcolor/hexcolor.dart';

class Achievement extends StatefulWidget {
  const Achievement({Key? key}) : super(key: key);

  @override
  _AchievementState createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  List<Achieved> achievements = [
    Achieved(year: '2019', describe: 'Full-time job offered'),
    Achieved(year: '2020', describe: 'Employee of the year'),
    Achieved(year: '2021', describe: 'Second Best Assistant'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('ee9b00'),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              SizedBox(
                height: 40,
              ),
              Text(
                'Achievement',
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
                  child: ListView.builder(
                      itemCount: achievements.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                            child: Card(
                                child: ListTile(
                                  onTap: (){},
                                  title: Text(achievements[index].year),
                                  subtitle: Text(achievements[index].describe),
                                )
                            )
                        );
                      }
                  ),

                ),
              ),
            ],
          )
      ),
    );
  }
}

