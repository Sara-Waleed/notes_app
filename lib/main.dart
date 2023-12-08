import 'package:flutter/material.dart';
import 'package:notes_app/presentation/screens/Home.dart';

import 'presentation/screens/Edit_Note_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "EditPage":(context) => EditPage(),
      },
      debugShowCheckedModeBanner: false,
   //   theme: ThemeData.light(),
      theme:ThemeData.dark(),
      home:Home(),
    );
  }
}
