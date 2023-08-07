class ScheduleTaskModel {
  int id;
  String title;
  bool isCompleted;
  DateTime scheduledTime;

  ScheduleTaskModel({
    required this.id,
    required this.title,
    this.isCompleted = false,
    required this.scheduledTime,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted ? 1 : 0,
      'scheduledTime':scheduledTime
    };
  }

  factory ScheduleTaskModel.fromMap(Map<String, dynamic> map) {
    return ScheduleTaskModel(
      id: map['id'],
      title: map['title'],
      isCompleted: map['isCompleted'] == 1, scheduledTime: map['scheduledTime'],
    );
  }
  
  
}
