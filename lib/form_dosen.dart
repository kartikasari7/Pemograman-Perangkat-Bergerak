import 'package:flutter/material.dart';

class FormDosen extends StatefulWidget {
  const FormDosen({super.key});

  @override
  State<FormDosen> createState() => _FormDosenState();
}

class _FormDosenState extends State<FormDosen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nidnController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController homebaseController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController notlpController = TextEditingController();

  String output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Dosen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nidnController,
                decoration: const InputDecoration(labelText: "NIDN"),
              ),
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(labelText: "Nama Dosen"),
              ),
              TextFormField(
                controller: homebaseController,
                decoration: const InputDecoration(labelText: "Home Base"),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextFormField(
                controller: notlpController,
                decoration: const InputDecoration(labelText: "No Telepon"),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    output =
                        "NIDN: ${nidnController.text}\nNama: ${namaController.text}\nHome Base: ${homebaseController.text}\nEmail: ${emailController.text}\nNo Tlp: ${notlpController.text}";
                  });
                },
                child: const Text("Simpan"),
              ),
              const SizedBox(height: 20),
              Text(output),
            ],
          ),
        ),
      ),
    );
  }
}
