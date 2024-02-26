import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Provider/theme_provider.dart';
import 'Screens/start_screen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(
    Duration(seconds: 5),
  );
  FlutterNativeSplash.remove();
  runApp(const MyAppParent());
}

class MyAppParent extends StatefulWidget {
  const MyAppParent({super.key});

  @override
  State<MyAppParent> createState() => _MyAppParentState();
}

class _MyAppParentState extends State<MyAppParent> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Builder(builder: (context) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
            theme: themeProvider.themeData,
            debugShowCheckedModeBanner: true,
            home: StartPage());
      }),
    );
  }
}
