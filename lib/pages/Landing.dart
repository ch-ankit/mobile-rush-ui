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
          const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          const Image(
            image: AssetImage('assets/images/logo_ebpearls.png', bundle: null),
          ),
          const Divider(color: Colors.grey, thickness: 2),
          const Text('Award-winning digital agency'),
          Row(
            children: [
              Container(
                child: Column(children: [
                  RichText(
                      text: const TextSpan(text: "3400 +", children: [
                    TextSpan(text: "Projects"),
                    TextSpan(text: "Delivered"),
                  ]))
                ]),
              ),
              Container()
            ],
          ),
          Row(
            children: [Container(), Container()],
          ),
          const Text(
              """EB Pearls is a full-service digital agency based in Sydney. We help you connect with your customers and grow your business with creative, results-driven websites and mobile applications.""")
        ],
      ),
    );
  }
}
