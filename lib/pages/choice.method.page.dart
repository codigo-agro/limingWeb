
import 'package:liming_web/pages/home.page.dart';
import 'package:liming_web/pages/sb.page.dart';
import 'package:liming_web/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:liming_web/pages/al.page.dart';

import 'package:google_fonts/google_fonts.dart';

class ChoiceMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF2b1d0e),
      ),
      backgroundColor: Color(0xFF2b1d0e),
      body: ListView(
        children: <Widget>[
          Logo(),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 350,
              right: 350,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SbPage();
                }));
              },
              child: Text(
                "Método da Saturação por Bases",
                style: GoogleFonts.merriweather(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 350,
              right: 350,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AlPage();
                }));
              },
              child: Text(
                "Em Construção - Neutralização do Alumínio e Elevação do Ca e Mg",
                style: GoogleFonts.merriweather(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 350,
              right: 350,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Em Construção - Guarçoni e Sobreira (2017)",
                style: GoogleFonts.merriweather(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/images/caLogo.png',
            height: 70,
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 500,
              right: 500,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyHomePage();
                }));
              },
              icon: Icon(Icons.home),
              iconSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}