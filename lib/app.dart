
import 'package:chrmock2/pages/fetchdatacat.dart';
//import 'package:chrmock2/pages/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static String mblue = '#009EEE';
  static String mbluehex = mblue.replaceAll("#", "");
  static Color mbluecol =
      Color(int.parse(mbluehex, radix: 16)).withOpacity(1.0);

  static String mred = '#BF0021';
  static String mredhex = mred.replaceAll("#", "");
  static Color mredcol =
      Color(int.parse(mredhex, radix: 16)).withOpacity(1.0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chroniques.sn',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
         // Define the default Brightness and Colors
    // brightness: Brightness.dark,
    brightness: Brightness.light,
    primaryColor: mbluecol,
    accentColor: mredcol,
    
    // // Define the default Font Family
    // fontFamily: 'Montserrat',
    fontFamily: 'Oswald',
    
    
    // // Define the default TextTheme. Use this to specify the default
    // // text styling for headlines, titles, bodies of text, and more.
    // textTheme: TextTheme(
    //   headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    //   title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    //   body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    // ),
      ),
 //     home: MyHomePage(title: 'Accueil Chroniques'),
    home: FetchDataCat (category: 1, page: 1),
 //home: Center(child: Text('Hello'),),
    );
  }
}

