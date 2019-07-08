
class Projects {
  String name;
  String domain;
  String duration;
  List<String> technology;
  String link;
  int teamSize;
  String description;

  Projects(
      {this.name,
      this.domain,
      this.duration,
      this.technology,
      this.link,
      this.teamSize,
      this.description});

  Projects.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    domain = json['domain'];
    duration = json['duration'];
    technology = json['technology'].cast<String>();
    link = json['link'];
    teamSize = json['team_size'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['domain'] = this.domain;
    data['duration'] = this.duration;
    data['technology'] = this.technology;
    data['link'] = this.link;
    data['team_size'] = this.teamSize;
    data['description'] = this.description;
    return data;
  }
}
