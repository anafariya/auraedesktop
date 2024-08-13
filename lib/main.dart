import 'package:flutter/material.dart';
import 'pages/details_form.dart';
import 'pages/home_page.dart';
import 'pages/prescan_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auraeai Desktop ',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => DetailsForm(),
        '/homepage': (context) => HomePage(),
        // '/prescan': (context) => PrescanPage()
      },
    );
  }
}
