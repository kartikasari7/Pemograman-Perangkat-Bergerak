import 'package:flutter/material.dart';
import 'form_style.dart';

class FormMahasiswa extends StatefulWidget {
  const FormMahasiswa({super.key});

  @override
  State<FormMahasiswa> createState() => _FormMahasiswaState();
}

class _FormMahasiswaState extends State<FormMahasiswa> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController npmController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    namaController.dispose();
    npmController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Mahasiswa")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: namaController,
              decoration: FormStyle.inputDecoration("Nama Lengkap"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: npmController,
              decoration: FormStyle.inputDecoration("NPM"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              decoration: FormStyle.inputDecoration("Email"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: FormStyle.buttonStyle(),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Data Mahasiswa Disimpan")),
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
