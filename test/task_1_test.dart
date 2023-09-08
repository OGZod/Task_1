import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hngx/tasks/task1/task_1.dart';

void main() {
  group('Task1 widget', () {
    testWidgets('Renders profile screen correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Task1(),
        ),
      );
      expect(find.byType(AppBar), findsOneWidget);

      // Verify the title text of the AppBar
      expect(find.text('Slack Profile'), findsOneWidget);

      // Verify the elevation of the AppBar
      final appBar = tester.widget<AppBar>(find.byType(AppBar));
      expect(appBar.elevation, 0);
      expect(find.byType(CircleAvatar), findsOneWidget);
      expect(find.text('Oben Ayuk Gilbert Abunaw'), findsOneWidget);


      // Verify that the Row widget is present
      expect(find.byType(Row), findsOneWidget);

      await tester.pumpAndSettle();

      // Get the children widgets within the Row
      final children = tester.widgetList(find.byType(Row)).toList();

      // Print the actual number of children found
      print('Number of children: ${children.length}');

      // Print the string representation of each child widget
      children.forEach((child) {
        print('Child widget: $child');
      });

      // Verify the number of children in the Row
      expect(children.length, 2);

      // Verify the first child widget is a Text widget
      expect(children[0], isA<Text>());

      // Verify the second child widget is an AnimatedContainer widget
      expect(children[1], isA<AnimatedContainer>());
    });
  });
}