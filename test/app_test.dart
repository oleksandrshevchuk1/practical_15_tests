import 'package:flutter_test/flutter_test.dart';
import 'package:practical_15/main.dart' as app;

void main() {
  testWidgets('Практична 15: відкривається потрібний екран', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    expect(find.text('32-IST: Oleksandr\'s last Flutter App'), findsWidgets);
  });
}
