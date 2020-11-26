import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:one_widget_a_day/customscrollview.dart';
import 'package:one_widget_a_day/draggable.dart';

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
        child: ListView(

          children: <Widget>[
            Text('AlertDialog',),
            ElevatedButton(child: Text('Fucking click me'),
            onPressed: () {
              showDialog(context: context, builder: (BuildContext context) => myFirstAlertDialog());
            },),
            myBanner(),
            myGridView(),
            ElevatedButton(
              child: Text('myCustomScrollView'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => myCustomScrollView()));
              },
            ),
            ElevatedButton(
              child: Text('draggable'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DraggableScreen()));
              },
            ),
           /* Container(
              width: 250,
              height: 250,
              child: CircularProgressIndicator(
                value: null,
                strokeWidth: 2,
                backgroundColor: Colors.grey,

              ),
            ),*/
            DataTable(
              columns: [
                DataColumn(label: Text('tidbit'),),
                DataColumn(label: Text('progress'),),
                DataColumn(label: Text('levels'),),


              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('bluetooth')),
                    DataCell(Text('1/4')),
                    DataCell(Text('2/3')),



                  ]
                ),
                DataRow(
                    cells: [
                      DataCell(Text('UHF')),
                      DataCell(Text('3/5')),
                      DataCell(Text('1/1')),
                    ]
                ),
                DataRow(
                    cells: [
                      DataCell(Text('UTI')),
                      DataCell(Text('0/2')),
                      DataCell(Text('0/1')),



                    ]
                )


              ],
            ),
            myDismissible()




          ],
        ),
      ),
    );
  }
}


// 12020-11-16 - CUSTOMSCROLLVIEW



// 12020-11-15 - Banner and GridView
class myBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Banner(
      message: '20 % learned',
      location: BannerLocation.topEnd,
      layoutDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        height: 200,
        color: Colors.amber,
        child: Text('there is a banner here'),
      ),
    );
  }
}

class myGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      mainAxisSpacing: 10,
      crossAxisCount: 6,
      children: [
        Text('one'), Text('two'), Text('three'),
        Text('four'), Text('five'), Text('six')
      ],

    );
  }
}

class myDismissible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      child: ListTile(
        title: Container(
            height:  100.0,
            color: Colors.purple,
            child: Text('not swiped'))
      ),
      background: Container(
        child: Center(child: Text('bye bye')),
        color: Colors.blue
      ),
      key: ValueKey(''),
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

