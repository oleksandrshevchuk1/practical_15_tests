import 'package:flutter/material.dart';
import 'function_calculator.dart';
import 'student.dart';
import 'ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) =>
      const CourseApp(title: 'Практична 15', home: TestDemoScreen());
}

class TestDemoScreen extends StatefulWidget {
  const TestDemoScreen({super.key});
  @override
  State<TestDemoScreen> createState() => _TestDemoScreenState();
}

class _TestDemoScreenState extends State<TestDemoScreen> {
  final _x = TextEditingController(text: '2');
  int _counter = 0;
  String _result = 'y = 94';
  @override
  void dispose() {
    _x.dispose();
    super.dispose();
  }

  void _calculate() {
    try {
      final x = double.parse(_x.text.replaceAll(',', '.'));
      final y = FunctionCalculator().calculate(x);
      setState(() => _result = 'y = $y');
    } on Object {
      setState(() => _result = 'Введіть скінченне число помірної величини');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text(lastAppTitle)),
    body: PageBody(
      children: [
        const Text('Варіант 25 · y = 100 − (x² + x)'),
        TextField(
          key: const Key('x-input'),
          controller: _x,
          keyboardType: const TextInputType.numberWithOptions(
            signed: true,
            decimal: true,
          ),
          decoration: const InputDecoration(labelText: 'x'),
        ),
        ElevatedButton(
          onPressed: _calculate,
          child: const Text('Обчислити функцію'),
        ),
        SelectableText(_result),
        const Divider(),
        const Text('Лічильник із кроком 4', textAlign: TextAlign.center),
        Text(
          '$_counter',
          key: const Key('counter'),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const Text(
          'Unit-тести та widget-тести розташовані в test/. Запуск: flutter test.',
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      tooltip: 'Додати 4',
      onPressed: () => setState(() => _counter += 4),
      child: const Icon(Icons.mouse),
    ),
  );
}
