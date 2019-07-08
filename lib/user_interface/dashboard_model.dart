import 'package:lp_portfolio/model/profile_data.dart';

class DashboardModel{
  var _profileData = new ProfileData();

  DashboardModel();

  ProfileData  get profileData => _profileData;
  set profileData(ProfileData profileData){
    _profileData = profileData;
  }
}