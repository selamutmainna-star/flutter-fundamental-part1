import 'package:flutter/material.dart';

class Step3Widget extends StatelessWidget {
  const Step3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'Langkah 3: Hello Flutter',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button Langkah 3 ditekan!')),
                );
              },
              child: const Text('Tekan Saya'),
            ),
          ],
        ),
      ),
    );
  }
}
