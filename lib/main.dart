// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firebase_app/auth_controller.dart';
import 'package:firebase_app/firebase_options.dart';
import 'package:firebase_app/login_page.dart';
import 'package:firebase_app/signup_page.dart';
import 'package:firebase_app/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web,).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage()
    );
  }
}