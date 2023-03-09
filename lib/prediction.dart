import 'package:flutter/material.dart';
class prediction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Bill Prediction',style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.lightBlue[200],      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(25, 70, 25, 100),
        height: 50.0,
        width: 300.0,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          'My Value',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      )

    );
  }
}