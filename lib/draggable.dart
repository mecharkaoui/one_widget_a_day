import 'package:flutter/material.dart';

class DraggableScreen extends StatefulWidget {
  @override
  _DraggableScreenState createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column( 
          mainAxisSize: MainAxisSize.max,
          children: [
            Draggable<Text>(
              data: Text('hello'),
              child: Container(
                height: 300,
                width: 300,
                color: Colors.purpleAccent,
                child: Text('not being dragged'),

              ),
              childWhenDragging: Container(
                height: 300,
                width: 300,
                color: Colors.green,
                child: Text('being dragged'),

              ),
              feedback: Text('over'),
            ),
            DragTarget(
              onWillAccept: (data) {if( data == Text('hello') ) {
                return true;
              } else {return false;}},
              onAccept: (data) { Text('accpeted');},
              builder: (context, candidates, rejects) {
                return candidates.length > 0
                    ?  myText(dragged: candidates[0])
                    : Text('haha');

              },
            )
          ],
        ),
      ),
    );
  }
}

class myText extends StatefulWidget {
  final Text dragged;
  myText({this.dragged});
  @override
  _myTextState createState() => _myTextState();
}

class _myTextState extends State<myText> {
  @override
  Widget build(BuildContext context) {
    return widget.dragged;
  }
}

