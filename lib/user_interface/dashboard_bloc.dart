
import 'package:lp_portfolio/Model/profile_data.dart';
import 'package:lp_portfolio/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class DashboardBloc{
  final _repository = new Repository();
 final BehaviorSubject<ProfileData> _subject =
      BehaviorSubject<ProfileData>();

  getUser() async {
    ProfileData response = await _repository.fetchAllData();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<ProfileData> get subject => _subject;

}

final dashboardBloc = DashboardBloc();