
import 'package:lp_portfolio/Model/ProfileData.dart';
import 'package:lp_portfolio/repository.dart';
import 'package:rxdart/rxdart.dart';

class DashboardBloc{
  final repository = new Repository();
  final _profileFetcher = PublishSubject<ProfileData>();

  Observable<ProfileData> get profileInfo => _profileFetcher.stream;

  fetchProfileInfo() async {
    ProfileData profileData = await repository.fetchAllData();
      _profileFetcher.sink.add(profileData);
  }

  dispose(){
    _profileFetcher.close();
  }

}

final dashboardBloc = DashboardBloc();