import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal, // Mengubah warna latar belakang
      appBar: AppBar(
        title: const Text('Halaman Sederhana'),
        backgroundColor: Colors.teal[900], // Warna gelap dari teal
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.home,
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 20), // Memberikan jarak antara icon dan text
            const Text(
              'Selamat Datang di Flutter!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tindakan yang terjadi ketika tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Tombol Ditekan!'),
                  ),
                );
              },
              child: const Text('Tekan Saya'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
