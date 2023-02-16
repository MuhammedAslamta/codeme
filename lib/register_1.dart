// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class restap extends StatefulWidget {
//   const restap({Key? key}) : super(key: key);
//
//   @override
//   State<restap> createState() => _restapState();
// }
//
// class _restapState extends State<restap> {
//   Future<Map<String,dynamic>> getData() async{
//     final response = await http.get(Uri.parse('http://localhost:300/users'));
//     return jsonDecode(response.body)['user1'];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: getData(),
//         builder: (context,snapshot){
//           if(Snapshot,hasData){
//             return Center(
//
//             )
//           }
//         },
//       ),
//
//     );
//   }
// }

import 'package:http/http.dart' as http;

Future<void>getNumberFact(   String number) async{
 final _response = await http.get(Uri.parse('http://numbersapi.com/$number?json'));
 print(_response.body);
 print(_response.statusCode);
 // print(number);
}
