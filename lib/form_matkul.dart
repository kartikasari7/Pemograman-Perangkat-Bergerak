import 'package:flutter/material.dart';
import 'form_style.dart';

class FormMatkul extends StatefulWidget {
  const FormMatkul({super.key});

  @override
  State<FormMatkul> createState() => _FormMatkulState();
}

class _FormMatkulState extends State<FormMatkul> {
  final TextEditingController kodeMatkulController = TextEditingController();
  final TextEditingController namaMatkulController = TextEditingController();
  final TextEditingController sksController = TextEditingController();

  @override
  void dispose() {
    kodeMatkulController.dispose();
    namaMatkulController.dispose();
    sksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Mata Kuliah")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: kodeMatkulController,
              decoration: FormStyle.inputDecoration("Kode Mata Kuliah"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: namaMatkulController,
              decoration: FormStyle.inputDecoration("Nama Mata Kuliah"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: sksController,
              decoration: FormStyle.inputDecoration("Jumlah SKS"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: FormStyle.buttonStyle(),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Data Mata Kuliah Disimpan")),
                );
              },
              child: const Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
