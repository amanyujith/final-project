import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String selectedPage = 'Kerala';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Center(
            child: Text('HOME', style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.lightBlue[200],),
      body: ListView(
        children: [
          SizedBox(height: 30.0,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey
            ),
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            margin: EdgeInsets.only(right: 40,left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/man.gif'),
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Text('Consumer Number  **********'),
                            Text('Phone Number  **********')
                          ],
                        )
                      ],
                    ),
                  ],
            ),
          ),
        SizedBox(height: 20.0,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey
          ),
          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
          margin: EdgeInsets.only(right: 40,left: 40),
          child: Row(
            children: [Text('Live Consumption'),
                SizedBox(width: 20.0,),
              SimpleCircularProgressBar(
                mergeMode: true,
                onGetText: (double value) {
                  return Text('${value.toInt()}%');
                },
              ),
            ],
          ),
        ),
          SizedBox(height: 30.0,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black26
            ),
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            margin: EdgeInsets.only(right: 40,left: 40),
            child: Row(
              children: [
                Text('units amount:'),
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey
              ),
              padding: EdgeInsets.fromLTRB(20, 20, 20, 60),
              margin: EdgeInsets.only(right: 40,left: 40),
              child:Row(
                children: [
                  Center(child: Text('Notifications'))
                ],
              )
          ),
        ],
      )
    );
  }
}
