import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/yearsaddmaterialsTWO/bdfcs1.dart';

import '../mainPages/materialsBDF.dart';

class csaddmaterialsF extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" CS Materials ",'asset/cs.pdf',bdfcs1()),
    );
  }
}
