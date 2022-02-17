import 'package:flutter/cupertino.dart';
import 'package:i_s_reader/analytics/reading_time.dart';
import 'package:i_s_reader/assessment_history/assessment_display.dart';
import 'package:i_s_reader/provider/navigation_provider.dart';
import 'package:i_s_reader/study_progress/progress.dart';
import 'package:i_s_reader/widget/splash.dart';
import 'package:i_s_reader/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Splash()
  )
  );
}

class MyApp extends StatelessWidget {
  static final String title = 'My Dashboard';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      // title: title,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  int itemBuilder = 3;
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey,
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(68, 96, 242, 1.0),
      title: Text(MyApp.title),
      centerTitle: true,
    ),
    body:Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
              Expanded(child: ReadingTime()),

              SizedBox(height: 10,),

             Expanded(child:StudyProgress() ),

          SizedBox(height: 10,),
          
          Expanded(child: AssessmentDisplay())
            ],

      ),
    )

  );
}