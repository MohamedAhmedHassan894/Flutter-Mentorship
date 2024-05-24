
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/feature_items/ui/widgets/feature_items_body.dart';

class FeatureItemsScreen extends StatelessWidget {
  const FeatureItemsScreen({super.key, required this.endPoint});
  final String endPoint;
  @override
  Widget build(BuildContext context) {
    log(endPoint);
    return Scaffold(
      body: SafeArea(
        child: FeatureItemsScreenBody(
          endPoint: endPoint,
        ),
      ),
    );
  }
}
