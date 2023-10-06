class Albums {
  final int userId;
  final int id;
  final String title;

  Albums({required this.userId, required this.id, required this.title});

  factory Albums.fromJson(Map<String, dynamic> jsonData) => Albums(
      userId: jsonData['userId'], id: jsonData['id'], title: jsonData['title']);
}
