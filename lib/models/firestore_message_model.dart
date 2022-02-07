import 'dart:convert';

class FirestoreMessage {
  final String mail;
  final String message;
  FirestoreMessage({
    required this.mail,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return {
      'mail': mail,
      'message': message,
    };
  }

  factory FirestoreMessage.fromMap(Map<String, dynamic> map) {
    return FirestoreMessage(
      mail: map['mail'] ?? '',
      message: map['message'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FirestoreMessage.fromJson(String source) =>
      FirestoreMessage.fromMap(json.decode(source));
}
