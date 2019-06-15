
class Personal_info {

  String profile_image;
  String summary;
  List<String> skills;

	Personal_info.fromJsonMap(Map<String, dynamic> map): 
		profile_image = map["profile_image"],
		summary = map["summary"],
		skills = List<String>.from(map["skills"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['profile_image'] = profile_image;
		data['summary'] = summary;
		data['skills'] = skills;
		return data;
	}
}
