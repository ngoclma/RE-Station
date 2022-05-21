import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MTV STATION'),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
        padding: const EdgeInsets.all(10.8),
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10,
          ), children: <Widget> [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: HexColor('0077b6'),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Icon(Icons.task, size: 40, color: Colors.white,),
                  TextButton(
                    onPressed: () async {
                      await Navigator.pushNamed(context, '/todo');
                    },
                    child: Text("View To-do list", style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ],),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: HexColor('0077b6'),),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Icon(Icons.add, size: 50, color: Colors.white,),
              TextButton(
                onPressed: () async {
                  await Navigator.pushNamed(context, '/extra');
                },
                child: Text("View Extras", style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: HexColor('0077b6'),),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            Icon(Icons.people, size: 50, color: Colors.white,),
              TextButton(
                onPressed: () async {
                  await Navigator.pushNamed(context, '/room');
                },
                child: Text("Enter Working Room", style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
            ],),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: HexColor('0077b6'),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
              Icon(Icons.assessment, size: 50, color: Colors.white,),
                TextButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/achievement');
                  },
                  child: Text("Your Achievement", style: TextStyle(color: Colors.white, fontSize: 25)),
                ),
            ],
            ),
          ),
          ],
    ),

    ),),
    );
  }
}










//
//                 ElevatedButton(
//                   child: Text('View To-do List'),
//                   onPressed: () async {
//                     await Navigator.pushNamed(context, '/todo');
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text('View Extras'),
//                   onPressed: () async {
//                     await Navigator.pushNamed(context, '/extra');
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text('Enter Working Room'),
//                   onPressed: () async {
//                     await Navigator.pushNamed(context, '/room');
//                   },
//                 ),
//                 ElevatedButton(
//                   child: Text('View Achievement'),
//                   onPressed: () async {
//                     await Navigator.pushNamed(context, '/achievement');
//                   },
//                 ),
//               ],
//             ),
//         ),
//     ),
//       ],
//     );
//   }
// }


//
//       body: SafeArea(
//         child: Column(
//           children: <Widget> [
//             ElevatedButton(
//               child: Text('View To-do List'),
//               onPressed: () async {
//                 await Navigator.pushNamed(context, '/todo');
//               },
//             ),
//             ElevatedButton(
//               child: Text('View Extras'),
//               onPressed: () async {
//                 await Navigator.pushNamed(context, '/extra');
//               },
//             ),
//             ElevatedButton(
//               child: Text('Enter Working Room'),
//               onPressed: () async {
//                 await Navigator.pushNamed(context, '/room');
//               },
//             ),
//             ElevatedButton(
//               child: Text('View Achievement'),
//               onPressed: () async {
//                 await Navigator.pushNamed(context, '/achievement');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
