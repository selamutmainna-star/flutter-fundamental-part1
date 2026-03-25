import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog")),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Sela Mutmainna"),
                content: const Text("Hello 👋"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
