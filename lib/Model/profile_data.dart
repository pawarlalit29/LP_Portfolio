

import 'package:lp_portfolio/Model/result.dart';

class ProfileData {

Result result;
 String error;
  ProfileData({this.result,this.error});

  ProfileData.fromJson(Map<String, dynamic> json) {
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
        error = "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    return data;
  }

ProfileData.withError(String errorValue)
      : error = errorValue;
}
