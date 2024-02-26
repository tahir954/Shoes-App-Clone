import 'package:flutter/material.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Constants/routes.dart';
import 'package:shoes1/Screens/homepage_screen.dart';
import 'package:shoes1/Widgets/start__login__btn.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Widgets/Login Screen/login_credential_fields.dart';
import '../Widgets/Login Screen/login_field_text.dart';
import '../Widgets/Login Screen/loginwith_google_btn.dart';
import '../Widgets/Login Screen/lower_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "SFUIDisplay",
              color: blueColorFlight),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeightBox(20),

            /// Top text ------------------------------
            Text(
              "Create an Account",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                fontFamily: "SFUIDisplay",
                color: blueColorFlight,
              ),
            ),
            const HeightBox(5),
            const LowerText(
              lowerText: "Enter email address to create an",
            ),
            const LowerText(
              lowerText: " account!",
            ),
            const HeightBox(24),

            /// Button Login with Google ------------------------------
            LoginwithGoogleBtn(responsive: responsive),
            const HeightBox(25),

            /// SignUp Credential label And TextFields  ------------------------------
            ///
            /// Username label
            const LoginFieldText(labelText: "Username"),
            const HeightBox(10),

            /// Username Field ------------------------------
            LoginCredentialFields(
              obsText: false,
              keyboardType: TextInputType.text,
              hintText: "Enter username",
              responsive: responsive,
            ),
            const HeightBox(15),

            /// Email label ------------------------------
            const LoginFieldText(labelText: "Email"),
            const HeightBox(10),

            /// Email Field ------------------------------
            LoginCredentialFields(
              obsText: false,
              keyboardType: TextInputType.emailAddress,
              hintText: "Enter your email",
              responsive: responsive,
            ),
            const HeightBox(15),

            /// Password label ------------------------------
            const LoginFieldText(labelText: "Password"),
            const HeightBox(10),

            /// Password Field  ------------------------------
            LoginCredentialFields(
                obsText: true,
                keyboardType: TextInputType.visiblePassword,
                hintText: "Enter your password",
                responsive: responsive),
            const HeightBox(15),
            StartLoginBtn(
              responsive: responsive,
              onPressFun: () => MyRoutes.instance.push(
                widget: HomePage(),
                context: context,
              ),
              btnName: "Log in",
            ),
          ],
        ).pOnly(left: 20, right: 20),
      ),
    );
  }
}
