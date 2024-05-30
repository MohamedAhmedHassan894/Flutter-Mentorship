


import 'package:flutter/material.dart';

class PageModel{
  final String title;
  final String subTitle;
  final Color color;
  final Tween<double> progress;

  PageModel({required this.title, required this.subTitle, required this.color, required this.progress});
  static List<PageModel> pagesDetails = [
    PageModel(
      title: 'Reach for the Stars',
      subTitle: 'Explore the cosmos with SpaceX, a leader in space exploration. We\'re dedicated to pushing the boundaries of human achievement and making space travel more accessible',
      color: Colors.redAccent.shade100,
      progress: Tween<double>(
        begin: 0,
        end: 0.5,
      ),
    ),
    PageModel(
      title: 'Powerful Propulsion',
      subTitle: ' Our innovative rockets, like the Falcon 9 and Starship, deliver unmatched reliability and performance. Witness the future of space travel right here',
      color: Colors.red,
      progress: Tween<double>(
        begin: 0.5,
        end: 0.75,
      ),
    ),
    PageModel(
      title: 'Reimagine Spacecraft',
      subTitle: ' The Dragon spacecraft is a marvel of engineering, designed for both cargo and crew missions. Discover its versatility and cutting-edge technology',
      color:  Colors.green,
      progress: Tween<double>(
        begin: 0.75,
        end: 1,
      ),
    ),
  ];

}