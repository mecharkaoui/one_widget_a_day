import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'One widget a day'),
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
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('AlertDialog',),
            ElevatedButton(child: Text('Fucking click me'),
            onPressed: () {
              showDialog(context: context, builder: (BuildContext context) => myFirstAlertDialog());
            },)
          ],
        ),
      ),
    );
  }
}
// 12020-11-14 - Alert Diaglog

myFirstAlertDialog() {
  return AlertDialog(
    title: Text('Are you fucking sure you want to do this ?'),
    content: Text('you gotta commit, so are you sure you are sure ?'),
    actions: [
      FlatButton(child: Text('fuck yeah'), onPressed: () {},),
      FlatButton(child: Text('Fuck no'), onPressed: () {},)
    ],
  );

}