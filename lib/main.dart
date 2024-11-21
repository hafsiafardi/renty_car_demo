// ignore_for_file: duplicate_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_agence1/ath/Pay.dart';
import 'package:flutter_agence1/ath/car.dart';
import 'package:flutter_agence1/ath/editProfil.dart';
import 'package:flutter_agence1/ath/login.dart';
import 'package:flutter_agence1/ath/signup.dart';
// ignore: unused_import
import 'dart:io';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:image_picker/image_picker.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAgWb8mhXPkIAVar2-dA0Ea73Wc4jiD-wo',
          appId: 'com.example.flutter_agence1',
          messagingSenderId: 'messagingSenderId',
          projectId: 'flutteragence'));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
  const MyApp({super.key});
}

class _MyAppState extends State<MyApp> {
@override
  void initState() {
    FirebaseAuth.instance.userChanges().listen((User? user) {
      if (user == null) {
          if (kDebugMode) {
            print('User is currently signed out!');
          }
      } else {
       if (kDebugMode) {
          print('User is signed in!');
       }
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
      routes: {
        "login": (context) => const LoginPage(),
        "signup": (context) => const SignupPage(),
         "editprofil": (context) => const EditProfilPage(),
        "carPage":(context) => const CarPage(),
         "Payment": (context) => const PaymentPage(),

        
      },
    );
  }
}