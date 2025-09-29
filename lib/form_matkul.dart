import 'package:flutter/material.dart';

class FormMatkul extends StatefulWidget {
  const FormMatkul({super.key});

  @override
  State<FormMatkul> createState() => _FormMatkulState();
}

class _FormMatkulState extends State<FormMatkul> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController kodeController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController sksController = TextEditingController();

  String output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Mata Kuliah")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: kodeController,
                decoration: const InputDecoration(labelText: "Kode Matkul"),
              ),
              TextFormField(
                controller: namaController,
                decoration: const InputDecoration(labelText: "Nama Matkul"),
              ),
              TextFormField(
                controller: sksController,
                decoration: const InputDecoration(labelText: "SKS"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    output =
                        "Kode: ${kodeController.text}\nNama: ${namaController.text}\nSKS: ${sksController.text}";
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
