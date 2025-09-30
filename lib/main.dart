
import 'package:flutter/material.dart';
import 'form_mahasiswa.dart';
import 'form_dosen.dart';
import 'form_matkul.dart';
import 'daftar_mahasiswa.dart';
import 'daftar_dosen.dart';
import 'daftar_matkul.dart';
import 'pengaturan.dart';
import 'tentang_aplikasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;
  String _selectedLanguage = 'Indonesia';

  void _toggleTheme(bool isDark) {
    setState(() {
      _isDarkTheme = isDark;
    });
  }

  void _changeLanguage(String lang) {
    setState(() {
      _selectedLanguage = lang;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Akademik',
      theme: _isDarkTheme
          ? ThemeData.dark()
          : ThemeData(primarySwatch: Colors.indigo),
      home: HomePage(
        isDarkTheme: _isDarkTheme,
        selectedLanguage: _selectedLanguage,
        onThemeChanged: _toggleTheme,
        onLanguageChanged: _changeLanguage,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool isDarkTheme;
  final String selectedLanguage;
  final Function(bool) onThemeChanged;
  final Function(String) onLanguageChanged;

  const HomePage({
    super.key,
    required this.isDarkTheme,
    required this.selectedLanguage,
    required this.onThemeChanged,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Utama"), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.indigo),
              accountName: Text(
                "Aplikasi Akademik",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              accountEmail: Text("Versi 1.0.0"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.school, color: Colors.indigo, size: 36),
              ),
            ),
            _menuItem(
                context, Icons.person_add, "Form Mahasiswa", const FormMahasiswa()),
            _menuItem(context, Icons.list_alt, "Daftar Mahasiswa",
                const DaftarMahasiswaPage()),
            _menuItem(context, Icons.badge, "Form Dosen", const FormDosen()),
            _menuItem(context, Icons.people, "Daftar Dosen",
                const DaftarDosenPage()),
            _menuItem(
                context, Icons.book, "Form Mata Kuliah", const FormMatkul()),
            _menuItem(context, Icons.menu_book, "Daftar Mata Kuliah",
                const DaftarMatkulPage()),
            const Divider(),
            _menuItem(context, Icons.info, "Tentang Aplikasi",
                const TentangAplikasiPage()),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Pengaturan"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PengaturanPage(
                      isDarkTheme: isDarkTheme,
                      selectedLanguage: selectedLanguage,
                      onThemeChanged: onThemeChanged,
                      onLanguageChanged: onLanguageChanged,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.school, size: 120, color: Colors.indigo), // Topi wisuda
              SizedBox(height: 30),
              Text(
                "Selamat Datang",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),
              Text(
                "Aplikasi Akademik Versi 1.0.0\nKelola data mahasiswa, dosen, dan mata kuliah dengan mudah.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _menuItem(
      BuildContext context, IconData icon, String title, Widget page) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
    );
  }
}
