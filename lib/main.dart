import 'package:flutter/material.dart';

import 'CV_App/cv_app.dart';
import 'Language/langList.dart';

bool auth=false;
Lang string=Lang();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var id =Lang.arabic;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo'),
      home: AppBar_App(),
      routes: {
        'AppBar_App': (context) {
          return const AppBar_App();
        }
      },
    );
  }
}
