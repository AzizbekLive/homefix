class PlansCreate {
  String? name;
  DateTime? date;
  bool? status;

  PlansCreate({this.name, this.date, this.status});

  PlansCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'] != null ? DateTime.parse(json['date']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['date'] = date?.toIso8601String();
    data['status'] = status;
    return data;
  }
}
