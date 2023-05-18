import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/yearsaddmaterialsTWO/bdfai4.dart';

import '../mainPages/materialsBDF.dart';

class aiaddmaterialsL extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: materialsBDF(" AI Materials ",'asset/ai.pdf',bdfai4()),
    );
}
}
