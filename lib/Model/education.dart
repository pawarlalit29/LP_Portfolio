
class Education {
  String degree;
  double percentage;
  String duration;
  String university;
  String instituteName;

  Education(
      {this.degree,
      this.percentage,
      this.duration,
      this.university,
      this.instituteName});

  Education.fromJson(Map<String, dynamic> json) {
    degree = json['degree'];
    percentage = json['percentage'];
    duration = json['duration'];
    university = json['university'];
    instituteName = json['institute_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['degree'] = this.degree;
    data['percentage'] = this.percentage;
    data['duration'] = this.duration;
    data['university'] = this.university;
    data['institute_name'] = this.instituteName;
    return data;
  }
}
