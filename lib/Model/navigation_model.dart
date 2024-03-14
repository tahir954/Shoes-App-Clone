class FabIcon {
  final String iconPath;
  late final bool isSelected;
  final int pageIndex; // Index of the page the icon navigates to (0-based)

   FabIcon({required this.iconPath, required this.isSelected, required this.pageIndex});

  FabIcon copyWith({String? iconPath, bool? isSelected, int? pageIndex}) {
    return FabIcon(
      iconPath: iconPath ?? this.iconPath,
      isSelected: isSelected ?? this.isSelected,
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }

}
