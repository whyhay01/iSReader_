import 'package:flutter/cupertino.dart';
import 'package:i_s_reader/data/books.dart';

List<Book> books = [
  Book.withoutAuthor(bookIcon: AssetImage('assets/maths.png'), bookTitle: 'Mathematics'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/english.png'), bookTitle: 'English Language'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/book_icon.jpg'), bookTitle: 'Physics'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/book_icon.jpg'), bookTitle: 'Chemistry'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/book_icon.jpg'), bookTitle: 'Biology'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/book_icon.jpg'), bookTitle: 'Economics'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/book_icon.jpg'), bookTitle: 'Animal Husbandry'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/book_icon.jpg'), bookTitle: 'Social Studies'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/book_icon.jpg'), bookTitle: 'Agricultural Science'),
  Book.withoutAuthor(bookIcon: AssetImage('assets/basic_technology.jpg'), bookTitle: 'Basic Technology'),
];