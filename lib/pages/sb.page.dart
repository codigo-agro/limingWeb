import 'package:liming_web/widgets/logo.widget.dart';
import 'package:liming_web/widgets/submitsb.form.widget.dart';
import 'package:liming_web/widgets/sucess.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'package:liming_web/pages/choice.method.page.dart';

import 'package:google_fonts/google_fonts.dart';

class SbPage extends StatefulWidget {
  @override
  _SbPageState createState() => _SbPageState();
}

class _SbPageState extends State<SbPage> {
  Color _color = Colors.brown;

  var _busy = false;

  var _completed = false;

  var _resultText = "Vou escrever algo aqui";

  var _caCtrl = new MoneyMaskedTextController();

  var _mgCtrl = new MoneyMaskedTextController();

  var _kCtrl = new MoneyMaskedTextController();

  var _naCtrl = new MoneyMaskedTextController();

  var _halCtrl = new MoneyMaskedTextController();

  var _v2Ctrl = new MoneyMaskedTextController();

  var _camCtrl = new MoneyMaskedTextController();

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
              : SubmitFormSb(
                  caCtrl: _caCtrl,
                  mgCtrl: _mgCtrl,
                  kCtrl: _kCtrl,
                  naCtrl: _naCtrl,
                  halCtrl: _halCtrl,
                  v2Ctrl: _v2Ctrl,
                  camCtrl: _camCtrl,
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
    double k =
        double.parse(_kCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double na =
        double.parse(_naCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double hal =
        double.parse(_halCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double v2 =
        double.parse(_v2Ctrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double cam =
        double.parse(_camCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double kmod = k / 390;
    double namod = na / 230;
    double sb = kmod + namod + ca + mg;
    double ctc = sb + hal;
    double v1 = (sb / ctc) * 100;
    double cammod = cam / 20;
    double res = (ctc * (v2 - v1)) / 100 * cammod;

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
        const Duration(seconds: 3),
        () => {
              setState(() {
                String ress = res.toStringAsFixed(2);
                _resultText = "A necessidade de calagem é de " +
                    ress +
                    " toneladas/ha para a espessura de camada de solo informada";
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
      _kCtrl = new MoneyMaskedTextController();
      _naCtrl = new MoneyMaskedTextController();
      _halCtrl = new MoneyMaskedTextController();
      _v2Ctrl = new MoneyMaskedTextController();
      _camCtrl = new MoneyMaskedTextController();

      _completed = false;
      _busy = false;
    });
  }
}