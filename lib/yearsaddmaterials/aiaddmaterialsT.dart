import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/yearsaddmaterialsTWO/bdfai3.dart';

import '../mainPages/materialsBDF.dart';

class aiaddmaterialsT extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" AI Materials ",'asset/ai.pdf',bdfai3()),
    );
  }
}
