import 'package:flutter/material.dart';
import 'halaman_dua.dart';

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Satu'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HalamanDua(),
              ),
            );
          },
          child: const Text('Pindah ke Halaman Dua'),
        ),
      ),
    );
  }
}