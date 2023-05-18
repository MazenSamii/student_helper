import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:student/student/studentMainPage.dart';
class viewADV extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('ADVV').get(),
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
                        margin: EdgeInsets.only(top: 80),
                      )
                      ,Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('FCAI',style: TextStyle(fontSize: 26,color: Colors.purple,fontWeight: FontWeight.w600),),
                            Text(' ADVs',style: TextStyle(fontSize: 20),),
                          ],
                        )
                        ,margin: EdgeInsets.only(bottom: 20),
                      )
                      ,Container(
                        margin: EdgeInsets.only(left: 30,right: 30,),
                        decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(20.5)
                            ,image: DecorationImage(
                            image: AssetImage('asset/gr.jpg'),
                            opacity: 240
                        )
                        ),
                        height: 600,
                        child: ListView.builder(
                          itemCount: x.data.docs.length,
                          itemBuilder: (context,index){
                            return Container(
                                child:Center(
                                  child:Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 0,bottom: 10),
                                        child: Icon(Icons.person_pin,size: 90,color: Colors.black54,),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 60,bottom: 10),
                                          child: Row(
                                            children: [
                                              Text('FCAI ADV: ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),)
                                              ,Text(x.data.docs[index]['AdminADV'],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                                            ],
                                          )
                                      )
                                      ,Container(
                                        margin: EdgeInsets.only(left: 20,right: 20),
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
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: MaterialButton(
                          onPressed: (){
Get.back(result:StudentMainPage());
                          },
                          child: Text('Cancel..',style: TextStyle(fontSize: 20,color: Colors.grey),),
                        ),
                      )
                    ],
                  )

              );


            }
          },
        )
    );
  }

}