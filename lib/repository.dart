import 'dart:async';
import 'package:lp_portfolio/Model/ProfileData.dart';
import 'package:lp_portfolio/web_api.dart';


class Repository {
  final apiProvider = WebApiProvider();


  Future<ProfileData> fetchAllData() => apiProvider.getProfileData();
}