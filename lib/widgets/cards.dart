

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Container(
      child: CreditCardWidget(
        cardHolderName: "UGUR RATES",
        cardNumber: "4349627545701019",
       expiryDate: "09/22",
        cvvCode: "124",
        onCreditCardWidgetChange: (val){

        },
        showBackView: false,

      ),

    ));
  }
}
