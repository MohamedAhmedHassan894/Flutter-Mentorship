

import 'package:flutter_mentorship/features/feature_items/data/models/feature_item_model.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/roucket_model/roucket_model.dart';

import 'company_info_model/company_info_model.dart';
import 'crew_model/crew_model.dart';
import 'dragons_model/dragon_model.dart';
import 'launches_model/launches_model.dart';

class FeatureAllData {
  final List<FeatureItemModel>  featureItemModel;
  List<RoucketModel>? rockets;
  List<DragonModel>? dragons;
  List<LaunchesModel>? launches;
  List<CrewModel>? crews;
  CompanyInfoModel? company;

  FeatureAllData({required this.featureItemModel,this.crews,this.launches,this.dragons,this.rockets,this.company});
}