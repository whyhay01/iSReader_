
import 'package:flutter/cupertino.dart';

class Book{
  late int bookId;
  late NetworkImage bookIcon;
  late String bookTitle;
  late String path;
  // late String author;
  // late int numOfPages;

  Book({ required this.bookId, required this.bookIcon, required this.bookTitle,
     required this.path});

  Book.withoutAuthor({required this.bookIcon, required this.bookTitle});

}