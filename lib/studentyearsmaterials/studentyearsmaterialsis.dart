import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsaddmaterials/isaddmaterialsS.dart';

import '../student/DEPstudentmaterials.dart';
import '../yearsaddmaterials/isaddmaterialsF.dart';
import '../yearsaddmaterials/isaddmaterialsL.dart';
import '../yearsaddmaterials/isaddmaterialsT.dart';
import '../yearsviewmaterials/csvmaterialsL.dart';
import '../yearsviewmaterials/csvmaterialsS.dart';
import '../yearsviewmaterials/csvmaterialsT.dart';
import '../yearsviewmaterials/isvmaterialsF.dart';

class studentyearsmaterialsis extends StatelessWidget {
  const studentyearsmaterialsis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(isaddmaterialsF(),isaddmaterialsS(),isaddmaterialsT(),isaddmaterialsL(),DEPstudentmaterials()),
    );
  }
}
