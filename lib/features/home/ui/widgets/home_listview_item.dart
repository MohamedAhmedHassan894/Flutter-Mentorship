

import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/home/data/item_data.dart';

import '../../../../core/theme/app_text_styles.dart';
import 'navigate_button.dart';

class HomeListViewItem extends StatelessWidget {
  const HomeListViewItem({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            Items.itemsName[index],
            style: AppTextStyle.font20WhiteWeight400,
          ),
          trailing: NavigateButton(
            index: index,
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

