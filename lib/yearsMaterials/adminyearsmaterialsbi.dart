import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsviewmaterials/bivmaterialsT.dart';

import '../admin/DEPmaterials.dart';
import '../yearsviewmaterials/bivmaterialsF.dart';
import '../yearsviewmaterials/bivmaterialsL.dart';
import '../yearsviewmaterials/bivmaterialsS.dart';

class adminyearsmaterialsbi extends StatelessWidget {
  const adminyearsmaterialsbi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(bivmaterialsF(),bivmaterialsS(),bivmaterialsT(),bivmaterialsL(),DEPmaterials()),
    );
  }
}
