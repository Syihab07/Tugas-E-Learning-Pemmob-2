import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Sederhana',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profil Sederhana'),
          backgroundColor: Colors.teal,
        ),
        body: const ProfileLayout(),
      ),
    );
  }
}

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Memberi jarak di sekeliling konten
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Foto Profil
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.JPG'),
          ),
          const SizedBox(height: 16),

          // Nama dan Deskripsi
          const Text(
            'Muhamad Ilham Syihabudin',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'Fotografer & Videografer',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),

          // Informasi tambahan dalam Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              InfoCard(icon: Icons.camera_alt, label: 'Fotografi'),
              InfoCard(icon: Icons.movie, label: 'Videografi'),
              InfoCard(icon: Icons.edit, label: 'Editing'),
            ],
          ),

          const SizedBox(height: 30),

          // Tombol Aksi
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text('Lihat Portofolio'),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget kecil untuk menampilkan ikon dan label
class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const InfoCard({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.teal, size: 30),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
