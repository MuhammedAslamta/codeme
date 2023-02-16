// import 'dart:convert';
//
// import 'package:json_annotation/json_annotation.dart';
// import 'package:equatable/equatable.dart';
//
//
// @JsonSerializable()
// class NumberFactResp{
//
//   @JsonKey(name: 'text')
//   String? text;
//
//   @JsonKey(name: 'number')
//   int? number;
//
//   @JsonKey(name:'found')
//   bool? found;
//
//   @JsonKey(name: 'type')
//   String? type;
//
//   NumberFactResp({
//     this.text,
//     this.number,
//     this.found,
//     this.type,
//   });
//   factory NumberFactResp.fromJson(Map<String,dynamic>json){
//     return _$NumberFactRespFromJson(json);
//   }
// Map<String,dynamic>toJson()=>_&NumberFactRespToJson(this);
// }
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class rest extends StatefulWidget {
  List<dynamic> users =[];
   rest({Key? key}) : super(key: key);

  @override
  State<rest> createState() => _restState();
}

class _restState extends State<rest> {
  @override
  Widget build(BuildContext context) {
    var users;
    return Scaffold(
      appBar: AppBar(
        title: Text('Rest Api Call'),
      ),
      body: ListView.builder(
        itemCount: users.lenght,
        itemBuilder: (context,index){
          final user = users[index];
          final email = users['email'];
      return ListTile(
        leading: Text('$index'),
        title: Text(email),
      );
      },
      ),
      floatingActionButton: FloatingActionButton(onPressed:fetchUsers ,
      ),
    );
  }
  void fetchUsers() async {
    print('fetchUsers called');
    const url = 'http://randomuser.me/api/?result=100';
    final uri= Uri.parse(url);
     final response = await  http.get (uri);
     final body = response.body;
     final json = jsonDecode(body);

     setState(() {
       return json['results'];
     });
     print ('fetchUsers complete');

     
  }
}
