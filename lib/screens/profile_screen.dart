import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/book_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoritesCount = context.watch<BookProvider>().favoritesCount;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Lector'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.brown,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 12),
            const Text(
              'Diego Javier López Zambrano',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Usuario Registrado · Atenea Library',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Card(
              child: ListTile(
                leading: const Icon(Icons.bookmark, color: Colors.brown),
                title: const Text('Libros en lista de lectura'),
                trailing: Text(
                  '$favoritesCount',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.verified, color: Colors.green),
                title: Text('Estado de Membresía'),
                trailing: Text(
                  'Activa',
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}