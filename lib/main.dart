import 'package:flutter/material.dart';
import 'package:mobile_rush/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xFF007AFF),
        // textTheme: const TextTheme(
        //   headline1: TextStyle(color: Color(0xFF007AFF)),
        // ),
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutGenerator.generateRoute,
      home: null,
    );
  }
}
