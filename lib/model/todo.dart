class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Football', isDone: true),
      ToDo(id: '02', todoText: 'Mess Timings', isDone: true),
      ToDo(id: '03', todoText: 'Check Outlook'),
      ToDo(id: '04', todoText: 'Coding'),
      ToDo(id: '05', todoText: 'Development'),
      ToDo(id: '06', todoText: 'Worksheets'),
    ];
  }
}
