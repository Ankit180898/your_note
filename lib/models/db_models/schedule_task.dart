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

  
  
}
