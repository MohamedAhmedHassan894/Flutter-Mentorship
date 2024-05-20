import 'package:flutter/material.dart';

import 'home_listview_item.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return HomeListViewItem(
              index: index,
            );
          },
        ),
      ),
    );
  }
}
