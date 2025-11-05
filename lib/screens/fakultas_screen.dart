import 'package:flutter/material.dart';
import 'package:profil_universitas/models/fakultas.dart';
import 'package:profil_universitas/screens/prodi_screen.dart';
import 'package:profil_universitas/constants.dart'; // Import constants

class FakultasScreen extends StatelessWidget {
  const FakultasScreen({super.key});

  // Fungsi helper untuk memilih ikon berdasarkan nama fakultas
  IconData _getIconForFakultas(String namaFakultas) {
    final nama = namaFakultas
        .toLowerCase(); // Ubah ke huruf kecil untuk pencocokan

    // 1. Fakultas agama islam
    if (nama.contains('agama islam')) {
      return Icons.mosque; // Ikon masjid
    }
    // 6. Fakultas kedokteran gigi
    else if (nama.contains('gigi')) {
      return Icons.medical_services; // Ikon layanan medis (spesifik)
    }
    // 7. Fakultas kedokteran
    else if (nama.contains('kedokteran')) {
      return Icons.local_hospital; // Ikon rumah sakit
    }
    // 5. Fakultas ilmu kesehatan
    else if (nama.contains('kesehatan')) {
      return Icons.health_and_safety; // Ikon kesehatan & keselamatan
    }
    // 2. Fakultas sains & teknologi
    else if (nama.contains('sains') && nama.contains('teknologi')) {
      return Icons.science; // Ikon sains/ilmuwan
    }
    // 4. Fakultas psikologi & ilmu pendidikan
    else if (nama.contains('psikologi')) {
      return Icons.psychology; // Ikon psikologi
    }
    // 3. Fakultas bisnis hukum & ilmu sosial
    else if (nama.contains('bisnis') || nama.contains('hukum')) {
      return Icons.business_center; // Ikon bisnis/koper
    } else if (nama.contains('sosial')) {
      return Icons.groups; // Ikon grup/sosial
    }
    // Fallback untuk 'ilmu pendidikan' dari no. 4
    else if (nama.contains('pendidikan')) {
      return Icons.school; // Ikon sekolah/pendidikan
    }

    // Ikon default jika tidak ada yang cocok
    return Icons.school;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar Fakultas',
          style: TextStyle(color: Color(0xFFE6C131)),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0), // Beri padding pada list
        itemCount: daftarFakultas.length,
        itemBuilder: (context, index) {
          final fakultas = daftarFakultas[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16.0), // Jarak antar kartu
            child: InkWell(
              borderRadius: BorderRadius.circular(12.0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdiScreen(fakultas: fakultas),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Lingkaran Ikon
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: kPrimaryBlue.withOpacity(
                        0.1,
                      ), // Warna BG ikon
                      child: Icon(
                        _getIconForFakultas(fakultas.nama),
                        size: 30,
                        color: kPrimaryBlue, // Warna ikon
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Teks (Nama Fakultas & Dekan)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fakultas.nama,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: kDarkText,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Dekan: ${fakultas.dekan}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Ikon Panah
                    Icon(
                      Icons.chevron_right,
                      color: Colors.grey[400],
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
