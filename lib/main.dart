import 'package:flutter/material.dart';
import 'UI/home_page.dart';
import 'UI/about_page.dart';
import 'UI/contact_page.dart';

void main() {
  runApp(
    MaterialApp(      
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "/About": (context) => const AboutPage(),
        "/Contact": (context) => const ContactPage(),
      },
    ),
  );
}
        