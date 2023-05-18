import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/yearsMaterials/adminyearsmaterialsai.dart';

class aivmaterialsF extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('oneAImaterials').get(),
          builder: (context,AsyncSnapshot x){
            if(x.hasData==false){
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 200,left: 10,bottom: 5),
                    child: Row(
                      children: [
                        Text('Loading..Please check your internet conection',style: TextStyle(fontSize: 13),)
                        ,Icon(Icons.downloading_rounded)
                      ],
                    ),
                  )
                  ,Text('No Data')
                ],
              );
            }
            else{
              return Center(
                  child:Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 62),
                      )
                      ,Container(
                        child: Row(
                          children: [
                            SizedBox(width: 15,)
                            ,IconButton(onPressed: (){Get.back(result: adminyearsmaterialsai());}, icon: Icon(Icons.keyboard_backspace,size: 32,))
                            ,SizedBox(width: 75,)
                            ,Text('First year',style: TextStyle(fontSize: 20),),
                            Text(' AI',style: TextStyle(fontSize: 26,color: Colors.purple,fontWeight: FontWeight.w600),),
                          ],
                        )
                        ,margin: EdgeInsets.only(bottom: 30),
                      )
                      ,Container(
                        // margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                        decoration: BoxDecoration(
                            // color: Colors.purple[100],
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
                            ,image: DecorationImage(
                            image: AssetImage('asset/book.jpg'),
                            opacity: 150
                        )
                        ),
                        height: 652,
                        child: ListView.builder(
                          itemCount: x.data.docs.length,
                          itemBuilder: (context,index){
                            return Container(
                                child:Center(
                                  child:Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10,top: 10),
                                        child: Icon(Icons.person_pin_outlined,size: 90,),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 30,bottom: 5),
                                          child: Row(
                                            children: [
                                              Text('Student name: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),)
                                              ,Text(x.data.docs[index]['oneAIstd'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 30,bottom: 5),
                                          child: Row(
                                            children: [
                                              Text('subject 1: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),)
                                              ,Text(x.data.docs[index]['1'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 30,bottom: 5),
                                          child: Row(
                                            children: [
                                              Text('subject 2: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),)
                                              ,Text(x.data.docs[index]['2'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 30,bottom: 5),
                                          child: Row(
                                            children: [
                                              Text('subject 3: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),)
                                              ,Text(x.data.docs[index]['3'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 30,bottom: 5),
                                          child: Row(
                                            children: [
                                              Text('subject 4: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),)
                                              ,Text(x.data.docs[index]['4'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 30,bottom: 5),
                                          child: Row(
                                            children: [
                                              Text('subject 5: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),)
                                              ,Text(x.data.docs[index]['5'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                          margin: EdgeInsets.only(left: 30,bottom: 10),
                                          child: Row(
                                            children: [
                                              Text('subject 6: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),)
                                              ,Text(x.data.docs[index]['6'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                        height: 1,
                                        color: Colors.black,
                                      )
                                    ],
                                  ) ,
                                )
                            );
                          },
                        ),
                      ) ,
                      // Container(
                      //   margin: EdgeInsets.only(top: 10),
                      //   child: MaterialButton(
                      //     onPressed: (){
                      //
                      //     },
                      //     child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey),),
                      //   ),
                      // )
                    ],
                  )

              );


            }
          },
        )
    );
  }
}
