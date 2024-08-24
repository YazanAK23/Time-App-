import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
      home: Quotlist(),
    ));

class Quotlist extends StatefulWidget {
  const Quotlist({super.key});

  @override
  State<Quotlist> createState() => _QuotlistState();
}


List<Quote> quotes = [
  Quote(text: 'Be yourself, everyone else is already taken', author: 'Oscar Wilde'),
  Quote(text: 'I have nothing to declare except my genius', author: 'Oscar Wilde'),
  Quote(text: 'The truth is rarely pure and never simple', author: 'Oscar Wilde'),
];

Widget quoteTemplate(quote) {

  return Card(
    margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
    child: Column(children: [
      Text(
        quote.text, 
        style: TextStyle(
        fontSize: 18.0,
        color: Colors.grey[600],
      ),
      ),
      SizedBox(height: 6.0,),
      Text(quote.author,
      style: TextStyle(
        fontSize: 14.0,
        color: Colors.grey[800],
      ),
      ),
    ],)
    );
  
}
class _QuotlistState extends State<Quotlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: 
       
        quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'quote.dart';

// void main() => runApp(MaterialApp(
//       home: Quotlist(),
//     ));

// class Quotlist extends StatefulWidget {
//   const Quotlist({super.key});

//   @override
//   State<Quotlist> createState() => _QuotlistState();
// }


// List<Quote> quotes = [
//   Quote(text: 'Be yourself, everyone else is already taken', author: 'Oscar Wilde'),
//   Quote(text: 'I have nothing to declare except my genius', author: 'Oscar Wilde'),
//   Quote(text: 'The truth is rarely pure and never simple', author: 'Oscar Wilde'),
// ];

// Widget quoteTemplate(quote) {

//   return qouteWidget(quote : quote);
  
// }

// class qouteWidget extends StatelessWidget {
//   // const qouteWidget({
//   //   super.key,
//   // });
//   final Quote quote;
//   qouteWidget({required this.quote});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white,
//       margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
//       child: Column(children: [
//         Text(
//           quote.text ?? 'default value', 
//           style: TextStyle(
//           fontSize: 18.0,
         
//           color: Colors.grey[600],
//         ),
        
//         ),
//         SizedBox(height: 10.0,),
//         Text(quote.author ?? 'Unknown Author',
//         style: TextStyle(
//           fontSize: 14.0,
//           color: Colors.grey[800],
//         ),
//         ),
//         FloatingActionButton(onPressed: (){
          
//         }, 
//                 child: const Icon(Icons.delete),

//                 tooltip: 'Delete',
//                 )
//       ],)
//       );
//   }
// }
// class _QuotlistState extends State<Quotlist> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Awesome Quotes'),
//         centerTitle: true,
//         backgroundColor: Colors.redAccent,
//       ),
//       body: Column(
//         children: 
       
//         quotes.map((quote) => quoteTemplate(quote , 
//         // delete : () {
//         //   setState(() {
//         //     quotes.remove(quote);
//         //   });
//         // }
        
//         )).toList(),
//       ),
//     );
//   }
// }
