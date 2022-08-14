import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobile_rush/pages/AboutUs.dart';
import 'package:mobile_rush/pages/Contacts.dart';
import 'package:mobile_rush/pages/Landing.dart';
import 'package:mobile_rush/pages/Our_Teams.dart';
import 'package:mobile_rush/pages/Projects.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF292A3B),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.white,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
            controller.jumpToPage(_selectedIndex);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper_rounded,
                ),
                label: 'Projects'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_rounded,
                ),
                label: 'About Us'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_alt_rounded,
                ),
                label: 'Our Team'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.alternate_email,
                ),
                label: 'Contact'),
          ],
        ),
        body: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [Landing(), Projects(), AboutUs(), OurTeam(), Contacts()],
        ));
  }
}
