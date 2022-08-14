import 'package:flutter/material.dart';

class DesignCards extends StatefulWidget {
  const DesignCards({
    Key? key,
    this.args,
  }) : super(key: key);
  final args;
  @override
  State<DesignCards> createState() => _DesignCardsState(args);
}

class _DesignCardsState extends State<DesignCards> {
  final args;
  _DesignCardsState(this.args);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/description', arguments: args);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(args['image']),
                fit: BoxFit.fill,
              ),
              Text(
                args['name'],
                style: const TextStyle(fontSize: 20),
              ),
              Text(args['product'],
                  style: const TextStyle(fontSize: 15, color: Colors.grey))
            ],
          )),
    );
  }
}
