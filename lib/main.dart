import 'package:flutter/material.dart';
import 'package:solid_software_test/pages/home_page.dart';

void main() {
  runApp(const Main());
}

/// Creates a `MaterialApp`.
class Main extends StatelessWidget {
  /// Basic class constructor with optinal, named field [key].
  const Main({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
