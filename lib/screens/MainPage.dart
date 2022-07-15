// ignore_for_file: prefer_const_constructors

import 'package:flower_app/screens/sign_in.dart';
import 'package:flutter/material.dart';

import '../shard/textfield.dart';
import 'sign_up.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: true,
        //   backgroundColor: Color.fromARGB(255, 3, 157, 67),
        //   title: Text(
        //     "Sing in",
        //     style: TextStyle(fontSize: 27),
        //   ),
        //   centerTitle: false,
        // ),
        body: SignIn(),
          ),
        
      
    );
  }
}
