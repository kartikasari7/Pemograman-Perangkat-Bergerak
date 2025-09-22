import 'package:flutter/material.dart';

class DaftarMahasiswaPage extends StatelessWidget {
  const DaftarMahasiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // contoh data dummy
    final mahasiswa = [
      {
        'nama': 'Andi Setiawan',
        'nim': '18041001',
        'fakultas': 'Fakultas Ilmu Komputer',
        'prodi': 'Informatika',
        'email': 'andi@mail.com',
        'hp': '081234567890',
        'alamat': 'Jl. Melati No. 10'
      },
      {
        'nama': 'Budi Prasetyo',
        'nim': '18041002',
        'fakultas': 'Fakultas Ekonomi & Bisnis',
        'prodi': 'Manajemen',
        'email': 'budi@mail.com',
        'hp': '082134567891',
        'alamat': 'Jl. Mawar No. 12'
      },
      {
        'nama': 'Citra Dewi',
        'nim': '18041003',
        'fakultas': 'Fakultas Ilmu Sosial & Politik',
        'prodi': 'Ilmu Komunikasi',
        'email': 'citra@mail.com',
        'hp': '083134567892',
        'alamat': 'Jl. Kenanga No. 5'
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Mahasiswa')),
      body: mahasiswa.isEmpty
          ? const Center(child: Text('Belum ada data mahasiswa'))
          : ListView.builder(
              itemCount: mahasiswa.length,
              itemBuilder: (context, index) {
                final m = mahasiswa[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  child: ListTile(
                    leading: const Icon(Icons.person, size: 40),
                    title: Text(
                      m['nama']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("NIM: ${m['nim']}"),
                        Text("Fakultas: ${m['fakultas']}"),
                        Text("Prodi: ${m['prodi']}"),
                        Text("Email: ${m['email']}"),
                        Text("HP: ${m['hp']}"),
                        Text("Alamat: ${m['alamat']}"),
                      ],
                    ),
                    isThreeLine: true,
                  ),
                );
              },
            ),
    );
  }
}
