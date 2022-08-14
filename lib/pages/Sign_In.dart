import 'package:flutter/material.dart';
import 'package:mobile_rush/pages/Sign_Up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
          bottom: PreferredSize(
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Color(0xFF007AFF),
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.41,
                  fontSize: 30,
                  fontStyle: FontStyle.normal),
            ),
            preferredSize: Size.zero,
          ),
          leadingWidth: 200,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SignUp()));
            },
            child: Row(
              children: [
                Icon(
                  Icons.keyboard_arrow_left,
                  color: Color(0xFF007AFF),
                ),
                Text(
                  'Back',
                  style: TextStyle(color: Color(0xFF007AFF)),
                )
              ],
            ),
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
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF80B2F8))),
                child: const Text(
                  'Request Password',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
