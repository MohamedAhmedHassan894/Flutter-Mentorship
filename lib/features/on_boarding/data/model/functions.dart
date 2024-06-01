import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/extensions.dart';

import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/routing/routes.dart';

Icon getProperIcon(int currentIndex) => currentIndex != 2
    ? const Icon(
        Icons.navigate_next,
        key: ValueKey('next_icon'),
        color: Colors.white,
        size: 10,
      )
    : const Icon(
        Icons.done,
        key: ValueKey('done_icon'),
        color: Colors.white,
        size: 10,
      );

void navigationViaButton(
    int currentIndex,
    PageController controller,
    BuildContext context
)async {
  if (currentIndex != 2)
    {
      controller.nextPage(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeOutCirc,
      );
    } else  {
    await CacheHelper().cacheData(key: 'login', value: true);
    context.pushReplacementNamed(Routes.homePage);
  }
}
