import 'package:flutter/material.dart';

class DaftarMatkulPage extends StatelessWidget {
  const DaftarMatkulPage({super.key});

  // contoh data mata kuliah
  final List<Map<String, String>> dataMatkul = const [
    {
      'kode': 'IF101',
      'nama': 'Pemrograman Dasar',
      'sks': '3 SKS',
      'dosen': 'Dr. Andi Setiawan'
    },
    {
      'kode': 'IF102',
      'nama': 'Basis Data',
      'sks': '3 SKS',
      'dosen': 'Dr. Bunga Setiana'
    },
    {
      'kode': 'IF103',
      'nama': 'Struktur Data',
      'sks': '3 SKS',
      'dosen': 'Dr. Charlie Setiawan'
    },
    {
      'kode': 'IF104',
      'nama': 'Sistem Operasi',
      'sks': '3 SKS',
      'dosen': 'Dr. Dewi Lestari'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Mata Kuliah'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dataMatkul.length,
        itemBuilder: (context, index) {
          final matkul = dataMatkul[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.indigo,
                child: Text(
                  matkul['kode']!.substring(0, 2),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(matkul['nama']!,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(
                  "${matkul['kode']} • ${matkul['sks']} • ${matkul['dosen']}"),
            ),
          );
        },
      ),
    );
  }
}
