import 'package:contact_ui/contact_page.dart';
import 'package:contact_ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Contact UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.black),
          primarySwatch: Colors.blue,
        ),
        home: const ContactPage());
  }
}
