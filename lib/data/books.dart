import 'dart:html';

import 'package:flutter/cupertino.dart';

class Book{
  late AssetImage bookIcon;
  late String bookTitle;
  late String author;
  late int numOfPages;

  Book({ required this.bookIcon, required this.bookTitle,
    required this.author,  required this.numOfPages});

  Book.withoutAuthor({required this.bookIcon, required this.bookTitle});

}