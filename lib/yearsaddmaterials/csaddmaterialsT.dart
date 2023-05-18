import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/yearsaddmaterialsTWO/bdfcs3.dart';

import '../mainPages/materialsBDF.dart';

class csaddmaterialsT extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" CS Materials ",'asset/cs.pdf',bdfcs3()),
    );
  }
}
