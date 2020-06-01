import 'package:liming_web/widgets/logo.widget.dart';
import 'package:liming_web/widgets/submital.form.widget.dart';
import 'package:liming_web/widgets/sucess.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'package:liming_web/pages/choice.method.page.dart';

import 'package:google_fonts/google_fonts.dart';

class AlPage extends StatefulWidget {
  @override
  _AlPageState createState() => _AlPageState();
}

class _AlPageState extends State<AlPage> {
  Color _color = Colors.brown;

  var _busy = false;

  var _completed = false;

  var _resultText = "Vou escrever algo aqui";

  var _caCtrl = new MoneyMaskedTextController();

  var _mgCtrl = new MoneyMaskedTextController();

  var _yCtrl = new MoneyMaskedTextController();

  var _alCtrl = new MoneyMaskedTextController();

  var _xCtrl = new MoneyMaskedTextController();

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
          _completed
              ? Success(
                  result: _resultText,
                  reset: reset,
                )
              : SubmitFormAl(
                  caCtrl: _caCtrl,
                  mgCtrl: _mgCtrl,
                  arCtrl: _yCtrl,
                  alCtrl: _alCtrl,
                  xCtrl: _xCtrl,
                  busy: _busy,
                  submitFunc: calculate,
                ),
          SizedBox(
            height: 5,
          ),
          Image.asset(
            'assets/images/caLogo.png',
            height: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 30,
            margin: EdgeInsets.only(
              left: 500,
              right: 500,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChoiceMethod();
                }));
              },
              child: Text(
                "Escolher outro Método",
                style: GoogleFonts.merriweather(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future calculate() {
    double ca =
        double.parse(_caCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double mg =
        double.parse(_mgCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double y =
        double.parse(_yCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double al =
        double.parse(_alCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double x =
        double.parse(_xCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
        const Duration(seconds: 3),
        () => {
              setState(() {
                _resultText = "Formulas ainda sendo criadas";
                _busy = false;
                _completed = true;
              })
            });
  }

  reset() {
    setState(() {
      _color = Colors.deepPurple;
      _caCtrl = new MoneyMaskedTextController();
      _mgCtrl = new MoneyMaskedTextController();
      _yCtrl = new MoneyMaskedTextController();
      _alCtrl = new MoneyMaskedTextController();
      _xCtrl = new MoneyMaskedTextController();

      _completed = false;
      _busy = false;
    });
  }
}