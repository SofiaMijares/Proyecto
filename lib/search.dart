import 'package:flutter/material.dart';
 
void main() => runApp(Search());
 
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BÚSQUEDA',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BÚSQUEDA'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}