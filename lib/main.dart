import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftwebapp/homepage.dart';
import 'dashboardscreen.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFT Compare',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme,),
          scrollbarTheme: ScrollbarThemeData().copyWith(
              thumbColor: MaterialStateProperty.all(Color.fromRGBO(158, 180, 219, 1)),radius: Radius.circular(10)
          )
      ),
      routes: {
        '/dashboard': (context) =>  DashboardScreen()
      },
      home: HomeScreen(),
      builder: EasyLoading.init(),
    );
  }
}




