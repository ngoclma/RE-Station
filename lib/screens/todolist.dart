import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:newapp/services/employee.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  List<Employee> employees = [
    Employee(name: 'Kang', position: 'Assistant Director', done: '0/5'),
    Employee(name: 'Jane', position: 'Producer', done: '4/5'),
    Employee(name: 'Amee', position: 'Lightning director', done: '5/5'),
    Employee(name: 'Lynn', position: 'Audio operator', done: '3/5'),
    Employee(name: 'Panda', position: 'Production manager', done: '1/5'),
    Employee(name: 'Anne', position: 'Costume designer', done: '2/5'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('ae2012'),
      appBar: AppBar(
        backgroundColor: HexColor('ee9b00'),
        title: Text('View team task list'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: (){},
                  title: Text(employees[index].name),
                  subtitle: Text('${employees[index].position}   ${employees[index].done}'),
                )
              )
            );
          }
      ),
    );
  }
}
