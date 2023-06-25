import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'final_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyBkbGExj0AXQIhcgRpE2fsGgfu5pX8TRME",
    projectId: "eventsah-d8f4c",
    messagingSenderId: "102690915301",
    appId: "1:102690915301:web:b01a21d3f70db08313250c",
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) print("Error");
          if (snapshot.connectionState == ConnectionState.done) {
            return const MyHomePage();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
