
class PersonalInfo {
  String summary;
  String name;
  String designation;
  String profile_image;
  String location;
  List<String> skills;

  PersonalInfo({this.name,this.designation,this.location,this.profile_image,this.summary, this.skills});

  PersonalInfo.fromJson(Map<String, dynamic> json) {
    summary = json['summary'];
    name = json['name'];
    designation = json['designation'];
    profile_image = json['profile_image'];
    location = json['location'];
    skills = json['skills'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['summary'] = this.summary;
    data['name'] = this.name;
    data['designation'] = this.designation;
    data['public_image'] = this.profile_image;
    data['location'] = this.location;
    data['skills'] = this.skills;
    return data;
  }
}