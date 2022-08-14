import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Description extends StatefulWidget {
  final args;
  const Description({Key? key, this.args}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState(args);
}

class _DescriptionState extends State<Description> {
  final args;
  _DescriptionState(this.args);
  @override
  Widget build(BuildContext context) {
    print(args);
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(
        //   Icons.keyboard_arrow_left,
        //   color: Color(0xFF007AFF),
        // ),
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromRGBO(248, 248, 248, 0.92),
        toolbarHeight: 80,
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Text(
            args['name'],
            style: const TextStyle(
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image(image: AssetImage(args['image'])),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                """Baxta Pets is the first and #1 pets only social media in the world. Baxta provides a platform for pets lovers to meet and share their experiences and allows them to enjoy the pleasure of being a pet parent.
      """,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const Text(
                'Client:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                args['name'] + ' Global Pty Ltd',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Industry:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                'Social media and networking (pet and animals).',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Project Type:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                args['name'] + ' (iOS and CMS)',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Image(
                                image:
                                    AssetImage('assets/images/ic_swift.png')),
                          ),
                          Text('Swift')
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                              image: AssetImage('assets/images/ic_kotlin.png')),
                        ),
                        Text('Kotlin')
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // SizedBox(
                    //   height: 60,
                    //   width: 60,
                    //   child: Image(
                    //       image: AssetImage('assets/images/amazon_ec2.png')),
                    // ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                              image: AssetImage('assets/images/ic_lambda.png')),
                        ),
                        Text('Lambda')
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                              image: AssetImage('assets/images/ic_lambda.png')),
                        ),
                        Text('Lambda')
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                              image:
                                  AssetImage('assets/images/ic_node_js.png')),
                        ),
                        Text('Node JS')
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Image(
                              image: AssetImage('assets/images/ic_vue_js.png')),
                        ),
                        Text('Vue JS')
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Website:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: (() =>
                    launchUrl(Uri.parse('https://www.ebpearls.com.au/'))),
                child: const Text(
                  'www.ebpearls.com.au',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              SizedBox(
                width: 150,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/contacts');
                    },
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
