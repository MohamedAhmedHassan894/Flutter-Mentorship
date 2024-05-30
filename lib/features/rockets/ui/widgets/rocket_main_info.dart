
import 'package:flutter/material.dart';

import '../../../../core/widgets/more_info_button.dart';
import '../../../../core/widgets/new_info.dart';
import '../../../feature_items/data/models/roucket_model/roucket_model.dart';

class RocketMainInfo extends StatelessWidget {
  const RocketMainInfo({
    super.key,
    required this.rocket,
  });

  final RoucketModel rocket;

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
                  NewInfo(title: 'Name ', value: rocket.name!),
                  NewInfo(title: 'First flight ', value: rocket.firstFlight!),
                  NewInfo(title: 'Country', value: rocket.country!),
                  NewInfo(title: 'Height ', value: "${rocket.height!.meters!}"),
                  NewInfo(title: 'Diameters ', value: "${rocket.diameter!.meters!}"),
                  NewInfo(title: 'Mass ', value: "${rocket.mass!.kg}"),
                  NewInfo(title: 'Description ', value: rocket.description!),
                  const SizedBox(height: 30),
                  MoreInfoButton(url: rocket.wikipedia!,title: 'More info'),
                  const SizedBox(
                    height: 230,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
