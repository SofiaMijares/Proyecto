import 'package:flutter/material.dart';
 
void main() => runApp(AvisoPrivacidad());
 
class AvisoPrivacidad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AVISO PRIVACIDAD'),
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