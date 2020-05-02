import 'package:chat/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async{

  runApp(MyApp());

  DocumentSnapshot snapshot = await Firestore.instance.collection('mensagens').
  document('msg1').get();
  print(snapshot.documentID);

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
         color: Colors.blue,
        ),
      ),
      home: ChatScreen(),
    );
  }
}

