import 'package:flutter/material.dart';
import '../models/book.dart';
import '../data/books_data.dart';

class BookProvider with ChangeNotifier {
  final List<Book> _books =realBookList;
  final List<Book> _favoritesBooks = [];

  List<Book> get books => [..._books];
  List<Book> get favoritesBooks => [..._favoritesBooks]; 
  int get favoritesCount => _favoritesBooks.length;

  bool isFavorite(String bookId){
    return _favoritesBooks.any((book) => book.id == bookId);
  }
  
  void toggleFavorite(Book book){
    final isFav = isFavorite(book.id);
    if (isFav){
      _favoritesBooks.removeWhere((item) => item.id == book.id);
    }else {
      _favoritesBooks.add(book);
    }
    notifyListeners();
  }
}