// import 'package:flutter/material.dart';
// void main() {
//   runApp(MaterialApp(
//     home: Home(),
//   ));
// }
// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {

//   int level = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: const Text('AbuKhaled ID Card', style: TextStyle(color: Colors.white),),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0.0,
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             level += 1;
//           });
//         },
//         child: const Icon(Icons.add),
//         backgroundColor: Colors.grey[800],
//       ),
//       body: Padding (
        
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
          
//           children: [
//            Center(
//             child: 
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/Untitled.jpeg'),
//               radius: 30.0,
//             ),
            
//            ),
//             Divider(
//               height: 60.0,
//               color: Colors.grey[800],
//             ),
//             Text('NAME',
            
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
              
//             ),
//             SizedBox(height: 10.0),
//              Text('Yazan-Ak',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 )
//               ),
//             SizedBox(height: 30.0),
//             Text('CURRENT LEVEL',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
              
//             ),
//             SizedBox(height: 10.0),
//              Text('$level',
//               style: TextStyle(
//                 color: Colors.amberAccent[200],
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 )
//               ),
//               SizedBox(height: 30.0),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.email,
//                     color: Colors.grey[400],
//                   ),
//                   SizedBox(width: 10.0),
//                   Text('Abukhaled@gmail.com', 
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: 18.0,
//                     letterSpacing: 1.0,
//                   ),
//                   ),

//                   ]
                  
//               ),
//           ],
//         ),
//       ),
//     );
//   }

  
// }
// class Test extends StatefulWidget {
//   const Test({super.key});

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }