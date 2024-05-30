

import 'package:flutter/material.dart';

import '../../../../core/widgets/more_info_button.dart';
import '../../../../core/widgets/new_info.dart';
import '../../../feature_items/data/models/dragons_model/dragon_model.dart';

class DragonMainInfo extends StatelessWidget {
  const DragonMainInfo({
    super.key,
    required this.dragon,
  });

  final DragonModel dragon;

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
                NewInfo(title: 'Name ', value: dragon.name!),
                NewInfo(title: 'Type ', value: dragon.type?? 'No Type Available'),
                NewInfo(title: 'First flight ', value: dragon.firstFlight!),
                NewInfo(title: 'Launch Payload Mass', value: '${dragon.launchPayloadMass!.kg} kg' ),
                NewInfo(title: 'Description ', value: dragon.description ?? 'No Description Available'),
                const SizedBox(height: 30),
                MoreInfoButton(
                  url: dragon.wikipedia!,
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
