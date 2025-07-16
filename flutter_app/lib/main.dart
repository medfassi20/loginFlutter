import 'package:flutter/material.dart';
import 'package:flutter_app/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: kIsWeb
        ? const FirebaseOptions(
            apiKey: "AIzaSyDaag98a-qRZb-qbSeKtgUIJGe84GFqwDc",
            authDomain: "flutter-app-5db0c.firebaseapp.com",
            projectId: "flutter-app-5db0c",
            storageBucket: "flutter-app-5db0c.appspot.com",
            messagingSenderId: "327942139972",
            appId: "1:327942139972:web:47bd4ca908a8ae82ee0c11",
          )
        : null,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Auth(),
    );
  }
}