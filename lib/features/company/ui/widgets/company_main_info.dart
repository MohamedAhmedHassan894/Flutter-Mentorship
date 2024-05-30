
import 'package:flutter/material.dart';

import '../../../../core/widgets/more_info_button.dart';
import '../../../../core/widgets/new_info.dart';
import '../../../feature_items/data/models/company_info_model/company_info_model.dart';

class CompanyMainInfo extends StatelessWidget {
  const CompanyMainInfo({
    super.key,
    required this.company,
  });

  final CompanyInfoModel company;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            margin: const EdgeInsets.fromLTRB(14, 14, 14, 0),
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewInfo(title: 'Name ', value: company.name!),
                NewInfo(title: 'Founder', value: company.founder!),
                NewInfo(title: 'Date created', value: '${company.founded!}'),
                NewInfo(
                    title: 'Number of Employees',
                    value: '${company.employees!}'),
                NewInfo(
                  title: 'Address',
                  value:
                  '${company.headquarters!.state!} - ${company.headquarters!.city!} - ${company.headquarters!.address!} ',
                ),
                NewInfo(title: 'Description', value: company.summary!),
                const SizedBox(height: 30),
                MoreInfoButton(
                  url: company.links!.website!,
                  title: 'More Info',
                ),
                const SizedBox(
                  height: 360,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
