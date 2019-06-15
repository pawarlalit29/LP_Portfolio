
class Education {

  String degree;
  double percentage;
  String duration;
  String university;
  String institute_name;

	Education.fromJsonMap(Map<String, dynamic> map): 
		degree = map["degree"],
		percentage = map["percentage"],
		duration = map["duration"],
		university = map["university"],
		institute_name = map["institute_name"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['degree'] = degree;
		data['percentage'] = percentage;
		data['duration'] = duration;
		data['university'] = university;
		data['institute_name'] = institute_name;
		return data;
	}
}
