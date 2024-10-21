class PlansGet {
  int? id;
  String? name;
  DateTime? date;
  bool? status;

  PlansGet({this.id, this.name, this.date, this.status});

  factory PlansGet.fromJson(Map<String, dynamic> json) {
    return PlansGet(
      id: json['id'],
      name: json['name'],
      date: json['date'] != null ? DateTime.parse(json['date']) : null,
      status: json['status'],
    );
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
