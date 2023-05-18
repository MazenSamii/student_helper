import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../admin/DEPmaterials.dart';
import '../yearsviewmaterials/isvmaterialsF.dart';
import '../yearsviewmaterials/isvmaterialsL.dart';
import '../yearsviewmaterials/isvmaterialsS.dart';
import '../yearsviewmaterials/isvmaterialsT.dart';

class adminyearsmaterialsis extends StatelessWidget {
  const adminyearsmaterialsis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(isvmaterialsF(),isvmaterialsS(),isvmaterialsT(),isvmaterialsL(),DEPmaterials()),
    );
  }
}
