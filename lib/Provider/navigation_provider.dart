import 'package:flutter/foundation.dart';

import '../Model/navigation_model.dart';

class FabIconsProvider with ChangeNotifier {
  final List<FabIcon> _icons = [
    FabIcon(
      iconPath: "assets/images/Svgs/home.svg",
      isSelected: true,
      pageIndex: 1,
    ),
    FabIcon(
      iconPath: "assets/images/Svgs/discover.svg",
      isSelected: false,
      pageIndex: 2,
    ),
    FabIcon(
      iconPath: "assets/images/Svgs/cart.svg",
      isSelected: false,
      pageIndex: 3,
    ),
    FabIcon(
      iconPath: "assets/images/Svgs/message.svg",
      isSelected: false,
      pageIndex: 4,
    ),
    FabIcon(
      iconPath: "assets/images/Svgs/profile.svg",
      isSelected: false,
      pageIndex: 5,
    ),
  ];

  int get selectedIndex {
    return _icons.indexWhere((icon) {
      return icon.isSelected;
    });
  }

  List<FabIcon> get icons => List.unmodifiable(_icons);

  void selectIcon(int index) {
    for (var icon in _icons) {
      icon = icon.copyWith(isSelected: false);
    } // Use copyWith
    _icons[index] = _icons[index].copyWith(isSelected: true); // Use copyWith
    notifyListeners();
  }
}
