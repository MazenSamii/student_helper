import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsviewmaterials/csvmaterialsT.dart';

import '../admin/DEPmaterials.dart';
import '../yearsviewmaterials/csvmaterialsF.dart';
import '../yearsviewmaterials/csvmaterialsL.dart';
import '../yearsviewmaterials/csvmaterialsS.dart';

class adminyearsmaterialscs extends StatelessWidget {
  const adminyearsmaterialscs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(csvmaterialsF(),csvmaterialsS(),csvmaterialsT(),csvmaterialsL(),DEPmaterials()),
    );
  }
}
