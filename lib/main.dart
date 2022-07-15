import 'package:flower_app/screens/sign_in.dart';
import 'package:flutter/material.dart';

import 'provider/cart.dart';
import 'screens/MainPage.dart';
import 'screens/details_screen.dart';
import 'screens/home.dart';
import 'screens/sign_up.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        
        home: Home(),
      ),
    );
  }
}