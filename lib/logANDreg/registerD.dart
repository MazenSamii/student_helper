import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../admin/mainpage.dart';

class register extends StatelessWidget {
TextEditingController fname = TextEditingController();
TextEditingController dep = TextEditingController();
TextEditingController Uname = TextEditingController();
TextEditingController pass = TextEditingController();
final _auth = FirebaseAuth.instance;
late String email;
late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
              color: Colors.white,
            image: DecorationImage(
              image: AssetImage('asset/regi.jpg'),
              opacity: 150
            )
          ),
          child:Center(
              child:ListView(
                children: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 70),
                        child:Text('Sign Up',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700,color: Colors.purple[300])),
                      )
                      ,Container(
                        margin: EdgeInsets.only(top: 70,bottom: 30,left: 50,right: 50),
                        child: TextField(
                          controller: fname,
                          decoration: InputDecoration(
                            hintText: "   Full name",
                            hintStyle:TextStyle(
                                fontSize: 20, color: Colors.black26, height: 0.5),
                          ),
                        ),
                      )
                      ,Container(
                        margin: EdgeInsets.only(left: 50,right: 50),
                        child: TextField(
                          controller: dep,
                          decoration: InputDecoration(
                            hintText: "   Department",
                            hintStyle:TextStyle(
                                fontSize: 20, color: Colors.black26, height: 0.5),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50,right: 50,top: 30),
                        child: TextField(
                          onChanged: (value){
                            email=value;
                          },
                          controller: Uname,
                          decoration: InputDecoration(
                            hintText: "   Username",
                            hintStyle:TextStyle(
                                fontSize: 20, color: Colors.black26, height: 0.5),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50,right: 50,top: 30),
                        child: TextField(
                          onChanged: (value){
                            password=value;
                          },
                          controller: pass,
                          decoration: InputDecoration(
                            hintText: "   password",
                            hintStyle:TextStyle(
                                fontSize: 20, color: Colors.black26, height: 0.5),
                            suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:30 ),
                        child: ElevatedButton(
                          onPressed: ()async{
                       try{
                         final newUser=await _auth.createUserWithEmailAndPassword(email: email, password: password);
                      // Get.back(result:AdminMainPage());
                         ScaffoldMessenger.of(context)
                             .showSnackBar(
                             SnackBar(content: Text('Done.!',style: TextStyle(fontSize: 20),),backgroundColor: Colors.green,
                             ));
                         showDialog(
                           context: context,
                           builder: (BuildContext context) {
                             return AlertDialog(
                               title: Icon(Icons.done,color: Colors.purple[200],size: 50,),
                               content:Text('New account is added successfully..'),
                               actions: <Widget>[
                                 MaterialButton(
                                   onPressed: () {
                                     Get.off(AdminMainPage());
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
                       }catch(e){
                         print(e);
                         ScaffoldMessenger.of(context)
                             .showSnackBar(
                             SnackBar(content: Text('Error.! , please make sure that username contains @ , and password length grater than six.',style: TextStyle(fontSize: 20),),backgroundColor: Colors.red,
                             ));
                       }
                          },
                          child: Text('            Sign Up            ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25 ),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.black26;
                                }
                                return Colors.purple[300];
                              }),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)))
                          ),
                        ),
                      )
                      ,Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Center(
                            child:
                            Text('Faculty of Computers and Artificial Intelligence ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.grey),),
                          )
                      )
                      ,Container(
                          margin: EdgeInsets.only(top: 0),
                          child: Center(
                            child:
                            Text('University of Sadat City',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.grey),),
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 60),
                        child: MaterialButton(
                            onPressed: () {
                              Get.back(result: AdminMainPage());
                            },
                            child: Text('Cancel',style: TextStyle(color: Colors.grey,fontSize: 20),)
                        ),
                      )

                    ],
                  ) ,
                ],
              )
          )
        )
    );
  }
}
