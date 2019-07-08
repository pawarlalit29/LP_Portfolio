import 'package:lp_portfolio/Model/projects.dart';
import 'package:lp_portfolio/Model/personal_info.dart';
import 'package:lp_portfolio/Model/employment_history.dart';
import 'package:lp_portfolio/Model/education.dart';

class Result {
  List<Projects> projects;
  PersonalInfo personalInfo;
  List<EmploymentHistory> employmentHistory;
  List<Education> education;

  Result(
      {this.projects,
      this.personalInfo,
      this.employmentHistory,
      this.education});

  Result.fromJson(Map<String, dynamic> json) {
    if (json['projects'] != null) {
      projects = new List<Projects>();
      json['projects'].forEach((v) {
        projects.add(new Projects.fromJson(v));
      });
    }
    personalInfo = json['personal_info'] != null
        ? new PersonalInfo.fromJson(json['personal_info'])
        : null;
    if (json['employment_history'] != null) {
      employmentHistory = new List<EmploymentHistory>();
      json['employment_history'].forEach((v) {
        employmentHistory.add(new EmploymentHistory.fromJson(v));
      });
    }
    if (json['education'] != null) {
      education = new List<Education>();
      json['education'].forEach((v) {
        education.add(new Education.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.projects != null) {
      data['projects'] = this.projects.map((v) => v.toJson()).toList();
    }
    if (this.personalInfo != null) {
      data['personal_info'] = this.personalInfo.toJson();
    }
    if (this.employmentHistory != null) {
      data['employment_history'] =
          this.employmentHistory.map((v) => v.toJson()).toList();
    }
    if (this.education != null) {
      data['education'] = this.education.map((v) => v.toJson()).toList();
    }
    return data;
  }
}