import 'package:flutter/material.dart';
import 'package:shoes1/Constants/colors.dart';
import 'package:shoes1/Constants/responsive.dart';
import 'package:shoes1/Constants/routes.dart';
import 'package:shoes1/Screens/homepage_screen.dart';
import 'package:shoes1/Widgets/Login%20Screen/upper_text.dart';
import 'package:shoes1/Widgets/Login%20Screen/goto_sign_up_page.dart';
import 'package:shoes1/Widgets/Login%20Screen/login_credential_fields.dart';
import 'package:shoes1/Widgets/Login%20Screen/login_field_text.dart';
import 'package:shoes1/Widgets/Login%20Screen/switch_button.dart';
import 'package:shoes1/Widgets/Login%20Screen/lower_text.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Widgets/Login Screen/loginwith_google_btn.dart';
import '../Widgets/start__login__btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Scaffold(
      /// AppBar
      appBar: AppBar(
        title: Text(
          "Log In",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "SFUIDisplay",
            color: blueColorFlight,
          ),
        ),
        centerTitle: true,
      ),

      /// Body Content ------------------------------
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeightBox(20),

            /// Top text ------------------------------
            UpperText(upperTxt: "Welcome Back!"),
            const HeightBox(5),
            const LowerText(
              lowerText: "Enter password to get back your",
            ),
            const LowerText(
              lowerText: " account!",
            ),
            const HeightBox(24),

            /// Button Login with Google ------------------------------
            LoginwithGoogleBtn(responsive: responsive),
            const HeightBox(25),

            /// Login Credential label And TextFields  ------------------------------
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
            const LoginFieldText(labelText: "Password"),
            const HeightBox(10),

            /// Password Field  ------------------------------
            LoginCredentialFields(
                obsText: true,
                keyboardType: TextInputType.visiblePassword,
                hintText: "Enter your password",
                responsive: responsive),
            const HeightBox(15),

            /// Remember Me Switch   ------------------------------
            const SwitchButton(),
            const HeightBox(15),

            /// Login Button   ------------------------------
            StartLoginBtn(
              responsive: responsive,
              onPressFun: () => MyRoutes.instance.push(
                widget: HomePage(),
                context: context,
              ),
              btnName: "Log in",
            ),

            /// Goto Sign Up Page ----------------------------
            const GotoSignUpPage().pOnly(top: 25)
          ],
        ).pOnly(
          left: 20,
          right: 20,
        ),
      ),
    );
  }
}
