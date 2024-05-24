import 'package:flutter/material.dart';
import 'package:flutter_mentorship/features/home/ui/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomePageBody(),
      ),
    );
  }
}
