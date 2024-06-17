import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String country = 'Nepal';
  String capital = 'Kathmandu';

  @override
  Widget build(BuildContext context) {
    return Center(
        // child: Text('The capital of ${country} is ${capital}'),
        // child:Text('We are currently working in ' + capital)
        child: Text(capital + ' is the capital of ' + country));
  }
}
