import 'package:flutter/material.dart';
import 'package:mobile_rush/pages/Contacts.dart';
import 'package:mobile_rush/pages/Description.dart';
import 'package:mobile_rush/pages/Homepage.dart';
import 'package:mobile_rush/pages/Sign_In.dart';
import 'package:mobile_rush/pages/Sign_Up.dart';

class RoutGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SignUp());
      case '/login':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case '/home':
        return MaterialPageRoute(builder: (_) => const Homepage());
      case '/contacts':
        return MaterialPageRoute(builder: (_) => const Contacts());
      case '/description':
        return MaterialPageRoute(
            builder: (_) => Description(
                  args: args,
                ));

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(child: Text('No Such Route available')),
      );
    });
  }
}
