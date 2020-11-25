import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // print("build function run!!!");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Choose A Location'),
        centerTitle: true,
      ),
      body: RaisedButton(
        onPressed: () => {
          setState(() {
            counter += 1;
          }),
        },
        child: Text(
          'Counter is $counter',
          style: TextStyle(color: Colors.grey, fontSize: 25),
        ),
      ),
    );
  }
}
