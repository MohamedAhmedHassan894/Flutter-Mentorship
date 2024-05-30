
import 'package:flutter/material.dart';

import '../../../../core/utils/app_constants.dart';
import '../../../../core/widgets/custom_hero_appbar.dart';
import '../../../feature_items/data/models/company_info_model/company_info_model.dart';
import 'company_main_info.dart';

class CompanyDetailsScreenBody extends StatelessWidget {
  const CompanyDetailsScreenBody(
      {super.key, required this.company, required this.index});

  final CompanyInfoModel company;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHeroAppBar(
          name: company.name!,
          image: companyImage,
          index: index,
        ),
        CompanyMainInfo(company: company)
      ],
    );
  }
}
