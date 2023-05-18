import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/student/DEPstudentgrades.dart';
import 'package:student/student/DEPstudentmaterials.dart';
import 'package:student/student/DEPstudentsch.dart';
import 'package:student/student/contactus.dart';
import 'package:student/student/viewADV.dart';

import '../mainPages/studentORamin.dart';
import '../test.dart';
import 'addcomplaint.dart';
class StudentMainPage extends StatelessWidget {
  const StudentMainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/ground.jpg'),
                  fit: BoxFit.cover,

              )
          )
        ,child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30,bottom: 30),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 60),
                    child: IconButton(
                      onPressed: (){
                        Get.off(stORad());
                      },
                      icon: Icon(Icons.keyboard_backspace,size: 37,),
                    ),
                  )
                  ,Container(
                    child: Text('Start ',style: TextStyle(fontSize: 25),),
                  )
                  ,Container(
                    child: Text('Activity ',style: TextStyle(color: Colors.purple,fontSize: 27,fontWeight: FontWeight.w600),),
                  )
                ],
              ) ,
            )
            ,Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child:
                        Material(
                            elevation: 5,
                            child:GestureDetector(
                              onTap: (){
                                Get.to(DEPstudentgrades());
                              },
                              child: Container(
                                height: 135,
                                width: 135,
                                color: Colors.deepPurple[50],
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Icon(Icons.format_list_numbered,color: Colors.purple,size: 30),
                                    )
                                    ,Container(
                                      child:Text('Grades',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                    )
                                  ],
                                ),
                              ),
                            )
                        ),
                      ),
                      Material(
                          elevation: 5,
                          child:GestureDetector(
                            onTap: (){
                              Get.to(DEPstudentsch());
                            },
                            child: Container(
                              height: 135,
                              width: 135,
                              color: Colors.deepPurple[50],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Icon(Icons.assignment_outlined,color: Colors.purple,size: 30),
                                  )
                                  ,Container(
                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('View Schedule',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ) ,
                )
                ,Container(
                  margin: EdgeInsets.only(top: 25),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                          elevation: 5,
                          child:GestureDetector(
                            onTap: (){
                              Get.to(DEPstudentmaterials());
                            },
                            child: Container(
                              height: 135,
                              width: 135,
                              color: Colors.deepPurple[50],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Icon(Icons.add_to_photos_outlined,color: Colors.purple,size: 30),
                                  )
                                  ,Container(
                                    child:Text('Add Materials',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Material(
                          elevation: 5,
                          child:GestureDetector(
                            onTap: (){
                              Get.to(addcomplaint());
                            },
                            child: Container(
                              height: 135,
                              width: 135,
                              color: Colors.deepPurple[50],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Icon(Icons.sentiment_dissatisfied_rounded,color: Colors.purple,size: 30,),
                                  )
                                  ,Container(
                                    child:Text('Complaints',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ) ,
                )
                ,Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                    margin: EdgeInsets.only(top: 25,right: 20),
                    child: Material(
                        elevation: 5,
                        child:GestureDetector(
                          onTap: (){
                            Get.to(viewADV());
                          },
                          child: Container(
                            height: 135,
                            width: 135,
                            color: Colors.deepPurple[50],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Icon(Icons.add_alert_outlined,color: Colors.purple,size: 30),
                                )
                                ,Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('View',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),)
                                      ,Text('Advertisiments',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    ),
                  )
                      ,Container(
                        margin: EdgeInsets.only(top: 25),
                        child:Material(
                          elevation: 5,
                          child:GestureDetector(
                            onTap: (){
                              Get.to(sender());
                            },
                            child: Container(
                              height: 135,
                              width: 135,
                              color: Colors.deepPurple[50],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Icon(Icons.chat_outlined,color: Colors.purple,size: 30),
                                  )
                                  ,Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Chat',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),)
                                        ,Text('with FCAI',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                      )
                    ],
                  ),
                )
              ],
            )
            ,Container(
              margin: EdgeInsets.only(top: 30,right:170),
              child: MaterialButton(
                onPressed:(){
                  Get.to(contactUs());
                },
                child: Text('Contact Us...',style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
              ),
            )
          ],
        ),
      )
    );;
  }
}
