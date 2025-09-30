import 'package:flutter/material.dart';

class PengaturanPage extends StatefulWidget {
  final bool isDarkTheme;
  final String selectedLanguage;
  final Function(bool) onThemeChanged;
  final Function(String) onLanguageChanged;

  const PengaturanPage({
    super.key,
    required this.isDarkTheme,
    required this.selectedLanguage,
    required this.onThemeChanged,
    required this.onLanguageChanged,
  });

  @override
  State<PengaturanPage> createState() => _PengaturanPageState();
}

class _PengaturanPageState extends State<PengaturanPage> {
  late bool _isDarkTheme;
  late String _selectedLanguage;

  // 🔥 Map untuk terjemahan
  final Map<String, Map<String, String>> translations = {
    'Indonesia': {
      'settings': 'Pengaturan',
      'darkTheme': 'Tema Gelap',
      'darkThemeSub': 'Aktifkan tema gelap aplikasi',
      'language': 'Bahasa',
      'languageSub': 'Pilih bahasa aplikasi',
    },
    'English': {
      'settings': 'Settings',
      'darkTheme': 'Dark Theme',
      'darkThemeSub': 'Enable dark theme',
      'language': 'Language',
      'languageSub': 'Choose app language',
    },
  };

  @override
  void initState() {
    super.initState();
    _isDarkTheme = widget.isDarkTheme;
    _selectedLanguage = widget.selectedLanguage;
  }

  @override
  Widget build(BuildContext context) {
    final t = translations[_selectedLanguage]!; // ambil terjemahan sesuai bahasa

    return Scaffold(
      appBar: AppBar(title: Text(t['settings']!)),
      body: ListView(
        children: [
          // Tema Gelap
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: Text(t['darkTheme']!),
            subtitle: Text(t['darkThemeSub']!),
            value: _isDarkTheme,
            onChanged: (bool value) {
              setState(() {
                _isDarkTheme = value;
              });
              widget.onThemeChanged(value); // callback ke main
            },
          ),

          // Bahasa
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(t['language']!),
            subtitle: Text(t['languageSub']!),
            trailing: DropdownButton<String>(
              value: _selectedLanguage,
              items: const [
                DropdownMenuItem(value: 'Indonesia', child: Text('Indonesia')),
                DropdownMenuItem(value: 'English', child: Text('English')),
              ],
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedLanguage = newValue;
                  });
                  widget.onLanguageChanged(newValue); // callback ke main
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
