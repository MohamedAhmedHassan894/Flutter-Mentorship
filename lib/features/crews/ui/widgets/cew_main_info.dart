
import 'package:flutter/material.dart';

import '../../../../core/widgets/more_info_button.dart';
import '../../../../core/widgets/new_info.dart';
import '../../../feature_items/data/models/crew_model/crew_model.dart';

class CrewMainInfo extends StatelessWidget {
  const CrewMainInfo({
    super.key,
    required this.crew,
  });

  final CrewModel crew;

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
                NewInfo(title: 'Name ', value: crew.name!),
                NewInfo(title: 'Status ', value: crew.status ?? 'No Status Available'),
                const SizedBox(height: 30),
                MoreInfoButton(
                  url: crew.wikipedia!,
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

