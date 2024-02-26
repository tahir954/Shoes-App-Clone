import 'package:flutter/material.dart';

import '../../Constants/colors.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Switch(
            splashRadius: 30,
            activeColor: blueColorFlight,
            value: rememberMe,
            onChanged: (value) {
              //print(rememberMe.toString());
              setState(() {
                rememberMe = value;
              });
            },
          ),
          Text(
            'Remember me',
            style: TextStyle(
              fontFamily: "SFUIDisplay",
              color: blueColorFlight,
            ),
          ),
        ],
      ),
    );
  }
}
