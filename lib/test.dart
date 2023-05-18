import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/test3.dart';

class sender extends StatefulWidget {
  @override
  _senderState createState() => _senderState();
}

class _senderState extends State<sender> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(margin:EdgeInsets.only(left: 90),child: Text('Ask FCAI',style: TextStyle(fontSize: 30,),),)
        ,toolbarHeight: 150,
        backgroundColor: Colors.purple[200],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(350.5),
            )
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('chatrooms').orderBy('timestamp').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                return ListView.builder(
                  // reverse: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    ChatRoom chat = ChatRoom.fromFirestore(snapshot.data!.docs[index]);
                    return
                      Container(
                        padding: EdgeInsets.all(18),
                        margin: chat.sender == 'Student' ? EdgeInsets.only(top: 10,left: 80,right: 20):EdgeInsets.only(top: 10,left: 20,right: 80),
                        decoration: BoxDecoration(
                          color: chat.sender == 'Student' ? Colors.purple[100] : Colors.grey[200],
                          borderRadius: BorderRadius.circular(20.5)
                        ),
                         child:Column(
                           children: [
                             Container(
                               margin:EdgeInsets.only(right: 200),
                               child: Text(chat.sender,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                             )
                             ,Container(
                               margin:EdgeInsets.only(right: 120),
                               child: Text(chat.message),
                             )
                             ,Container(
                               margin:EdgeInsets.only(left: 120,top: 7),
                               child:Text(chat.timestamp.toDate().toString(),style: TextStyle(fontSize: 10),),
                             )
                           ],
                         )
                    // ListTile(
                        //   title: Text(chat.sender),
                        //   subtitle: Text(chat.message),
                        //   trailing: Text(chat.timestamp.toDate().toString()),
                        // )
                      );
                  },
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  String message = _controller.text;
                  String sender = 'Student'; // Change this to the user's name
                  ChatRoom chat = ChatRoom(sender: sender, message: message, timestamp: Timestamp.now());
                  FirebaseFirestore.instance.collection('chatrooms').add(chat.toFirestore());
                  _controller.clear();
                },
                child: Icon(Icons.send),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
