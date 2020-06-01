import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'input.widget.dart';
import 'loading.buttom.widget.dart';

class SubmitFormAl extends StatelessWidget {
  var caCtrl = new MoneyMaskedTextController();
  var mgCtrl = new MoneyMaskedTextController();
  var arCtrl = new MoneyMaskedTextController();
  var alCtrl = new MoneyMaskedTextController();
  var xCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitFormAl({
    @required this.caCtrl,
    @required this.mgCtrl,
    @required this.arCtrl,
    @required this.alCtrl,
    @required this.xCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 500,
            right: 500,
          ),
          child: Input(
            label: 'Ca (cmolc/dm³)',
            ctrl: caCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 500,
            right: 500,
          ),
          child: Input(
            label: 'Mg (cmolc/dm³)',
            ctrl: mgCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 500,
            right: 500,
          ),
          child: Input(
            label: 'Argila (%)',
            ctrl: arCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 500,
            right: 500,
          ),
          child: Input(
            label: 'Al (cmolc/dm³)',
            ctrl: alCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 500,
            right: 500,
          ),
          child: Input(
            label: 'X (cmolc/dm³)',
            ctrl: xCtrl,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        LoadingButtom(
          busy: busy,
          func: submitFunc,
          invert: false,
          text: "CALCULAR",
        ),
      ],
    );
  }
}

class LoadingButton {}