import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatefulWidget {
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  bool status = true;

  @override
  Widget build(BuildContext context) {
    return CustomSwitch(
              
              activeColor: Colors.black,
              value: status,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  status = value;
                });
              },
            );
  }
}