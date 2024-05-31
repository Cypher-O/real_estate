import 'package:flutter/material.dart';
import 'package:real_estate/utils/constants/enums.dart';

class TabModel {
  TabModel({
    required this.icon,
    required this.tabItem,
  });

  final TabItem tabItem;
  final IconData icon;
}
