import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/admin/DEPgrades.dart';
import 'package:student/admin/DEPmaterials.dart';
import 'package:student/admin/DEPschedule.dart';
import 'package:student/admin/viewcomplements.dart';
import 'package:student/logANDreg/loginD.dart';
import 'package:student/logANDreg/registerD.dart';
import 'package:student/mainPages/studentORamin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../test2.dart';
import 'addADV.dart';
class AdminMainPage extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  late User signedInUser;
  @override
  void initState(){
     // super.initState();
     getCurrentUser();
   }
  void getCurrentUser(){

    try{
      final user = _auth.currentUser;
      if(user!=null){
        signedInUser=user;
        print(signedInUser.email);
      }
    }catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/ground.jpg'),
                fit: BoxFit.cover,

              )
            ),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30,bottom: 0),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15,right: 60),
                        child: IconButton(
                          onPressed: (){
                            Get.back(result: stORad());
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
                      margin: EdgeInsets.only(top: 45),
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
                                    Get.to(addADV());
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
                                            child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text('Add',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                                Text('advertisements',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                              ],
                                            )
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
                                  Get.to(register());
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
                                        child: Icon(Icons.add_comment_outlined,color: Colors.purple,size: 30),
                                      )
                                      ,Container(
                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Add',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                              Text('New account',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
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
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child:
                            Material(
                                elevation: 5,
                                child:GestureDetector(
                                  onTap: (){
                                    Get.to(DEPgrades());
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
                                          child: Icon(Icons.add_chart_outlined,color: Colors.purple,size: 30),
                                        )
                                        ,Container(
                                          child:Text('Add Grades',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
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
                                  Get.to(DEPsch());
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
                                        child: Icon(Icons.more_time_outlined,color: Colors.purple,size: 30),
                                      )
                                      ,Container(
                                        child:Text('Add schedule',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
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
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child:
                            Material(
                                elevation: 5,
                                child:GestureDetector(
                                  onTap: (){
                                    Get.to(viewcomplements());
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
                                          child: Icon(Icons.view_list_rounded,color: Colors.purple,size: 30),
                                        )
                                        ,Container(
                                            child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text('View ',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                                Text(' Complaints',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                              ],
                                            )
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
                                  Get.to(DEPmaterials());
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
                                        child: Icon(Icons.download_outlined,color: Colors.purple,size: 35),
                                      )
                                      ,Container(
                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Registered ',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                              Text(' Materials',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
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
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child:Material(
                          elevation: 5,
                          child:GestureDetector(
                            onTap: (){
                              Get.to(ReceiverPage());
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
                                    child: Icon(Icons.chat_outlined,color: Colors.purple,size: 35),
                                  )
                                  ,Container(
                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('FCAI ',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                          Text(' Chat ',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:Colors.black45),),
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                    )

                  ],
                )
              ],
            ),
          )

    );
  }
}
