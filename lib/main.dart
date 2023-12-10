import 'package:flutter/material.dart';
import 'package:notes_app/domain/constant/constsnts.dart';
import 'package:notes_app/presentation/screens/Home.dart';
import 'package:hive/hive.dart';
import 'presentation/screens/Edit_Note_Page.dart';
import 'package:hive_flutter/adapters.dart';
void main()async {
  await Hive.initFlutter();
   await Hive.openBox(kNoteBox);
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
