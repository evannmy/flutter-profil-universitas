import 'package:flutter/material.dart';

class AgendaScreen extends StatelessWidget {
  const AgendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agenda Kampus',
          style: TextStyle(color: Color(0xFFE6C131)), // Warna kuning
        ),
        // AppBar ini akan otomatis punya tombol kembali (back button)
      ),
      body: Center(
        child: Text(
          'Halaman Agenda Kampus',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
