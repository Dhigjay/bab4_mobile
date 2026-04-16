import 'package:flutter/material.dart';
import 'halaman_hasil_nama.dart';

class HalamanInputNama extends StatefulWidget {
  const HalamanInputNama({super.key});

  @override
  State<HalamanInputNama> createState() => _HalamanInputNamaState();
}

class _HalamanInputNamaState extends State<HalamanInputNama> {
  final TextEditingController _namaController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _alamatController.dispose();
    super.dispose();
  }

  void _kirimData() {
    final nama = _namaController.text.trim();
    final alamat = _alamatController.text.trim();

    if (nama.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Nama tidak boleh kosong'),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HalamanHasilNama(nama: nama),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Nama'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Masukkan nama Anda:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _kirimData,
              child: const Text('Kirim ke Halaman Hasil'),
            ),
          ],
        ),
      ),
    );
  }
}