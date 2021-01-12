import 'package:flutter/material.dart';

import 'customAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ClipPath(
            clipper: CustomAppBar(),
            child: Container(
              color: Colors.redAccent,
              child: Column( mainAxisAlignment: MainAxisAlignment.center ,children: <Widget>[
              Text('I am awesome' , style: TextStyle(color: Colors.white, fontSize: 25),),
            ],),),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight + 150)),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Dummy Text' , style: TextStyle(color: Colors.red, fontSize: 30),)],
        ),
      ),
    );
  }
}