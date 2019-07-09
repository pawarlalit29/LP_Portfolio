import 'package:lp_portfolio/Model/result.dart';

class ProfileData {
  final Result result;
  final String error;

  ProfileData({this.result, this.error});

  ProfileData.fromJson(Map<String, dynamic> json)
      : result =
            json['result'] != null ? new Result.fromJson(json['result']) : Result(),
        error = "";

  ProfileData.withError(String errorValue)
      : result = Result(),
        error = errorValue;
}
