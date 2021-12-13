import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookContainer{
  NetworkImage image;
  String text;
  BookContainer({required this.image, required this.text});

  Widget setBookContainer(){
    return Expanded(child: Card(
      // margin: EdgeInsets.fromLTRB(15, 20.0, 10.0, 10.0),
      // height: MediaQuery.of(context).size.height * .3,
      // width: MediaQuery.of(context).size.width * 1,
      color: Colors.white,
      child: Padding(padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Image(image: image,)),
            SizedBox(height: 10,),
            Text('$text',
            style: TextStyle(color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    )
    );


  }

}