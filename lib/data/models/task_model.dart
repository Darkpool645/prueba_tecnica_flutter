class Task{
  int id;
  String title;
  String description;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    required this.description,
    this.isCompleted = false
  });

  // Mapeo del objeto Task a un tipo de dato Map (Se utiliza para almacenar los datos)
  Map<String, dynamic> toMap(){
    return {
      'id':id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted
    };
  }

  // Mapeo de objetos Task desde un Map (Se utiliza para leer la lista de objetos)
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      isCompleted: map['isCompleted']
    );
  }
}