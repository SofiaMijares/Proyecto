import 'package:flutter/material.dart';
import 'package:proyectov1/avisoprivacidad.dart';
import 'package:proyectov1/search.dart';


class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontFamily:'Akzidenz Grotesk Light', fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xffE7E7E7),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
      return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Search()
            )
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff00467F), Color(0xff00467F)])
          ),
          child: Text('INGRESAR',
            style: 
            TextStyle(
              fontSize: 15, 
              color: Colors.white
            ),
          ),
      ),
    );
  }////UNIR CON HOME POP CONTEXT

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  

  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          /*Text(
            'Aviso de Privacidad',
            style: TextStyle(fontFamily:'Akzidenz Grotesk Light', fontSize: 13, color: Colors.white),
          ),*/
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AvisoPrivacidad()));
            },
            child: 
            Text(
              'Aviso de Privacidad',
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                  fontSize: 13,
                  fontFamily:'Akzidenz Grotesk Light',
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _title() {
    return  Column(
          children: <Widget>[
            Container(
            padding: EdgeInsets.symmetric(vertical: 20)
            ),
            Image.asset(
                'assets/images/itesologo_blue.png'
                ),
          ]
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email id"),
        _entryField("Password", isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffffffff), Color(0xffffffff)]
              )
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: SizedBox(),
                      ),
                      _title(),
                      SizedBox(
                        height: 50,
                      ),
                      _emailPasswordWidget(),
                      SizedBox(
                        height: 20,
                      ),
                      _submitButton(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.bottomCenter,
                        child: Text('¿Tienes problemas para ingresar?',
                            style:
                                TextStyle(fontFamily:'Akzidenz Grotesk Light', fontSize: 14, fontWeight: FontWeight.w500, color: Colors.blue)),
                      ),
                      _divider(),
                      Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _createAccountLabel(),
                ),
                //Positioned(top: 40, left: 0, child: _backButton()),
              ],
            ),
          )
        )
      );
  }
}
