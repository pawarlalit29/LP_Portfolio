
class Projects {

  String name;
  String domain;
  String duration;
  List<String> technology;
  String link;
  int team_size;
  String description;

	Projects.fromJsonMap(Map<String, dynamic> map): 
		name = map["name"],
		domain = map["domain"],
		duration = map["duration"],
		technology = List<String>.from(map["technology"]),
		link = map["link"],
		team_size = map["team_size"],
		description = map["description"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = name;
		data['domain'] = domain;
		data['duration'] = duration;
		data['technology'] = technology;
		data['link'] = link;
		data['team_size'] = team_size;
		data['description'] = description;
		return data;
	}
}
