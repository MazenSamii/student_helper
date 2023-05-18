import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../mainPages/addingMaterialsPageD.dart';
import '../student/studentMainPage.dart';
import '../yearsaddmaterials/biaddmaterialsF.dart';

class bdfbi1 extends StatelessWidget {
  TextEditingController stname = TextEditingController();
  TextEditingController s1 = TextEditingController();
  TextEditingController s2 = TextEditingController();
  TextEditingController s3 = TextEditingController();
  TextEditingController s4 = TextEditingController();
  TextEditingController s5 = TextEditingController();
  TextEditingController s6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/boo.jpg'),
                  // fit: BoxFit.fill,
                  opacity: 200
              )
          ),
          child:ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,top: 35),
                child:Text('Please',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.purple[200]),),
              )
              ,Container(
                  margin: EdgeInsets.only(left: 20),
                  child:Text('make sure you understand what is written on the previous page in order to register correctly If something is unclear or not understandable, you must contact us to avoid mistakes or ask one of your friends who understands what is needed to help you.')
              )
              ,Container(
                margin: EdgeInsets.only(left: 10,top: 20),
                child:Text('Thanks..',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.purple[200]),),
              )
              ,Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: TextField(
                        controller: stname,
                        decoration: InputDecoration(
                          hintText: "  Enter your name ",
                          hintStyle:TextStyle(
                              fontSize: 20, color: Colors.black45, height: 0.5),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 60,right: 60),
                    )
                    ,Container(
                      child: TextField(
                        controller: s1,
                        decoration: InputDecoration(
                          hintText: "  Subject 1 ",
                          hintStyle:TextStyle(
                              fontSize: 20, color: Colors.black45, height: 0.5),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 60,right: 60,top: 10),
                    )
                    ,Container(
                      child: TextField(
                        controller: s2,
                        decoration: InputDecoration(
                          hintText: "  Subject 2 ",
                          hintStyle:TextStyle(
                              fontSize: 20, color: Colors.black45, height: 0.5),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 60,right: 60,top: 10),
                    )
                    ,Container(
                      child: TextField(
                        controller: s3,
                        decoration: InputDecoration(
                          hintText: "  Subject 3 ",
                          hintStyle:TextStyle(
                              fontSize: 20, color: Colors.black45, height: 0.5),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 60,right: 60,top: 10),
                    )
                    ,Container(
                      child: TextField(
                        controller: s4,
                        decoration: InputDecoration(
                          hintText: "  Subject 4 ",
                          hintStyle:TextStyle(
                              fontSize: 20, color: Colors.black45, height: 0.5),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 60,right: 60,top: 10),
                    )
                    ,Container(
                      child: TextField(
                        controller: s5,
                        decoration: InputDecoration(
                          hintText: "  Subject 5 ",
                          hintStyle:TextStyle(
                              fontSize: 20, color: Colors.black45, height: 0.5),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 60,right: 60,top: 10),
                    )
                    ,Container(
                      child: TextField(
                        controller: s6,
                        decoration: InputDecoration(
                          hintText: "  Subject 6 ",
                          hintStyle:TextStyle(
                              fontSize: 20, color: Colors.black45, height: 0.5),
                        ),
                      ),
                      margin: EdgeInsets.only(left: 60,right: 60,top: 10),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Center(
                        child: MaterialButton(
                          color: Colors.purple[200],
                          child: Text('  Done  '),
                          onPressed:(){
                            String a= stname.text;
                            String b= s1.text;
                            String c= s2.text;
                            String d= s3.text;
                            String e= s4.text;
                            String f= s5.text;
                            String g= s6.text;
                            FirebaseFirestore.instance.collection('BImaterials').add(
                                <String,dynamic>{
                                  "bistd":a,
                                  "mah":b,
                                  "oud":c,
                                  "ah":d,
                                  "med":e,
                                  "dda":f,
                                  "hakam":g,
                                }
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(
                                SnackBar(content: Text('Done..'),backgroundColor: Colors.green,
                                )
                            );
                            Get.off(StudentMainPage());
                          },
                        ),
                      ),
                    )
                    ,Container(
                      margin: EdgeInsets.only(top: 10,right: 250),
                      child: MaterialButton(
                        onPressed:(){
                          Get.back(result: biaddmaterialsF());
                        },
                        child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}