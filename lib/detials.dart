
import 'package:flutter/material.dart';

class detialspage extends StatefulWidget {
  const detialspage({super.key});

  @override
  State<detialspage> createState() => _detialspageState();
}

class _detialspageState extends State<detialspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Image.asset('assets/images/grassland.png'),
          )
        ],
      )
    );
  }
}
