import 'package:flutter/cupertino.dart';

class Data {
  final String avatar;
  final String profileName;
  final double raiting;
  final String name;
  final String title;
  final String level;
  final LinearGradient colors;
  final double height;
  final LinearGradient thatColor;
  final String thatTiltle;
  final String price;
  final String discription;

  Data({
    required this.avatar,
    required this.discription,
    required this.price,
    required this.thatTiltle,
    required this.thatColor,
    required this.height,
    required this.colors,
    required this.level,
    required this.title,
    required this.name,
    required this.raiting,
    required this.profileName,
  });
}
