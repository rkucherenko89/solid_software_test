import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_test/pages/home_page.dart';

void main() {
  testWidgets('The text is "Hey there"', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Verify that our text is 'Hey there'.
    expect(find.text('Hey there'), findsOneWidget);
  });

  testWidgets('Background color is white', (WidgetTester tester) async {
    final coloredBox = tester
        .firstWidget(find.byKey(const ValueKey('coloredBox'))) as ColoredBox;

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Verify that our ColoredBox is white.
    expect(coloredBox.color, Colors.white);
  });

  testWidgets('Change background color by tap', (WidgetTester tester) async {
    final coloredBox = tester
        .firstWidget(find.byKey(const ValueKey('coloredBox'))) as ColoredBox;
    late Color _currentColor;

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Save the current color
    _currentColor = coloredBox.color;

    // Tap the screen, trigger a frame and verify the color had changed.
    await tester.tap(find.byType(MaterialApp));
    await tester.pump();
    expect(coloredBox.color, isNot(_currentColor));
  });
}
