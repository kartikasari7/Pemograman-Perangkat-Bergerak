import 'package:flutter/material.dart';
import 'form_style.dart';

class FormDosen extends StatefulWidget {
  const FormDosen({super.key});

  @override
  State<FormDosen> createState() => _FormDosenState();
}

class _FormDosenState extends State<FormDosen> {
  final TextEditingController nidnController = TextEditingController();
  final TextEditingController namaDosenController = TextEditingController();
  final TextEditingController homeBaseController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telpController = TextEditingController();

  @override
  void dispose() {
    nidnController.dispose();
    namaDosenController.dispose();
    homeBaseController.dispose();
    emailController.dispose();
    telpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Dosen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: nidnController,
                decoration: FormStyle.inputDecoration("NIDN"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: namaDosenController,
                decoration: FormStyle.inputDecoration("Nama Dosen"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: homeBaseController,
                decoration: FormStyle.inputDecoration("Home Base"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: emailController,
                decoration: FormStyle.inputDecoration("Email"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: telpController,
                decoration: FormStyle.inputDecoration("No Telepon"),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: FormStyle.buttonStyle(),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Data Dosen Disimpan")),
                  );
                },
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
