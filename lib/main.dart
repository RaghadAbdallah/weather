import 'dart:async';
//import 'dart:math';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firstpage.dart';
import 'SignUpPage.dart';
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      home: MyHomePage(),
      //theme: ThemeData.dark(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(Duration(seconds:2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:

                (context) =>RegisterPage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 200,),
          Container(

              child:CircleAvatar(backgroundImage:AssetImage('assets/image/ITGlogo.png'),radius: 150,)

          )
          , SizedBox(height: 60,)
          ,Text('Done By Raghad',
            style: TextStyle(
              inherit: false,
              color:Colors.white24,
              fontSize: 20,
            ),)
        ],
      ),
    );
  }
}





/*
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final _fireApp = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      //
    );
  }
}




FutureBuilder(
          future: _fbApp,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              print('you have an error! ${snapshot.error.toString()}');
              return Text('hi');
            } else if (snapshot.hasData) {
              return MyHomePage();
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
 */

