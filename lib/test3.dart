import 'package:cloud_firestore/cloud_firestore.dart';

class ChatRoom {
  final String sender;
  final String message;
  final Timestamp timestamp;

  ChatRoom({required this.sender, required this.message, required this.timestamp});

  factory ChatRoom.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return ChatRoom(
      sender: data['sender'],
      message: data['message'],
      timestamp: data['timestamp'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'sender': sender,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
