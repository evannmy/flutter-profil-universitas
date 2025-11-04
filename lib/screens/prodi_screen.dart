import 'package:flutter/material.dart';
import 'package:profil_universitas/models/fakultas.dart'; // Import model

class ProdiScreen extends StatelessWidget {
  // Menerima data yang dikirim dari FakultasScreen
  final Fakultas fakultas;

  const ProdiScreen({super.key, required this.fakultas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Judul AppBar diambil dari data yang diterima
        title: Text(fakultas.nama, style: TextStyle(color: Color(0xFFE6C131))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Program Studi:',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white, // <-- Tambahkan .copyWith() ini
              ),
            ),
            const SizedBox(height: 10),

            // IMPLEMENTASI WIDGET: ListView.builder untuk menampilkan daftar prodi
            Expanded(
              // Gunakan Expanded agar ListView mengisi sisa ruang
              child: ListView.builder(
                itemCount: fakultas.prodi.length,
                itemBuilder: (context, index) {
                  final prodi = fakultas.prodi[index];
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(prodi, style: const TextStyle(fontSize: 16)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
