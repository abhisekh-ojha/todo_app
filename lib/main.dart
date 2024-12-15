import 'package:flutter/material.dart';
import 'package:todeey_flutter/screens/taskscreen.dart';
import 'package:provider/provider.dart';
import 'package:todeey_flutter/models/taskdata.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskData>(create: (context) => TaskData()),
      ],
      child: MaterialApp(
        home: HomeScreen() // simply passing to taskscreen,
      ),
    );
  }
}
