import 'package:flutter/material.dart';

class Step6Widget extends StatelessWidget {
  const Step6Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.orange[50],
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'Langkah 6: Text Input & SnackBar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const TextInputWidget(),
          ],
        ),
      ),
    );
  }
}

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Masukkan sesuatu',
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            if (controller.text.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Kamu mengetik: ${controller.text}')),
              );
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
