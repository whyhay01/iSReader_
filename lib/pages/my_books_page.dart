import 'package:flutter/material.dart';
import 'package:i_s_reader/my-book-container/junior_class_one.dart';
import 'package:i_s_reader/pages/setting_page.dart';

class MyBooksPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            bottom: TabBar(indicatorColor: Colors.white,
              indicatorSize:TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  // icon: Icon(Icons.book),
                child: Text('JSS 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
                ),
                ),

                Tab(
                  // icon: Icon(Icons.book),
                  child: Text('JSS 2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                    ),
                  ),
                ),

                Tab(
                  // icon: Icon(Icons.book),
                  child: Text('JSS 3',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1
                    ),
                  ),
                )

            ],),
            title: Text('My Books',
            style: TextStyle(
              color: Colors.white
            ),),
            centerTitle: false,
            backgroundColor: Color(PerformancePage.backgroundColor),
          ),
          body: TabBarView(children: [
            JuniorClassOne(),
            JuniorClassOne(),
            JuniorClassOne()
          ],),
        ),


      )


    );

  }
}