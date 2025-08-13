import 'package:flutter/material.dart';
import 'package:hearth/utils/themes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: myAppTheme.myThemes,
      initialRoute: '/intro',
      routes: {
      //  '/intro': (context) => (),
      },
     
    );
  }
}
