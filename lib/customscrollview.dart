import 'package:flutter/material.dart';

class myCustomScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            title: Text('Active tidbits '),
            expandedHeight: 150.0,
            flexibleSpace: Container(width: double.infinity,
            height: 140.0,
            color: Colors.yellow
            ),

          ),
          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
            ],


          ),
          SliverAppBar(
            pinned: true,
            expandedHeight: 150.0,
            title: Text('dormant tidbits'),

          ),
          SliverGrid.count(
            crossAxisCount: 3,
            children: [
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
              Text('one'), Text('two'), Text('three'),
              Text('four'), Text('five'), Text('six'),
            ],


          ),
        ],
      ),
    );
  }
}
