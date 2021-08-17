import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {
VoidCallback buttonPressed;

  RaisedButtonWidget(this.buttonPressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(child:Text('Change Text') , onPressed: buttonPressed),
    );
  }
}
