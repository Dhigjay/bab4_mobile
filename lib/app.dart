import 'package:flutter/material.dart';
import 'screens/halaman_satu.dart';
import 'screens/halaman_dua.dart';
import 'screens/halaman_input_nama.dart';
import 'screens/halaman_hasil_nama.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "bab 4",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
        ),
        useMaterial3: true,
      ),
      home: HalamanInputNama(),
    );
  }
}