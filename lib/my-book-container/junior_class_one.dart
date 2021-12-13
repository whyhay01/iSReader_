import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:i_s_reader/data/books.dart';
import 'package:i_s_reader/model/book_model.dart';
import 'package:i_s_reader/my-book-container/book-container.dart';

class JuniorClassOne extends StatefulWidget {


  @override
  _JuniorClassOneState createState() => _JuniorClassOneState();
}

class _JuniorClassOneState extends State<JuniorClassOne> {

  BookModel bookModel = BookModel();


  @override
  Widget build(BuildContext context) {
    // var books = bookModel.books;
    return GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 10,
      padding: EdgeInsets.all(10.0),

    children: bookModel.books.map((book)=> BookContainer(image: book.bookIcon,
    text: book.bookTitle).setBookContainer()
    ).toList());
  }
}
