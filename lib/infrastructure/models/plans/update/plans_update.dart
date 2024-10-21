class PlansUpdate {
  int? id;
  String? name;
  DateTime? date;
  bool? status;

  PlansUpdate({this.id, this.name, this.date, this.status});

  PlansUpdate.fromJson(Map<String, dynamic> json) {
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
