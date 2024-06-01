import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mentorship/core/database/network/dio_consumer.dart';
import 'package:flutter_mentorship/core/di/dependency_injection.dart';
import 'package:flutter_mentorship/features/feature_items/logic/get_data_cubit.dart';
import 'package:flutter_mentorship/features/feature_items/ui/widgets/upper_screen1.dart';

import '../../../../core/widgets/background_image.dart';

class FeatureItemsScreenBody extends StatelessWidget {
  const FeatureItemsScreenBody({super.key, required this.endPoint});

  final String endPoint;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(),
        BlocProvider(
          create: (context) => GetDataCubit(getIt<DioConsumer>()),
          child: UpperScreen1(
            endPoint: endPoint,
          ),
        )
      ],
    );
  }
}
