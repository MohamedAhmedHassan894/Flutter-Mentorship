
import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../data/item_data.dart';

class NavigateButton extends StatelessWidget {
  const NavigateButton({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: IconButton(
        padding: EdgeInsets.zero,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey)),
        onPressed: () {
          context.pushNamed(Routes.featureItems, arguments: Items.getTheEndPoint(Items.itemsName[index],));
        },
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.black,
          size: 17,
        ),
      ),
    );
  }
}
