/// Рядок 25 таблиці: y = 100 − (x² + x).
class FunctionCalculator {
  double calculate(double x) {
    if (!x.isFinite) {
      throw ArgumentError.value(x, 'x', 'Введіть скінченне число');
    }
    final y = 100 - (x * x + x);
    if (!y.isFinite) throw ArgumentError('Результат поза числовим діапазоном');
    return y;
  }
}
