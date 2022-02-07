import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio_flutter/models/firestore_message_model.dart';

class Mailer {
  static final messagesRef = FirebaseFirestore.instance
      .collection('messages')
      .withConverter(
          fromFirestore: ((snapshot, options) =>
              FirestoreMessage.fromMap(snapshot.data()!)),
          toFirestore: (FirestoreMessage firestoreMessage, _) =>
              firestoreMessage.toMap());

  Future<dynamic> saveMessage(FirestoreMessage message) async {
    return messagesRef.add(message).then((value) {
      return 201;
    }).catchError((error) {
      return 'an error occured :  $error';
    });
  }
}
