import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/feature_requrments.dart';
import 'package:flutter_mentorship/features/company/ui/widgets/company_details_body.dart';

class CompanyDetailsScreen extends StatelessWidget {
  const CompanyDetailsScreen({super.key, required this.allData});
  final FeatureRequirements allData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CompanyDetailsScreenBody(
          company: allData.data.company!,
          index: allData.index,
        ),
      ),
    );
  }
}


