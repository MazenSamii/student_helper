import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'dart:typed_data';
import 'addingMaterialsPageD.dart';
class materialsBDF extends StatelessWidget {
  // PdfViewer pdfViewerController=PdfViewer();
  dynamic x;
  dynamic y;
  dynamic z;
  materialsBDF(this.x,this.y,this.z);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text(x),
        // actions: [
        //   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios))
        //   ,IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
        //   ,IconButton(onPressed: (){}, icon: Icon(Icons.search))
        // ],
      ),
      body:SfPdfViewer.asset(y),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // IconButton(onPressed: (){}, icon:Icon(Icons.zoom_in)),
          // IconButton(onPressed: (){}, icon:Icon(Icons.zoom_out)),
          // SizedBox(
          //   width: 30,
          // ),
          MaterialButton(color: Colors.purple[300],onPressed: (){
            Get.to(z);}, child:Text('Next..',style: TextStyle(color: Colors.black87,fontSize: 20),))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

