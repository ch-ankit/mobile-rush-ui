import 'package:flutter/material.dart';
import 'package:mobile_rush/pages/Cards.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  static const data = [
    {
      'image': 'assets/images/baxta.png',
      'name': 'Baxta Pets',
      'product': 'MOBILE APP'
    },
    {
      'image': 'assets/images/coposit.png',
      'name': 'Coposit',
      'product': 'MOBILE APP'
    },
    {
      'image': 'assets/images/watsons_bay.png',
      'name': 'Watsons Bay',
      'product': 'WEB DESIGN'
    },
    {
      'image': 'assets/images/wild_by_instinct.png',
      'name': 'Wild by instinct',
      'product': 'ECOMMERCE'
    },
    {
      'image': 'assets/images/nsw.png',
      'name': 'NSW Education',
      'product': 'MOBILE APP'
    },
    {
      'image': 'assets/images/quote_up.png',
      'name': 'Quote Up',
      'product': 'MOBILE APP'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var display = data.map(
      (e) => DesignCards(
        args: e,
      ),
    );
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Projects',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFF0F0F0)),
              width: 327,
              height: 60,
              child: TextFormField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 6, top: 6),
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 20),
                    hintText: 'Search'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ...display
          ],
        ),
      ),
    );
  }
}
