
import 'package:flutter/material.dart';

import '../../../../core/widgets/more_info_button.dart';
import '../../../../core/widgets/new_info.dart';
import '../../../feature_items/data/models/launches_model/launches_model.dart';

class LaunchMainInfo extends StatelessWidget {
  const LaunchMainInfo({
    super.key,
    required this.launch,
  });

  final LaunchesModel launch;

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
                NewInfo(title: 'Name ', value: launch.name!),
                NewInfo(title: 'Date ', value: launch.dateLocal?? 'No Date Available'),
                NewInfo(title: 'Description ', value: launch.details ?? 'No Description Available'),
                const SizedBox(height: 30),
                MoreInfoButton(
                  url: launch.links!.webcast!,
                  title: 'Launch video',
                ),
                const SizedBox(height: 20),
                MoreInfoButton(
                  url: launch.links!.article!,
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
