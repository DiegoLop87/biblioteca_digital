import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/book.dart';
import '../providers/book_provider.dart';

class FavoriteButton extends StatelessWidget {
  final Book book;

  const FavoriteButton({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Consumer<BookProvider>(
      builder: (context, bookProvider, child) {
        final isFav = bookProvider.isFavorite(book.id);
        return IconButton(
          icon: Icon(
            isFav ? Icons.bookmark : Icons.bookmark_border,
            color: isFav ? Colors.brown[800] : Colors.grey,
          ),
          onPressed: () {
            bookProvider.toggleFavorite(book);
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  isFav
                      ? '"${book.titulo}" se quitó de tus guardados.'
                      : '"${book.titulo}" se agregó a tus guardados.',
                ),
                duration: const Duration(seconds: 2),
              ),
            );
          },
        );
      },
    );
  }
}