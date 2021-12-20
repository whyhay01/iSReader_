import 'package:flutter/cupertino.dart';
import 'package:i_s_reader/data/books.dart';
class BookModel{

    List<Book> booksDummy = [
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://cdn0.iconfinder.com/data/icons/tutor-icon-set/512/set_of_three_books-512.png'), bookTitle: 'Mathematics'),
    Book.withoutAuthor(
          bookIcon: NetworkImage('https://cdn0.iconfinder.com/data/icons/tutor-icon-set/512/set_of_three_books-512.png'), bookTitle: 'English Language'),
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-U4QC3yfji7qsdTTPZovRs69ePoHvv9BxB5m2UXVKxnFD71Bp3PtpEFZh922va5i5Ko&usqp=CAU'), bookTitle: 'Physics'),
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://cdn0.iconfinder.com/data/icons/tutor-icon-set/512/set_of_three_books-512.png'), bookTitle: 'Chemistry'),
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-U4QC3yfji7qsdTTPZovRs69ePoHvv9BxB5m2UXVKxnFD71Bp3PtpEFZh922va5i5Ko&usqp=CAU'), bookTitle: 'Biology'),
      Book.withoutAuthor(
          bookIcon:NetworkImage( 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpzx0QVE1isCdqQo3_E61j1SbEqxA202r7hg&usqp=CAU'), bookTitle: 'Elementary Science'),
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-U4QC3yfji7qsdTTPZovRs69ePoHvv9BxB5m2UXVKxnFD71Bp3PtpEFZh922va5i5Ko&usqp=CAU'), bookTitle: 'Animal Husbandry'),
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://cdn0.iconfinder.com/data/icons/tutor-icon-set/512/set_of_three_books-512.png'), bookTitle: 'Social Studies'),
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB-U4QC3yfji7qsdTTPZovRs69ePoHvv9BxB5m2UXVKxnFD71Bp3PtpEFZh922va5i5Ko&usqp=CAU'), bookTitle: 'Agricultural Science'),
      Book.withoutAuthor(
          bookIcon: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpzx0QVE1isCdqQo3_E61j1SbEqxA202r7hg&usqp=CAU'),bookTitle: 'Basic Technology')
      ];

    List<Book> books = [
      Book(bookId: 1,
          bookIcon: NetworkImage('https://edupodia.com/wp-content/uploads/2020/11/JSS1-Complete-Agricultural-Science.png'),
          bookTitle: 'Agric Jss1',
          path: 'assets/agric_science_jss1.epub'),

      Book(bookId: 2,
          bookIcon: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAUmSqeLw8jmBpDvJhNqn-mJVr2X-R7p0Scw&usqp=CAU'),
          bookTitle:'Agric Jss2',
          path: 'assets/agric_science_jss2.epub'),

      Book(bookId: 3,
          bookIcon: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4_gK-KMd2uY6LcO-w2TGAgYb4tgRUqWdnKg&usqp=CAU'),
          bookTitle: 'Agric Jss3',
          path:'assets/agric_science_jss1.epub' )
      
    ];

}