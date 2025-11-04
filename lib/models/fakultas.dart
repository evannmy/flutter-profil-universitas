class Fakultas {
  final String nama;
  final String dekan;
  final List<String> prodi;

  Fakultas({required this.nama, required this.dekan, required this.prodi});
}

// Data Dummy
final List<Fakultas> daftarFakultas = [
  Fakultas(
    nama: 'Fakultas Agama Islam',
    dekan: 'Dr. Ida Rindaningsih, M.Pd.',
    prodi: [
      'S1 - Pendidikan Agama Islam',
      'S1 - Pendidikan Bahasa Arab',
      'S1 - Pendidikan Guru MI',
      'S1 - Perbankan Syariah',
      'S2 - Magister Manajemen Pendidikan Islam',
    ],
  ),
  Fakultas(
    nama: 'Fakultas Sains & Teknologi',
    dekan: 'Ir. Iswanto, ST., M.MT.',
    prodi: [
      'S1 - Informatika',
      'S1 - Teknik Elektro',
      'S1 - Teknik Industri',
      'S1 - Agroteknologi',
      'S1 - Teknik Pangan',
      'S1 - Teknik Sipil',
      'S1 - Teknik Mesin',
      'S2 - Magister Inovasi Sistem dan Teknologi',
    ],
  ),
  Fakultas(
    nama: 'Fakultas Bisnis Hukum & Ilmu Sosial',
    dekan: 'Poppy Febriana, M.Med.Kom.',
    prodi: [
      'S1 - Akuntansi',
      'S1 - Administrasi Publik',
      'S1 - Ilmu Komunikasi',
      'S1 - Hukum',
      'S1 - Manajemen',
      'S1 - Bisnis Digital',
      'S2 - Magister Manajemen',
    ],
  ),
  Fakultas(
    nama: 'Fakultas Psikologi & Ilmu Pendidikan',
    dekan: 'Dr. Septi Budi Sartika, M.Pd.',
    prodi: [
      'S1 - Psikologi',
      'S1 - Pendidikan Guru PAUD',
      'S1 - Pendidikan Guru SD',
      'S1 - Pendidikan Bahasa Inggris',
      'S1 - Pendidikan IPA',
      'S1 - Pendidikan Teknologi Informasi',
      'S2 - Pendidikan Dasar',
    ],
  ),
  Fakultas(
    nama: 'Fakultas Ilmu Kesehatan',
    dekan: 'Evi Rinata, SST., M.Keb',
    prodi: [
      'S1 - Pendidikan Profesi Bidan',
      'S1 - Fisioterapi',
      'D4 - Teknologi Laboratorium Medis',
      'D4 - Manajemen Informasi Kesehatan',
    ],
  ),
  Fakultas(
    nama: 'Fakultas Kedokteran Gigi',
    dekan: 'Lila Muntadir, Sp.Ort',
    prodi: ['S1 - Kedokteran Gigi'],
  ),
  Fakultas(
    nama: 'Fakultas Kedokteran',
    dekan: 'Dr. Ronny Sutanto, MARS, Sp.OT (K)',
    prodi: ['S1 - Kedokteran Umum'],
  ),
];
