// import 'package:flutter/material.dart';
//
// class restap extends StatefulWidget {
//   const restap({Key? key}) : super(key: key);
//
//   @override
//   State<restap> createState() => _restapState();
// }
//
// class _restapState extends State<restap> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//     );
//   }
// }
//
// void  getData() async{
//   final response = await http.get (Uri.parse('http://localhost: 3000/users'));
//  return jsonDecode(response.body)['user1'];

import 'package:code3/register_1.dart';
import 'package:flutter/material.dart';



class Screenhouse extends StatelessWidget {
   Screenhouse({Key? key}) : super(key: key);

   final _numberInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _numberInputController,
keyboardType: TextInputType.number,
decoration: InputDecoration(
  border: OutlineInputBorder(),
  hintText: 'Number',
),
            ),
            ElevatedButton(
              onPressed: (){
                final _number = _numberInputController.text;
                getNumberFact(_number);
              },
                child:Text('Get face')
            ),
          ],
        ),
      ),
      );

  }
}

