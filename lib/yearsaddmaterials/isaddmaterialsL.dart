import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/yearsaddmaterialsTWO/bdfis4.dart';

import '../mainPages/materialsBDF.dart';

class isaddmaterialsL extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" IS Materials ",'asset/is.pdf',bdfis4()),
    );
  }
}
