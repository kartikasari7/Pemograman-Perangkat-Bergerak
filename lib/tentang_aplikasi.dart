import 'package:flutter/material.dart';

class TentangAplikasiPage extends StatelessWidget {
  const TentangAplikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: const [
                Icon(Icons.school, size: 32, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  'Aplikasi Demo Form Mahasiswa',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Versi 1.0.0',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Text(
              'Aplikasi ini dikembangkan sebagai contoh sistem input data mahasiswa '
              'dan pengelolaan daftar mahasiswa Universitas Singaperbangsa Karawang.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'Fitur yang tersedia:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Daftar fitur dengan Icon bawaan Flutter:
            ListTile(
              leading: const Icon(Icons.edit, color: Colors.blue),
              title: const Text('Input data mahasiswa'),
            ),
            ListTile(
              leading: const Icon(Icons.list_alt, color: Colors.green),
              title: const Text('Melihat daftar mahasiswa'),
            ),
            ListTile(
              leading: const Icon(Icons.search, color: Colors.orange),
              title: const Text('Pencarian data mahasiswa'),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.grey),
              title: const Text('Informasi dan pengaturan aplikasi'),
            ),

            const SizedBox(height: 24),
            const Center(
              child: Text(
                'Hak Cipta © 2025 Universitas Singaperbangsa Karawang',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
