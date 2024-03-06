import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Widgets/HomePage/Bottom Navigation/bottom_nav_bar.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Bottom NavBar
      floatingActionButton: const BottomNavigation().pOnly(left: 15, right: 30),
      appBar: AppBar(),
    );
  }
}
