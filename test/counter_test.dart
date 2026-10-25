import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practical_15/main.dart';
import 'package:practical_15/student.dart';

void main() {
  testWidgets('Заголовок, mouse та крок лічильника 4', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text(lastAppTitle), findsOneWidget);
    expect(
      find.widgetWithIcon(FloatingActionButton, Icons.mouse),
      findsOneWidget,
    );
    expect(tester.widget<Text>(find.byKey(const Key('counter'))).data, '0');
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    expect(tester.widget<Text>(find.byKey(const Key('counter'))).data, '4');
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    expect(tester.widget<Text>(find.byKey(const Key('counter'))).data, '8');
  });
}
