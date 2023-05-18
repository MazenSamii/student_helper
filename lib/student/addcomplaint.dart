import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/student/studentMainPage.dart';

class addcomplaint extends StatelessWidget {
TextEditingController name = TextEditingController();
TextEditingController grade = TextEditingController();
TextEditingController dep = TextEditingController();
TextEditingController com = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.white,
        child:Center(
          child:ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('asset/confff.jpg',width: 280,height: 300,),
                  )
                  ,Container(
                    margin: EdgeInsets.only(left: 10,right: 150,top: 0),
                    child: TextField(
                      controller: name,
                      decoration: InputDecoration(
                          hintText: 'Your name..? "not necessary"'
                          ,hintStyle: TextStyle(fontSize: 17,color: Colors.grey)
                      ),
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(left: 10,right: 150,top: 10),
                    child: TextField(
                      controller: grade,
                      decoration: InputDecoration(
                          hintText: '      Grade..?'
                          ,hintStyle: TextStyle(fontSize: 17,color: Colors.grey)
                      ),
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(left: 10,right: 150,top: 10),
                    child: TextField(
                      controller: dep,
                      decoration: InputDecoration(
                          hintText: '      Departement..?'
                          ,hintStyle: TextStyle(fontSize: 17,color: Colors.grey)
                      ),
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Add your ',style: TextStyle(fontSize: 17)),
                        Text('Complement ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.purple[200]),),
                        Text('here.. ',style: TextStyle(fontSize: 17)),
                        Icon(Icons.arrow_downward,)
                      ],
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(left: 50,right: 50,top: 20),
                    child: TextField(
                      controller: com,
                      decoration: InputDecoration(
                          hintText: '                     Complement..?'
                          ,hintStyle: TextStyle(fontSize: 17,color: Colors.grey)
                      ),
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(top: 30,left: 80,right: 80),
                    child: MaterialButton(
                        color: Colors.purple[100],
                        onPressed: (){

                          String a= name.text;
                          name.text="unknown";
                          String b= grade.text;
                          String c= dep.text;
                          String d= com.text;
                          FirebaseFirestore.instance.collection('Complements').add(
                              <String,dynamic>{
                                "StdName":a,
                                "StdGrade":b,
                                "StdDepartement":c,
                                "StdComplement":d,
                              }
                          );
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Icon(Icons.done,color: Colors.purple[200],size: 50,),
                                content:Text('Your Complement is added successfully..'),
                                actions: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      Get.off(StudentMainPage());
                                    },
                                    child: Text('Home'),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Add one more'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('ADD ',style: TextStyle(fontSize: 20),),
                            Icon(Icons.done_all,size: 25,)
                          ],
                        )
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(top: 20,),
                    child: MaterialButton(
                      onPressed: (){
Get.back(result: StudentMainPage());
                      },
                      child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey),),
                    ),
                  )
                ],
              ),
            ],
          )
        )
      )
    );
  }
}
