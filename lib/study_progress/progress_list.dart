import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressList{
  ListView listView = ListView();

  Widget getProgressList(){
    listView = ListView(
      children: [
        ListTile(
            leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZS5e3bSkWXK2ePsGrpH5l2dbP4NivLoAJmQ&usqp=CAU'),
          height: 40,
          width: 40,),
          title:Text('Mathematics',
          style: setTextStyle(),),
          subtitle: LinearProgressIndicator(
            color: Color(0xffc4c4c4),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4460f2)),
            minHeight: 2,
            value: 0.4,
          ),
          trailing: Icon(Icons.menu)
        ),
        ListTile(
            leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZS5e3bSkWXK2ePsGrpH5l2dbP4NivLoAJmQ&usqp=CAU'),
              height: 40,
              width: 40,),
            title: Text('English Language',
              style: setTextStyle(),),
            subtitle: LinearProgressIndicator(
              color: Color(0xffc4c4c4),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4460f2)),
              minHeight: 2,
              value: 0.4,
            ),
            trailing: Icon(Icons.menu)
        ),
        ListTile(
            leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZS5e3bSkWXK2ePsGrpH5l2dbP4NivLoAJmQ&usqp=CAU'),
              height: 40,
              width: 40,),
            title: Text('Basic Technology',
              style: setTextStyle(),),
            subtitle: LinearProgressIndicator(
              color: Color(0xffc4c4c4),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4460f2)),
              minHeight: 2,
              value: 0.4,
            ),
            trailing: Icon(Icons.menu)
        ),
        ListTile(
            leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZS5e3bSkWXK2ePsGrpH5l2dbP4NivLoAJmQ&usqp=CAU'),
              height: 40,
              width: 40,),
            title: Text('Chemistry',
              style: setTextStyle(),),
            subtitle: LinearProgressIndicator(
              color: Color(0xffc4c4c4),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4460f2)),
              minHeight: 2,
              value: 0.4,
            ),
            trailing: Icon(Icons.menu)
        ),
        ListTile(
            leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZS5e3bSkWXK2ePsGrpH5l2dbP4NivLoAJmQ&usqp=CAU'),
              height: 40,
              width: 40,),
            title: Text('Physics',
              style: setTextStyle(),),
            subtitle: LinearProgressIndicator(
              color: Color(0xffc4c4c4),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4460f2)),
              minHeight: 2,
              value: 0.4,
            ),
            trailing: Icon(Icons.menu)
        ),
        ListTile(
            leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZS5e3bSkWXK2ePsGrpH5l2dbP4NivLoAJmQ&usqp=CAU'),
              height: 40,
              width: 40,
            alignment: Alignment.centerLeft,),
            title: Text('Agricultural Science',
              style: setTextStyle(),),
            subtitle: LinearProgressIndicator(
              color: Color(0xffc4c4c4),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4460f2)),
              minHeight: 2,
              value: 0.4,
            ),
            trailing: Icon(Icons.menu)
        ),
        ListTile(
            leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZS5e3bSkWXK2ePsGrpH5l2dbP4NivLoAJmQ&usqp=CAU'),
              height: 40,
              width: 40,),
            title: Text('Civic Education',
              style: setTextStyle(),),
            subtitle: LinearProgressIndicator(
              color: Color(0xffc4c4c4),
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff4460f2)),
              minHeight: 2,
              value: 0.4,
            ),
            trailing: Icon(Icons.menu)
        )
      ],
    );

    return listView;
  }

  TextStyle setTextStyle(){
    return TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1
    );
  }
}