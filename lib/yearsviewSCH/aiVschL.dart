
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class aiVschL extends StatelessWidget {
  final String collectionName = 'SCH4AI';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('         AI schedules 4rth',style: TextStyle(fontSize: 30,),)
          ,toolbarHeight: 200,
          backgroundColor: Colors.purple[200],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(350.5),
              )
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/gr.jpg'),
                opacity:240,
              )
          ),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection(collectionName).snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }
              final documents = snapshot.data!.docs;
              return ListView.builder(
                itemCount: documents.length,
                itemBuilder: (context, index) {
                  final document = documents[index];
                  final name = document['name'];
                  final url = document['url'];
                  return Container(
                    margin: EdgeInsets.only(top: 20,left: 30,right: 30),
                    height: 40,
                    child: Material(
                        elevation: 5,
                        color: Colors.grey[200],
                        child:GestureDetector(
                            onTap: (){
                              launch(url);
                            },
                            child:Center(
                              child:Text(name),
                            )
                        )
                    ),
                  );

                },
              );
            },
          ),
        )
    );
  }
}
