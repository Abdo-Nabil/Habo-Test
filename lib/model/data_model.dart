class DataModel {
  final int id;
  final String dateTime;
  final List<String> event;

  const DataModel({
    required this.id,
    required this.dateTime,
    required this.event,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'dateTime': dateTime,
      'event': event,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      id: map['id'] as int,
      dateTime: map['dateTime'] as String,
      event: map['event'] as List<String>,
    );
  }
}
