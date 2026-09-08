import 'package:flutter/material.dart';
import '../models/book.dart';
import '../widgets/favorite_button.dart';

class DetailScreen extends StatelessWidget {
  final Book book;

  const DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.titulo),
        actions: [
          FavoriteButton(book: book),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  book.imagenUrl,
                  height: 240,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 200,
                    width: 140,
                    color: Colors.brown[100],
                    child: const Icon(Icons.book, size: 80, color: Colors.brown),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              book.titulo,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              'Por ${book.autor}',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Chip(
                  avatar: const Icon(Icons.category, size: 16),
                  label: Text(book.categoria),
                ),
                const SizedBox(width: 8),
                Chip(
                  avatar: const Icon(Icons.star, color: Colors.amber, size: 16),
                  label: Text('${book.rating}'),
                ),
                const SizedBox(width: 8),
                Chip(
                  avatar: const Icon(Icons.pages, size: 16),
                  label: Text('${book.paginas} pág.'),
                ),
              ],
            ),
            const Divider(height: 32),
            const Text(
              'Sinopsis',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              book.descripcion,
              style: const TextStyle(fontSize: 15, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}