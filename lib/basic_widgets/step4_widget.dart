import 'package:flutter/material.dart';

class Step4Widget extends StatelessWidget {
  const Step4Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.lightBlue[50],
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'Langkah 4: Counter sederhana',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const CounterWidget(),
          ],
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $count', style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text('Tambah Counter'),
        ),
      ],
    );
  }
}
