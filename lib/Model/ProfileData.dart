import 'package:lp_portfolio/Model/projects.dart';
import 'package:lp_portfolio/Model/personal_info.dart';
import 'package:lp_portfolio/Model/employment_history.dart';
import 'package:lp_portfolio/Model/education.dart';

class ProfileData {

  List<Projects> projects;
  Personal_info personal_info;
  List<Employment_history> employment_history;
  List<Education> education;

  ProfileData();

	ProfileData.fromJsonMap(Map<String, dynamic> map): 
		projects = List<Projects>.from(map["projects"].map((it) => Projects.fromJsonMap(it))),
		personal_info = Personal_info.fromJsonMap(map["personal_info"]),
		employment_history = List<Employment_history>.from(map["employment_history"].map((it) => Employment_history.fromJsonMap(it))),
		education = List<Education>.from(map["education"].map((it) => Education.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['projects'] = projects != null ? 
			this.projects.map((v) => v.toJson()).toList()
			: null;
		data['personal_info'] = personal_info == null ? null : personal_info.toJson();
		data['employment_history'] = employment_history != null ? 
			this.employment_history.map((v) => v.toJson()).toList()
			: null;
		data['education'] = education != null ? 
			this.education.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
