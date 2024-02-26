import 'package:flutter/material.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/routes.dart';
import 'package:shoes1/Screens/sign_up_screen.dart';

class GotoSignUpPage extends StatelessWidget {
  const GotoSignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Align(
        alignment: Alignment.center,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(
                    color: blueColorFlight,
                    decoration: TextDecoration.underline,
                    fontSize: 15),
              ),
              const TextSpan(
                text: 'Sign Up now! ',
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () =>
          MyRoutes.instance.push(widget: SignUpPage(), context: context),
    );
  }
}
