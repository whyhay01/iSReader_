import 'package:flutter/cupertino.dart';
import 'package:i_s_reader/data/books.dart';
class BookModel{

    List<Book> books = [
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

}