import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mobile_rush/pages/Homepage.dart';
import 'package:mobile_rush/pages/Sign_In.dart';
import 'package:mobile_rush/pages/Terms.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var check = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(
          //   Icons.keyboard_arrow_left,
          //   color: Color(0xFF007AFF),
          // ),
          automaticallyImplyLeading: true,
          backgroundColor: Color.fromRGBO(248, 248, 248, 0.92),
          toolbarHeight: 80,
          title: const Text(
            'Sign In',
            style: TextStyle(
                color: Color(0xFF007AFF),
                fontWeight: FontWeight.w700,
                letterSpacing: 0.41,
                fontSize: 34,
                fontStyle: FontStyle.normal),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF007AFF)),
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.only(top: 40),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 125, 225, 0.11)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'E-mail',
                              hintStyle: TextStyle(color: Color(0xFF007AFF))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 125, 225, 0.11)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Color(0xFF007AFF))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Forgot Passwod?',
                style: TextStyle(color: Color(0xFF007AFF)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF80B2F8))),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                      value: check,
                      onChanged: (value) {
                        setState(() {
                          check = !check;
                        });
                      }),
                  RichText(
                    text: TextSpan(
                        text: 'I agree to the ',
                        style: TextStyle(color: Color(0xFF007AFF)),
                        children: [
                          TextSpan(
                            text: 'Terms and Conditions',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Terms()),
                                  ),
                          ),
                        ]),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                    text: 'Not Registered yet?',
                    style: TextStyle(color: Color(0xFF007AFF)),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap =
                              () => Navigator.pushNamed(context, '/login'),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
