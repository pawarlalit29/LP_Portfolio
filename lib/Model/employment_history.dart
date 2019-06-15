
class Employment_history {

  String company_name;
  String designation;
  bool isCurrentEmployer;
  String start_date;
  String end_date;

	Employment_history.fromJsonMap(Map<String, dynamic> map): 
		company_name = map["company_name"],
		designation = map["designation"],
		isCurrentEmployer = map["isCurrentEmployer"],
		start_date = map["start_date"],
		end_date = map["end_date"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['company_name'] = company_name;
		data['designation'] = designation;
		data['isCurrentEmployer'] = isCurrentEmployer;
		data['start_date'] = start_date;
		data['end_date'] = end_date;
		return data;
	}
}
