import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/yearsaddmaterialsTWO/bdfcs4.dart';

import '../mainPages/materialsBDF.dart';

class csaddmaterialsL extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" CS Materials ",'asset/cs.pdf',bdfcs4()),
    );
  }
}
