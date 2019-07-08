
class EmploymentHistory {
  String companyName;
  String designation;
  bool isCurrentEmployer;
  String startDate;
  String endDate;

  EmploymentHistory(
      {this.companyName,
      this.designation,
      this.isCurrentEmployer,
      this.startDate,
      this.endDate});

  EmploymentHistory.fromJson(Map<String, dynamic> json) {
    companyName = json['company_name'];
    designation = json['designation'];
    isCurrentEmployer = json['isCurrentEmployer'];
    startDate = json['start_date'];
    endDate = json['end_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['company_name'] = this.companyName;
    data['designation'] = this.designation;
    data['isCurrentEmployer'] = this.isCurrentEmployer;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    return data;
  }
}
