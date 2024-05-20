

import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/database/network/end_points.dart';

import '../../../../core/theme/app_text_styles.dart';

class HomeListViewItem extends StatefulWidget {
  const HomeListViewItem({
    super.key, required this.index,
  });
  final int index;

  @override
  State<HomeListViewItem> createState() => _HomeListViewItemState();
}

class _HomeListViewItemState extends State<HomeListViewItem> {
  List<String> items = [
    'Rockets',
    'Dragons',
    'Launches',
    'Crew',
    'Landpads',
    'About Company'
  ];
  String getTheEndPoint(String inputString) {
    switch (inputString) {
      case 'Rockets':
        return EndPoint.rockets;
      case 'Dragons':
        return EndPoint.dragons;
      case 'Launches':
        return EndPoint.launches;
      case 'Crew':
        return EndPoint.crew;
      case 'Landpads':
        return EndPoint.landpads;
      case 'About Company':
        return EndPoint.company;
      default:
        return 'The provided string does not match any known options.';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            items[widget.index],
            style: AppTextStyle.font20WhiteWeight400,
          ),
          trailing: SizedBox(
            height: 30,
            width: 30,
            child: IconButton(
              padding: EdgeInsets.zero,
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey)),
              onPressed: () {

              },
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
                size: 17,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Divider()
      ],
    );
  }
}
