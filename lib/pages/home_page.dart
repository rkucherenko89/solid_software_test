import 'package:flutter/material.dart';
import 'package:solid_software_test/utils/random_color_generator.dart';

/// Creates the Main screen of the application.
class HomePage extends StatefulWidget {
  /// Basic class constructor with optinal, named field [key].
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _color = RandomColorGenerator.getColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: ColoredBox(
          color: _color,
          child: const Center(
            child: Text('Hey there'),
          ),
        ),
      ),
    );
  }
}
