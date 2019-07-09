import 'package:lp_portfolio/Model/profile_data.dart';
import 'package:lp_portfolio/repository/web_api.dart';


class Repository {
  final apiProvider = WebApiProvider();


  Future<ProfileData> fetchAllData() => apiProvider.getProfileData();
}