class PlansCreate {
  int? id;
  String? name;
  DateTime? date;
  bool? status;

  PlansCreate({this.id, this.name, this.date, this.status});

  PlansCreate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    date = json['date'] != null ? DateTime.parse(json['date']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['date'] = date?.toIso8601String();
    data['status'] = status;
    return data;
  }
}
