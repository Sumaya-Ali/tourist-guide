import 'package:flutter/material.dart';
import 'package:tourist_guide/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 static Map<int, Color> color =
  {
    50:Color.fromRGBO(102, 129, 155, .1),
    100:Color.fromRGBO(102, 129, 155, .2),
    200:Color.fromRGBO(102, 129, 155, .3),
    300:Color.fromRGBO(102, 129, 155, .4),
    400:Color.fromRGBO(102, 129, 155, .5),
    500:Color.fromRGBO(102, 129, 155, .6),
    600:Color.fromRGBO(102, 129, 155, .7),
    700:Color.fromRGBO(102, 129, 155, .8),
    800:Color.fromRGBO(102, 129, 155, .9),
    900:Color.fromRGBO(102, 129, 155, 1),
  };
 //add 0xFF before color in Hex ex: #66819b
 final MaterialColor colorCustom = MaterialColor(0xFF66819b, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AE'),
      ],
      theme: ThemeData(
        primarySwatch: colorCustom,
        accentColor: Colors.amber,
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
          headline5: TextStyle(
            color: colorCustom,
            fontSize: 24,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
          ),
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.bold,
            )
        )
      ),
      home: CategoriesScreen(),
    );
  }
}

