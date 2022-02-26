class Tasks {
  static var tasks = <Task>[
    Task(text: 'Title', isChecked: false),
    Task(text: 'Title', isChecked: false),
    Task(text: 'Title', isChecked: false),
    Task(text: 'Title', isChecked: false),
    Task(text: 'Title', isChecked: false),
    Task(text: 'Title', isChecked: false),
    Task(text: 'Title', isChecked: false),
  ];
}

class Task {
  final String text;
  bool isChecked;

  Task({required this.text, required this.isChecked});
}
