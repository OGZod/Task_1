import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hngx/task_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: MyThemes.darkTheme,
      theme: MyThemes.lightTheme,
      home: const Task1(),
    );
  }
}

class MyThemes{
  static final lightTheme =  ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(
          background: Colors.white
      ),
      primaryColor:Colors.black,

      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Colors.white
          )
      ),



  );

  static final darkTheme =  ThemeData(

    scaffoldBackgroundColor: Colors.black54,

    colorScheme: const ColorScheme.dark(
        background: Colors.black54
    ),
    primaryColor:Colors.white,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black54,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black54,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarColor: Colors.black54
        )
    ),

  );
}