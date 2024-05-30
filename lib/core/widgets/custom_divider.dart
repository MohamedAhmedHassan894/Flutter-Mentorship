import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 30,
      endIndent: 10,
      color: Colors.white,
      thickness: .5,
    );
  }
}
