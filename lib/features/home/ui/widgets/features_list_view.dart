

import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/utils/extensions.dart';
import 'package:flutter_mentorship/core/utils/feature_requrments.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/build_error_snackbar.dart';
import '../../../feature_items/logic/get_data_cubit.dart';
import '../../../feature_items/ui/widgets/feature_listview_item.dart';

class FeaturesListView extends StatelessWidget {
  const FeaturesListView({
    super.key,
    required this.cubit, required this.endPoint,
  });

  final GetDataCubit cubit;
  final String endPoint;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: cubit.allData.featureItemModel.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              FeatureRequirements requirements = FeatureRequirements(data: cubit.allData, index: index);
              choseTheNextPage(context: context,endPoint: endPoint,requirements: requirements);
            },
            child: FeatureListViewItem(
              index: index,
            ),
          );
        },
      ),
    );
  }

  void choseTheNextPage({required FeatureRequirements requirements ,required String endPoint,required BuildContext context})
  {
    switch (endPoint) {
      case 'rockets':
        {
          context.pushNamed(Routes.rocketsPage, arguments: requirements);
        }
      case 'dragons':
        {
          context.pushNamed(Routes.dragonsPage, arguments: requirements);
        }
      case 'launches':
        {
          context.pushNamed(Routes.launchesPage, arguments: requirements);
        }
      case 'crew':
        {
          context.pushNamed(Routes.crewPage, arguments: requirements);
        }
      case 'company':
        {
          context.pushNamed(Routes.companyPage, arguments: requirements);
        }
      default:
        {
          ScaffoldMessenger.of(context).showSnackBar(buildErrorSnackBar( 'Please Try Again '));
        }
    }
  }
}