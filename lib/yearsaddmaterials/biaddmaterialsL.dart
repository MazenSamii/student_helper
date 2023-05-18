import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/yearsaddmaterialsTWO/bdfbi4.dart';

import '../mainPages/materialsBDF.dart';

class biaddmaterialsL extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" BI Materials ",'asset/bi.pdf',bdfbi4()),
    );
  }
}
