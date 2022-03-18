import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('RESULTS')),
      ),
      body: Container(
        child: Center(
          child: Text("Happy Results")
        ),
      )
    );
  }
}
