
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mentorship/core/database/network/api_consumer.dart';
import 'package:flutter_mentorship/core/utils/app_constants.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/company_info_model/company_info_model.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/crew_model/crew_model.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/dragons_model/dragon_model.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/feature_item_model.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/launches_model/launches_model.dart';
import 'package:flutter_mentorship/features/feature_items/data/models/roucket_model/roucket_model.dart';

import '../data/models/feature_all_data.dart';

part 'get_data_state.dart';

class GetDataCubit extends Cubit<GetDataState> {
  GetDataCubit(this.apiConsumer) : super(GetDataInitial());
  ApiConsumer apiConsumer;
  late FeatureAllData allData;

  Future<void> getFeatureItemsData(String endPoint) async
  {
    emit(GetFeatureItemsDataLoading());
     var response = await apiConsumer.get1(endPoint);
     response.fold((error) {
       emit(GetFeatureItemsDataError(errorMessage: error.message));
     }, (result) {
       allData = storeFetchedData(result: result, endPoint: endPoint);
       log(allData.featureItemModel.length.toString());
       emit(GetFeatureItemsDataSuccess());
     });
  }

  FeatureAllData storeFetchedData({required Response result,required String endPoint})
  {
    switch (endPoint) {
      case 'rockets':
        {
          List<RoucketModel> rockets = [];
          List<FeatureItemModel> featureItemModel = [];
          for (var element in result.data)
            {
              rockets.add(RoucketModel.fromJson(element));
            }
          for (RoucketModel rocket in rockets)
            {
              FeatureItemModel item = FeatureItemModel(
                  name: rocket.name!, imageURL: rocket.flickrImages![0]);
              featureItemModel.add(item);
            }
          log(featureItemModel.length.toString());
          return FeatureAllData(featureItemModel: featureItemModel,rockets: rockets);
        }
      case 'dragons':
        {
          List<DragonModel> dragons = [];
          List<FeatureItemModel> featureItemModel = [];
          for (var element in result.data)
          {
            dragons.add(DragonModel.fromJson(element));
          }
          for (DragonModel dragon in dragons)
          {
            FeatureItemModel item = FeatureItemModel(
                name: dragon.name!, imageURL: dragon.flickrImages![0]);
            featureItemModel.add(item);
          }
          return FeatureAllData(featureItemModel: featureItemModel,dragons: dragons);
        }
      case 'launches':
        {
          List<LaunchesModel> launches = [];
          List<FeatureItemModel> featureItemModel = [];
          for (var element in result.data)
          {
            launches.add(LaunchesModel.fromJson(element));
          }
          for (LaunchesModel launch in launches)
          {
            FeatureItemModel item = FeatureItemModel(
                name: launch.name!, imageURL: launch.links!.patch!.small ?? 'https://i.pinimg.com/564x/f2/b1/b8/f2b1b847235119d0ae094a606c74fca4.jpg');
            featureItemModel.add(item);
          }
          return FeatureAllData(featureItemModel: featureItemModel,launches: launches);
        }
      case 'crew':
        {
          List<CrewModel> crews = [];
          List<FeatureItemModel> featureItemModel = [];
          for (var element in result.data)
          {
            crews.add(CrewModel.fromJson(element));
          }
          for (CrewModel crew in crews)
          {
            FeatureItemModel item = FeatureItemModel(
                name: crew.name!, imageURL: crew.image!);
            featureItemModel.add(item);
          }
          return FeatureAllData(featureItemModel: featureItemModel,crews: crews);
        }
      case 'company':
        {
          late CompanyInfoModel company ;
          List<FeatureItemModel> featureItemModel = [];
          company = CompanyInfoModel.fromJson(result.data);
          featureItemModel = [
            FeatureItemModel(name: company.name!, imageURL: companyImage)
          ];
          return FeatureAllData(featureItemModel: featureItemModel,company: company);
        }
      default:
        return FeatureAllData(featureItemModel: []);
    }
  }
}
