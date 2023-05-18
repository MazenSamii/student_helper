import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddingMaterialsPageD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/write.jpg'),
            fit: BoxFit.fill,
            opacity: 100
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

                        },
                      ),
                    ),
                  )
                  ,Container(
                    margin: EdgeInsets.only(top: 10,right: 250),
                    child: MaterialButton(
                      onPressed:(){

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
