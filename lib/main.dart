import 'package:flutter/material.dart';
import 'package:statemanagment/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/provider/counter_provider.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>CounterProvider())
  ],child:MyApp()
    ,));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:HomeScreen()
    );
  }
}

