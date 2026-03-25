import 'package:flutter/material.dart';
import 'basic_widgets/step3_widget.dart';
import 'basic_widgets/step4_widget.dart';
import 'basic_widgets/step5_widget.dart';
import 'basic_widgets/step6_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Praktikum - Soal 3',
      home: Scaffold(
        appBar: AppBar(title: const Text('Tugas Praktikum - Soal 3')),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Step3Widget(),
                SizedBox(height: 15),
                Step4Widget(),
                SizedBox(height: 15),
                Step5Widget(),
                SizedBox(height: 15),
                Step6Widget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
