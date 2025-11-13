import 'package:flutter/material.dart';
// 1. Tambahkan import untuk kPrimaryBlue
import 'package:profil_universitas/constants.dart';

class VisiMisiScreen extends StatelessWidget {
  const VisiMisiScreen({super.key});

  // 2. Tambahkan fungsi helper _buildListPoint
  /// Widget helper untuk membuat poin daftar yang rapi (Nomor + Teks)
  Widget _buildListPoint(String number, String text) {
    return ListTile(
      // Slot 'leading' khusus untuk nomor poin
      leading: Text(
        number,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: kPrimaryBlue, // Beri warna agar menonjol
        ),
      ),
      // Slot 'title' untuk teks konten
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          height: 1.4, // Beri spasi antar baris agar mudah dibaca
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Visi & Misi',
          style: TextStyle(color: Color(0xFFE6C131)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Visi Universitas',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),

            // Card Visi (Tetap sama, karena ini paragraf tunggal)
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Menjadi perguruan tinggi unggul dan inovatif dalam pengembangan IPTEKS berdasarkan nilai-nilai Islam untuk kesejahteraan masyarakat.',
                  style: TextStyle(fontSize: 16, height: 1.4),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Misi Universitas',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),

            // 3. IMPLEMENTASI BARU: Card "Misi" (Lebih mudah dibaca)
            Card(
              child: Padding(
                // Padding di dalam Card dikurangi agar ListTile pas
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    _buildListPoint(
                      '1.',
                      'Menyelenggarakan pendidikan dan pengajaran secara profesional sesuai perkembangan IPTEKS berdasarkan nilai-nilai Islam.',
                    ),
                    _buildListPoint(
                      '2.',
                      'Meningkatkan penelitian yang mendukung proses pembelajaran dan pengembangan IPTEKS untuk kesejahteraan masyarakat.',
                    ),
                    _buildListPoint(
                      '3.',
                      'Meningkatkan pengabdian kepada masyarakat untuk kesejahteraan masyarakat.',
                    ),
                    _buildListPoint(
                      '4.',
                      'Meningkatkan kerjasama dengan lembaga di dalam dan luar negeri.',
                    ),
                    _buildListPoint(
                      '5.',
                      'Meningkatkan tata kelola secara professional berdasarkan nilai-nilai Islam.',
                    ),
                    _buildListPoint(
                      '6.',
                      'Meningkatkan pembinaan dan pengembangan kemahasiswaan berdasarkan nilai-nilai Islam.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Tujuan',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),

            // 4. IMPLEMENTASI BARU: Card "Tujuan"
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    _buildListPoint(
                      '1.',
                      'Menghasilkan lulusan yang profesional dalam penguasaan IPTEKS berdasarkan nilai- nilai Islam.',
                    ),
                    _buildListPoint(
                      '2.',
                      'Menghasilkan penelitian untuk kesejateraan masyarakat.',
                    ),
                    _buildListPoint(
                      '3.',
                      'Mewujudkan pengabdian kepada masyarakat untuk kesejahteraan masyarakat.',
                    ),
                    _buildListPoint(
                      '4.',
                      'Mewujudkan kerjasama dengan lembaga di dalam dan luar negeri untuk penguatan Catur Dharma Perguruan Tinggi Muhammadiyah.',
                    ),
                    _buildListPoint(
                      '5.',
                      'Mewujudkan kemandirian perguruan tinggi dengan tata kelola yang profesional berdasarkan nilai- nilai Islam',
                    ),
                    _buildListPoint(
                      '6.',
                      'Meningkatkan prestasi akademik dan non akademik mahasiswa.',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Sasaran',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 10),

            // 5. IMPLEMENTASI BARU: Card "Sasaran"
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    _buildListPoint(
                      '1.',
                      'Peningkatan kemampuan mahasiswa dalam penguasaan dan pengembangan IPTEKS berdasarkan nilai-nilai Islam.',
                    ),
                    _buildListPoint(
                      '2.',
                      'Peningkatan kapasitas dan kinerja penelitian dosen dan mahasiswa yang mendukung proses pembelajaran dan pengembangan IPTEKS.',
                    ),
                    _buildListPoint(
                      '3.',
                      'Peningkatan manfaat hasil penelitian untuk kesejahteraan masyarakat.',
                    ),
                    _buildListPoint(
                      '4.',
                      'Peningkatan kapasitas dan kinerja pengabdian kepada masyarakat untuk kesejahteraan masyarakat.',
                    ),
                    _buildListPoint(
                      '5.',
                      'Peningkatan dan perluasan kerjasama dengan lembaga dalam dan luar negeri.',
                    ),
                    _buildListPoint(
                      '6.',
                      'Penguatan tata kelola dan kelembagaan secara profesional berdasarkan nilai-nilai Islam.',
                    ),
                    _buildListPoint(
                      '7.',
                      'Peningkatan etos kerja dan perilaku organisasi yang sesuai dengan nilai-nilai Islam dan Kemuhammadiyahan.',
                    ),
                    _buildListPoint(
                      '8.',
                      'Peningkatan kemampuan mahasiswa dalam pencapaian prestasi.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
