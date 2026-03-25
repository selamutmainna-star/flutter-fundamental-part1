import 'package:flutter/material.dart';

class Step5Widget extends StatelessWidget {
  const Step5Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.green[50],
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'Langkah 5: Date Picker',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const DatePickerWidget(),
          ],
        ),
      ),
    );
  }
}

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          selectedDate == null
              ? 'Belum memilih tanggal'
              : 'Tanggal terpilih: ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}',
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () async {
            DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              setState(() {
                selectedDate = picked;
              });
            }
          },
          child: const Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}
