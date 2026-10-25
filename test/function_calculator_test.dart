import 'package:flutter_test/flutter_test.dart';
import 'package:practical_15/function_calculator.dart';

void main() {
  final calculator = FunctionCalculator();
  test('Відомі результати функції варіанта 25', () {
    expect(calculator.calculate(0), 100);
    expect(calculator.calculate(1), 98);
    expect(calculator.calculate(2), 94);
    expect(calculator.calculate(-3), 94);
    expect(calculator.calculate(0.5), 99.25);
  });
  test('Нескінченні аргументи та переповнення відхиляються', () {
    for (final x in [
      double.nan,
      double.infinity,
      double.negativeInfinity,
      1e308,
    ]) {
      expect(() => calculator.calculate(x), throwsArgumentError);
    }
  });
}
