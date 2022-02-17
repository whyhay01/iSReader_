import 'dart:convert';
import 'dart:developer';

import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:i_s_reader/data/books.dart';
import 'package:i_s_reader/model/book_model.dart';
import 'package:i_s_reader/my-book-container/EpubViewer_Page.dart';
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

    children: bookModel.books.map<Widget>((book)=> BookContainer(image: book.bookIcon,
    text: book.bookTitle, bookOnPressed: (){onClickBook(book.path, book.bookId, book.bookTitle);})
    ).toList());
  }

  void onClickBook(path, bookId, bookTitle) async {
    EpubViewer.setConfig(
        themeColor: Colors.black,
        identifier: bookTitle, //"iosBook na hin dey there before"
        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        allowSharing: true,
        enableTts: true,
        nightMode: true
    );

    await EpubViewer.openAsset(path,
        lastLocation: EpubLocator.fromJson({
          bookId: bookId,
          "href": "/OEBPS/ch06.xhtml", //copied from source EpubViewer example
          "created": 1539934158390,  //copied from source EpubViewer example
          "locations": {
            "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
          }//copied from source EpubViewer example
        })
    );

    EpubViewer.locatorStream.listen((locator) {
      print(
          'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
    });
  }


    // void openPDF(BuildContext context, path, bookId, bookTitle) => Navigator.of(context).push(
    //   MaterialPageRoute(builder: (context) => EpubViewerPage(path: path, bookId: bookId, bookTitle: bookTitle)).,
    // );

}
