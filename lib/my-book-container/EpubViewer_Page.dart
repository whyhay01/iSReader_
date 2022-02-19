
import 'dart:convert';

import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';

class EpubViewerPage{
  late String path;
  late int bookId;
  late String bookTitle ;

  EpubViewerPage({required this.path, required this.bookId, required this.bookTitle});

  void viewEpub(){
    EpubViewer.setConfig(
        themeColor: Colors.black,
        identifier: bookTitle, //"iosBook na hin dey there before"
        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        allowSharing: true,
        enableTts: true,
        nightMode: true
    );
    EpubViewer.openAsset(path,
    lastLocation: EpubLocator.fromJson({
        "bookId": bookTitle,
        "href": "/OEBPS/ch06.xhtml", //copied from source EpubViewer example
        "created": 1539934158390,  //copied from source EpubViewer example
        // "locations": {
        // "cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"
        // }
        })
    );

    EpubViewer.locatorStream.listen((locator) {
      print(
          'LOCATOR: ${EpubLocator.fromJson(jsonDecode(locator))}');
    });
  }


}
