import 'package:flutter/material.dart';
import 'package:mobile_rush/pages/Homepage.dart';
import 'package:mobile_rush/pages/Sign_In.dart';
import 'package:mobile_rush/pages/Sign_Up.dart';

class RoutGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/login':
        return MaterialPageRoute(builder: (_) => SignIn());
      case '/home':
        return MaterialPageRoute(builder: (_) => Homepage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(child: Text('No Such Route available')),
      );
    });
  }
}
