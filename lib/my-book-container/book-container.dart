import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookContainer extends StatefulWidget {
  NetworkImage image;
  String text;
  Function bookOnPressed;

   BookContainer({Key? key,
    required this.image,
    required this.text,
    required this.bookOnPressed}) : super(key: key);

  @override
  _BookContainerState createState() => _BookContainerState();
}

class _BookContainerState extends State<BookContainer> {
  @override
  Widget setBookContainer(){
    return Expanded(child: Card(
      // margin: EdgeInsets.fromLTRB(15, 20.0, 10.0, 10.0),
      // height: MediaQuery.of(context).size.height * .3,
      // width: MediaQuery.of(context).size.width * 1,
      color: Colors.white,
      child: Padding(padding: EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Image(image: widget.image,)),
            SizedBox(height: 10,),
            Expanded(child:FlatButton.icon(label:Text('$widget.text',
                style: TextStyle(color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.normal)
            ),
              onPressed: widget.bookOnPressed(),
              icon: Icon(Icons.accessibility_sharp,size: 0.1,),
            ),)




          ],
        ),
      ),
    )
    );


  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  // bookOnPressed() {}
}





