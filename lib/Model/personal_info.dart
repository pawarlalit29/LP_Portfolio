
class PersonalInfo {
  String summary;
  List<String> skills;

  PersonalInfo({this.summary, this.skills});

  PersonalInfo.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    skills = json['skills'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['skills'] = this.skills;
    return data;
  }
}