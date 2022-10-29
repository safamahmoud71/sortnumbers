import 'package:flutter/material.dart';
import 'package:orangesortnumbers/sort_numbers.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Sort_Numbers(),
    );
  }
}


