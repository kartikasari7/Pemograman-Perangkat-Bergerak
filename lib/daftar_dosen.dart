import 'package:flutter/material.dart';

class DaftarDosenPage extends StatelessWidget {
  const DaftarDosenPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Contoh data dummy dosen (nanti bisa diganti dari database/list sebenarnya)
    final List<Map<String, String>> dosenList = [
      {"nidn": "12345678", "nama": "Dr. Ahmad Fauzi", "homebase": "Informatika"},
      {"nidn": "87654321", "nama": "Prof. Siti Aminah", "homebase": "Sistem Informasi"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Dosen")),
      body: ListView.builder(
        itemCount: dosenList.length,
        itemBuilder: (context, index) {
          final dosen = dosenList[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(dosen["nama"] ?? ""),
              subtitle: Text("NIDN: ${dosen["nidn"]} | Homebase: ${dosen["homebase"]}"),
            ),
          );
        },
      ),
    );
  }
}
