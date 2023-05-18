import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/materialsBDF.dart';
import 'package:student/yearsaddmaterialsTWO/bdfai1.dart';

class aiaddmaterialsF extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" AI Materials ",'asset/ai.pdf',bdfai1()),
    );
  }
}
