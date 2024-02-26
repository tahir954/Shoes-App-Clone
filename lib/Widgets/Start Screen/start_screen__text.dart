import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../Constants/colors.dart';

class StartScreenText extends StatelessWidget {
  const StartScreenText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BorderedText(
            strokeColor: blueColorFlight,
            strokeWidth: 3,
            child: const Text(
              'The',
              style: TextStyle(
                  fontFamily: "SFUIDisplay", fontSize: 50, color: Colors.white),
            ),
          ),
          BorderedText(
            strokeColor: blueColorFlight,
            strokeWidth: 3,
            child: Text(
              'Awesome',
              style: TextStyle(
                fontFamily: "SFUIDisplay",
                fontSize: 50,
                color: blueColorFlight,
              ),
            ),
          ),
          BorderedText(
            strokeColor: blueColorFlight,
            strokeWidth: 3,
            child: const Text(
              'Branded',
              style: TextStyle(
                  fontFamily: "SFUIDisplay", fontSize: 50, color: Colors.white),
            ),
          ),
          BorderedText(
            strokeColor: blueColorFlight,
            strokeWidth: 3,
            child: Text(
              'Shoes',
              style: TextStyle(
                fontFamily: "SFUIDisplay",
                fontSize: 50,
                color: blueColorFlight,
              ),
            ),
          ),
          Text(
            'Enjoy your vacation with  our \nsuper comfy shoes',
            style: TextStyle(
                color: lightTxtColor, fontFamily: "SFUIDisplay", fontSize: 15),
          )
        ],
      ).pOnly(left: 25),
    );
  }
}
