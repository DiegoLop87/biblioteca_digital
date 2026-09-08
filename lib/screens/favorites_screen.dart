import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/book_provider.dart';
import '../widgets/book_card.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Lista de Lectura'),
      ),
      body: Consumer<BookProvider>(
        builder: (context, bookProvider, child) {
          final favs = bookProvider.favoritesBooks;
          if (favs.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bookmark_border, size: 80, color: Colors.grey),
                  SizedBox(height: 12),
                  Text(
                    'No tienes libros guardados en tu lista.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: favs.length,
            itemBuilder: (context, index) {
              return BookCard(book: favs[index]);
            },
          );
        },
      ),
    );
  }
}