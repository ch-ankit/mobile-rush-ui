import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(
        //   Icons.keyboard_arrow_left,
        //   color: Color(0xFF007AFF),
        // ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromRGBO(248, 248, 248, 0.92),
        toolbarHeight: 80,
        bottom: const PreferredSize(
          preferredSize: Size.zero,
          child: Text(
            'Contact Us',
            style: TextStyle(
                color: Color(0xFF292A3B),
                fontWeight: FontWeight.bold,
                letterSpacing: 0.41,
                fontSize: 30,
                fontStyle: FontStyle.normal),
          ),
        ),
        leadingWidth: 200,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
              ),
              Text(
                'Back',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.blue,
            )),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 125, 225, 0.11)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'First Name*',
                        hintStyle: TextStyle(color: Color(0xFF007AFF))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 125, 225, 0.11)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Color(0xFF007AFF))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 125, 225, 0.11)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'E-mail',
                        hintStyle: TextStyle(color: Color(0xFF007AFF))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 125, 225, 0.11)),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mobile No.',
                        hintStyle: TextStyle(color: Color(0xFF007AFF))),
                  ),
                ),
              ],
            ),
          ),
          const Text(
              """For a FREE consultation, simply leave your details and we’ll contact you soon.

"""),
          Row(
            children: const [
              Icon(Icons.phone),
              SizedBox(
                width: 15,
              ),
              Text("""02 8880 7857"""),
            ],
          )
        ],
      ),
    );
  }
}
