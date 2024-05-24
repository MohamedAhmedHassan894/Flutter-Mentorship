
import 'package:flutter/material.dart';

import 'item_image.dart';
import 'item_title.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemImage(
              index: index,
            ),
            ItemTitle(
              index: index,
            ),
          ],
        ),
      ),
    );
  }
}
