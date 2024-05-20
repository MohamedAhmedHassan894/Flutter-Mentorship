


import 'package:flutter/material.dart';

class PageModel{
  final String title;
  final String subTitle;
  final Color color;
  final Tween<double> progress;

  PageModel({required this.title, required this.subTitle, required this.color, required this.progress});
}