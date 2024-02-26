import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginwithGoogleBtn extends StatelessWidget {
  const LoginwithGoogleBtn({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: responsive.heightPercent(6),
      child: MaterialButton(
        onPressed: () {},
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/Svgs/google_logo.svg')
                .pOnly(right: 10),
            Text(
              "Continue with Google",
              style: TextStyle(
                color: blueColorFlight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
