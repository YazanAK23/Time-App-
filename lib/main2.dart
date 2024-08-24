// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Home(), 
//     ), 
//   );
// }


// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello World!'),
//           centerTitle: true,
//           backgroundColor: Colors.red,
//         ),
//         body: Center(
//           child: IconButton(onPressed: () { 
//             print('You clicked me!');
//             // label: const Text('Click me!');
//             // Color: Colors.blue;
//           }, 
//           // label: Text('Click me!'),
          
//           icon: Icon(Icons.mail),
          
//           // child:  Text('Click me!', style: TextStyle(color: Colors.black, ),),

//          style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 58, 194, 31)))
//           ),     
//         ),

//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             print('You clicked me!');
//           },
//           child: const Text('Click'),
//           backgroundColor: Colors.red[600],
//         )
//       );
//   }
// }