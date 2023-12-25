import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/SimpleBlocObserver.dart';
import 'package:notes_app/cubit/node_cubit.dart';
import 'package:notes_app/domain/constant/constsnts.dart';
import 'package:notes_app/presentation/screens/Home.dart';
import 'package:hive/hive.dart';
import 'data/notedataModel.dart';
import 'presentation/screens/Edit_Note_Page.dart';
import 'package:hive_flutter/adapters.dart';
void main()async {
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
   await Hive.openBox<NoteModel>(kNoteBox);
   Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // providing the cubit or bloc into all application to be visible :
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit(),),
      ],

      child: MaterialApp(
        routes: {
          "EditPage":(context) => EditPage(),
        },
        debugShowCheckedModeBanner: false,
   //   theme: ThemeData.light(),
        theme:ThemeData.dark(),
        home:Home(),
      ),
    );
  }
}
