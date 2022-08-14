import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image(
                image: NetworkImage(
                    'https://drive.google.com/uc?export=view&id=1Bjg9hEIB_s4Jg59dEVuG02vcTqoEBQcS'),
              )
            ],
          )
        ],
      ),
    );
  }
}
