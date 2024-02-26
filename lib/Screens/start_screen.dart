import 'package:flutter/material.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Constants/routes.dart';
import 'package:shoes1/Widgets/start__login__btn.dart';
import 'package:shoes1/Widgets/Start%20Screen/start_screen__text.dart';
import 'package:velocity_x/velocity_x.dart';

import 'login_screen.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/Shoes/start_shoe.png',
          ),
          const StartScreenText(),
          StartLoginBtn(
            responsive: responsive,
            onPressFun: () => MyRoutes.instance.push(
              widget: const LoginPage(),
              context: context,
            ),
            btnName: "Get Started",
          ).pOnly(left: 20, right: 20),
        ],
      ),
    );
  }
}
