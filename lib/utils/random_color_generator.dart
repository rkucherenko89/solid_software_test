import 'dart:math';
import 'package:flutter/material.dart';

/// Creates a random `Color` generator.
class RandomColorGenerator {
  static final _random = Random();

  /// Returns random `Color.fromRGBO` with `opacity` 0.
  static Color getColor() {
    // [_maxRgbPossibleValue] is set to 256 because of each of 3(three) colors
    // must be set in the range from 0 to 255 
    // AND  
    // [nextInt] generates integer in the range from 0, inclusive, 
    // to max, exclusive(!).
    
    // Actualy, I think such way to avoid "magic numbers" is a bit excessive.
    const int _maxRgbPossibleValue = 256;

    return Color.fromRGBO(
      _random.nextInt(_maxRgbPossibleValue),
      _random.nextInt(_maxRgbPossibleValue),
      _random.nextInt(_maxRgbPossibleValue),
      1.0,
    );
  }
}
