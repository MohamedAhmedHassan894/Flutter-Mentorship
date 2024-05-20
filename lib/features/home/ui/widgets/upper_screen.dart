
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import 'home_listview.dart';

class UpperScreen extends StatelessWidget {
  const UpperScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: CustomAppBar(),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        HomeListView(),
      ],
    );
  }
}
